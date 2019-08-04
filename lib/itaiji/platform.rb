module Itaiji
  class Platform
    OS =
      case os = RbConfig::CONFIG["host_os"].downcase
      when /linux/
        "unknown-linux-gnu"
      when /darwin/
        "apple-darwin"
      else
        os
      end

    ARCH = "x86_64"

    EXT =
      case OS
      when /linux/
        "so"
      when /darwin/
        "dylib"
      else
        "so"
      end

    def self.tuple
      "#{ARCH}-#{OS}"
    end

    def self.ext
      EXT
    end
  end
end
