#encoding: utf-8
require 'spec_helper'

describe Itaiji::Converter do

  let(:itaiji) { '齊藤正澔' }
  let(:seijitai) { '斉藤正浩' }
  let(:converter) { Itaiji::Converter.new }

  describe '#convert_seijitai' do
    it 'converts name from itaiji to seijitai' do
      expect(converter.convert_seijitai(itaiji)).to eq seijitai
    end
  end
  describe '#convert_itaiji' do
    it 'converts name from seijitai to itaiji' do
      expect(converter.convert_itaiji(seijitai)).to eq itaiji
    end
  end
end
