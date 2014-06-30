require 'spec_helper'

describe Itaiji::Converter do

  let(:itaiji_text) { '齊藤正澔' }
  let(:seijitai_text) { '斉藤正浩' }
  let(:converter) { Itaiji::Converter.new }

  describe '#convert_seijitai' do
    it 'convert name from itaiji to seijitai' do
      expect {
        converter.convert_seijitai(itaiji_text)
      }.to change{ itaiji_text }.to seijitai_text
    end
  end
  describe '#convert_itaiji' do
    it 'convert name from seijitai to itaiji' do
      expect {
        converter.convert_itaiji(seijitai_text)
      }.to change{ seijitai_text }.to itaiji_text
    end
  end
end
