require 'spec_helper'
include ValueParsers

describe DateParser do
  describe 'parsing mm/dd/yyyy' do
    it { DateParser.parse('03/01/2009').must_equal Date.new(2009, 3, 1) }
  end

  describe 'parsing mm/yyyy' do
    it { DateParser.parse('05/2010').must_equal Date.new(2010, 5) }
  end

  describe 'parsing yyyy-mm-dd' do
    it { DateParser.parse('2013-08-05').must_equal Date.new(2013, 8, 5) }
  end

  describe 'parsing yyyy-mm' do
    it { DateParser.parse('2013-08').must_equal Date.new(2013, 8) }
  end

  describe 'parsing an invalid date' do
    it do
      -> { DateParser.parse('i am not a date') }.must_raise(DateParser::InvalidDate)
    end
  end

  describe 'parsing an empty string' do
    it 'handles nil gracefully' do
      DateParser.parse(nil).must_equal nil
    end

    it 'handles an empty string gracefully' do
      DateParser.parse("").must_equal nil
    end
  end

end
