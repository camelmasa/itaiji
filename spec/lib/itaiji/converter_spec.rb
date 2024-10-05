require 'spec_helper'

describe Itaiji::Converter do
  let(:itaiji) { '齊藤祐澔' }
  let(:seijitai) { '斉藤祐浩' }
  let(:converter) { Itaiji::Converter.new }

  describe '#seijitai' do
    it 'converts name from itaiji to seijitai' do
      expect(converter.seijitai(itaiji)).to eq seijitai
    end
  end

  describe '#itaiji' do
    it 'converts name from seijitai to itaiji' do
      expect(converter.itaiji(seijitai)).to eq itaiji
    end
  end
end
