require "faraday"
require "faraday_middleware"
require "openssl"
require "yaml"
require "zlib"
require "logger"
require "rubygems/package"

require "itaiji/platform"

module Itaiji
  class NativeExtFetcher
    BASE_URL = "https://github.com/camelmasa/itaiji-rust/releases/download".freeze

    attr_reader :native_path, :ext_zip_file_url, :checksum, :version

    def initialize(root:, native_path:)
      libitaiji_yml = File.expand_path("libitaiji.yml", root)
      libitaiji = YAML.load_file(libitaiji_yml)

      @checksum = libitaiji["checksums"][Platform.tuple]
      @version = libitaiji["version"]
      @native_path = native_path
      @ext_zip_file_url = "#{BASE_URL}/#{version}/itaiji-#{version}-#{Platform.tuple}.tar.gz"

      logger.debug(@checksum)
      logger.debug(@version)
      logger.debug(@native_path)
      logger.debug(@ext_zip_file_url)
    end

    def fetch_and_decompress
      response = fetch_ext_zip_file
      validate_checksum(response.body)
      decompress(response.body)
    end

    private

    def logger
      @logger ||= Logger.new(STDOUT)
    end

    def fetch_ext_zip_file
      Faraday.new(url: @ext_zip_file_url) do |faraday|
        faraday.use FaradayMiddleware::FollowRedirects
        faraday.adapter Faraday.default_adapter
      end.get
    end

    def validate_checksum(ext_zip_file)
      raise if OpenSSL::Digest::SHA256.hexdigest(ext_zip_file) != @checksum
    end

    def decompress(ext_zip_file)
      ext_tar_file = Zlib::GzipReader.new(StringIO.new(ext_zip_file)).read
      ext_file = Gem::Package::TarReader.new(StringIO.new(ext_tar_file)).first.read

      ext_file_name = "libitaiji.#{Platform.ext}"
      File.write("#{native_path}/#{ext_file_name}", ext_file)
    end
  end
end
