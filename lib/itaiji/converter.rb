module Itaiji
  class Converter
    def seijitai(string)
      itaiji_list.inject(string) do |string, itaiji_set|
        seijitai = itaiji_set.keys.first
        itaijis  = itaiji_set.values.first

        string.gsub(/#{itaijis.join('|')}/, seijitai)
      end
    end

    def convert_seijitai(string)
      seijitai(string)
    end

    def itaiji(string)
      itaiji_list.inject(string) do |string, itaiji_set|
        seijitai = itaiji_set.keys.first
        itaiji   = itaiji_set.values.flatten.first

        string.gsub(/#{seijitai}/, itaiji)
      end
    end

    def convert_itaiji(string)
      itaiji(string)
    end

    extend Gem::Deprecate
    deprecate :convert_seijitai, :seijitai, 2018, 1
    deprecate :convert_itaiji,   :itaiji,   2018, 1

    private

    def itaiji_list
      @itaiji_list ||= begin
        itaiji_file_path = File.expand_path('../../../source/itaji_list.yml', __FILE__)
        YAML.load_file(itaiji_file_path)
      end
    end
  end
end
