require 'spec_helper'
include ValueParsers

describe FloatParser do
  describe 'parsing a float' do
    it { FloatParser.parse('3.14').must_equal 3.14 }
 end

   describe "parsing a null" do
    it { FloatParser.parse(nil).must_equal nil }
  end

  describe "parsing a empty string" do
    it { FloatParser.parse("").must_equal nil }
  end
end
