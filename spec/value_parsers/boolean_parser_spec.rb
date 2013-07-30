require 'spec_helper'
include ValueParsers

describe BooleanParser do
  describe 'parsing 1' do
    it { BooleanParser.boolean(1).must_equal true }
    it { BooleanParser.yes_no(1).must_equal 'Yes'}
  end

  describe 'parsing "1"' do
    it { BooleanParser.boolean('1').must_equal true }
    it { BooleanParser.yes_no('1').must_equal 'Yes'}
  end

  describe 'parsing "Y"' do
    it { BooleanParser.boolean('Y').must_equal true }
    it { BooleanParser.yes_no('Y').must_equal 'Yes'}
  end

  describe 'parsing "on"' do
    it { BooleanParser.boolean('on').must_equal true }
    it { BooleanParser.yes_no('on').must_equal 'Yes'}
  end

  describe 'parsing true' do
    it { BooleanParser.boolean(true).must_equal true }
    it { BooleanParser.yes_no(true).must_equal 'Yes'}
  end

  describe 'parsing 0' do
    it { BooleanParser.boolean(0).must_equal false }
    it { BooleanParser.yes_no(0).must_equal 'No'}
  end

  describe 'parsing "0"' do
    it { BooleanParser.boolean('0').must_equal false }
    it { BooleanParser.yes_no('0').must_equal 'No'}
  end

  describe 'parsing "2"' do
    it { BooleanParser.boolean('2').must_equal false }
    it { BooleanParser.yes_no('2').must_equal 'No'}
  end

  describe 'parsing 2' do
    it { BooleanParser.boolean(2).must_equal false }
    it { BooleanParser.yes_no(2).must_equal 'No'}
  end

  describe 'parsing "N"' do
    it { BooleanParser.boolean("N").must_equal false }
    it { BooleanParser.yes_no("N").must_equal 'No'}
  end

  describe 'parsing false' do
    it { BooleanParser.boolean(false).must_equal false }
    it { BooleanParser.yes_no(false).must_equal 'No'}
  end

  describe 'parsing 3' do
    it { BooleanParser.boolean(3).must_equal nil }
    it { BooleanParser.yes_no(3).must_equal 'Not Sure'}
  end

  describe 'parsing "3"' do
    it { BooleanParser.boolean("3").must_equal nil }
    it { BooleanParser.yes_no("3").must_equal 'Not Sure'}
  end

  describe 'parsing nil' do
    it { BooleanParser.boolean(nil).must_equal nil }
    it { BooleanParser.yes_no(nil).must_equal 'Not Sure' }
  end

  describe 'parsing "garbage"' do
    it { BooleanParser.boolean('garbage').must_equal 'garbage' }
    it { BooleanParser.yes_no('garbage').must_equal 'garbage'}
  end
end
