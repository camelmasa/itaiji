require 'nokogiri'
require 'open-uri'

module Itaiji
  class Fetcher
    URL = "https://wwwap.hi.u-tokyo.ac.jp/ships/itaiji_list.jsp"

    def fetch
      doc = Nokogiri::HTML(open(URL))

      itaiji_sets = doc.xpath("//tr[contains(@class, 'g') or contains(@class, 'w')]").map do |element|
        _, seijitai_element, itaiji_element = element.xpath(".//td")
        itaijis = itaiji_element.text.split("　")
        Set.new(seijitai_element.text.strip, itaijis.take(itaijis.length - 1))
      end

      List.new(itaiji_sets)
    end
  end

  class Set
    attr_reader :seijitai, :itaijis

    def initialize(seijitai, itaijis)
      @seijitai = seijitai
      @itaijis  = itaijis
    end
  end

  class List
    def initialize(itaiji_sets)
      @itaiji_sets = itaiji_sets
    end

    def to_h
      @itaiji_sets
    end
  end
end
