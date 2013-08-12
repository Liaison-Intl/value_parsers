require 'spec_helper'
include ValueParsers

describe BooleanParser do
  describe 'parsing 1' do
    it { BooleanParser.parse(1).must_equal true }
    it { BooleanParser.humanize(1).must_equal 'Yes'}
  end

  describe 'parsing "1"' do
    it { BooleanParser.parse('1').must_equal true }
    it { BooleanParser.humanize('1').must_equal 'Yes'}
  end

  describe 'parsing "Y"' do
    it { BooleanParser.parse('Y').must_equal true }
    it { BooleanParser.humanize('Y').must_equal 'Yes'}
  end

  describe 'parsing "on"' do
    it { BooleanParser.parse('on').must_equal true }
    it { BooleanParser.humanize('on').must_equal 'Yes'}
  end

  describe 'parsing true' do
    it { BooleanParser.parse(true).must_equal true }
    it { BooleanParser.humanize(true).must_equal 'Yes'}
  end

  describe 'parsing 0' do
    it { BooleanParser.parse(0).must_equal false }
    it { BooleanParser.humanize(0).must_equal 'No'}
  end

  describe 'parsing "0"' do
    it { BooleanParser.parse('0').must_equal false }
    it { BooleanParser.humanize('0').must_equal 'No'}
  end

  describe 'parsing "2"' do
    it { BooleanParser.parse('2').must_equal false }
    it { BooleanParser.humanize('2').must_equal 'No'}
  end

  describe 'parsing 2' do
    it { BooleanParser.parse(2).must_equal false }
    it { BooleanParser.humanize(2).must_equal 'No'}
  end

  describe 'parsing "N"' do
    it { BooleanParser.parse("N").must_equal false }
    it { BooleanParser.humanize("N").must_equal 'No'}
  end

  describe 'parsing false' do
    it { BooleanParser.parse(false).must_equal false }
    it { BooleanParser.humanize(false).must_equal 'No'}
  end

  describe 'parsing 3' do
    it { BooleanParser.parse(3).must_equal nil }
    it { BooleanParser.humanize(3).must_equal 'Not Sure'}
  end

  describe 'parsing "3"' do
    it { BooleanParser.parse("3").must_equal nil }
    it { BooleanParser.humanize("3").must_equal 'Not Sure'}
  end

  describe 'parsing nil' do
    it { BooleanParser.parse(nil).must_equal nil }
    it { BooleanParser.humanize(nil).must_equal 'Not Sure' }
  end

  describe 'parsing "garbage"' do
    it { BooleanParser.parse('garbage').must_equal 'garbage' }
    it { BooleanParser.humanize('garbage').must_equal 'garbage'}
  end
end
