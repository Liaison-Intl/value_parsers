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
end
