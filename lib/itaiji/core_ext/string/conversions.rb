module Itaiji
  module Conversions
    refine String do
      def to_seijitai
        itaiji_converter.convert_seijitai(self)
      end

      def to_itaiji
        itaiji_converter.convert_itaiji(self)
      end

      private

      def itaiji_converter
        @itaiji_converter ||= Itaiji::Converter.new
      end
    end
  end
end
