#encoding: utf-8
require 'spec_helper'
using Itaiji::Conversions

describe Itaiji::Conversions do

  let(:itaiji) { '齊藤正澔' }
  let(:seijitai) { '斉藤正浩' }
  let(:converter) { Itaiji::Converter.new }

  describe '#to_seijitai' do
    it 'converts name from itaiji to seijitai' do
      expect(itaiji.to_seijitai).to eq seijitai
    end
  end
  describe '#convert_itaiji' do
    it 'converts name from seijitai to itaiji' do
      expect(seijitai.to_itaiji).to eq itaiji
    end
  end
end
