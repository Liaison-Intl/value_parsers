require 'spec_helper'
include ValueParsers

describe IntegerParser do
  describe 'parsing an integer' do
    it { IntegerParser.parse('36').must_equal 36 }
  end

  describe "parsing a null" do
    it { IntegerParser.parse(nil).must_equal nil }
  end

  describe "parsing a empty string" do
    it { IntegerParser.parse("").must_equal nil }
  end

  describe "parsing a bad value" do
    it do
      proc { IntegerParser.parse("foo") }.must_raise(ArgumentError)
    end
  end

  describe "parsing a value starting with 0" do
    it { IntegerParser.parse('064').must_equal 64 }
    it { IntegerParser.parse('0123456789').must_equal 123456789 }
  end
end
