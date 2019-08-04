module Itaiji
  extend FFI::Library

  ffi_lib File.expand_path("../libitaiji.#{Platform.ext}", __FILE__)

  attach_function :seijitai, [:string], :string
  attach_function :itaiji, [:string], :string

  class Converter
    def seijitai(string)
      Itaiji::seijitai(string).force_encoding('UTF-8')
    end

    def itaiji(string)
      Itaiji::itaiji(string).force_encoding('UTF-8')
    end
  end
end
