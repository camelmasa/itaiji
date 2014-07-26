#encoding: utf-8
require 'spec_helper'
using Itaiji::Conversions

describe Itaiji::Conversions do

  let(:itaiji_text) { '齊藤正澔' }
  let(:seijitai_text) { '斉藤正浩' }
  let(:converter) { Itaiji::Converter.new }

  describe '#to_seijitai' do
    it 'converts name from itaiji to seijitai' do
      expect {
        itaiji_text.to_seijitai
      }.to change{ itaiji_text }.to seijitai_text
    end
  end
  describe '#convert_itaiji' do
    it 'converts name from seijitai to itaiji' do
      expect {
        seijitai_text.to_itaiji
      }.to change{ seijitai_text }.to itaiji_text
    end
  end
end
