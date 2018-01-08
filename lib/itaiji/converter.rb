module Itaiji
  class Converter
    def seijitai(string)
      string.gsub(/#{seijitai_pairs.keys.join("|")}/, seijitai_pairs)
    end

    def itaiji(string)
      string.gsub(/#{itaiji_pairs.keys.join("|")}/, itaiji_pairs)
    end

    private

    def seijitai_pairs
      @seijitai_pairs ||= itaiji_list.inject({}) do |pairs, (seijitai, itaijis)|
        itaijis.each do |itaiji|
          pairs[itaiji] = seijitai
        end
        pairs
      end
    end

    def itaiji_pairs
      @itaiji_pairs ||= itaiji_list.inject({}) do |pairs, (seijitai, itaijis)|
        pairs[seijitai] = itaijis.first
        pairs
      end
    end

    def itaiji_list
      @itaiji_list ||= begin
        itaiji_file_path = File.expand_path('../../../source/itaiji_list.yml', __FILE__)
        YAML.load_file(itaiji_file_path)
      end
    end
  end
end
