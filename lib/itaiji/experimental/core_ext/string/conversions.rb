module Itaiji
  module Conversions
    refine String do
      def to_seijitai
        itaiji_converter.seijitai(self)
      end

      def to_itaiji
        itaiji_converter.itaiji(self)
      end

      private

      def itaiji_converter
        @itaiji_converter ||= Itaiji::Converter.new
      end
    end
  end
end
