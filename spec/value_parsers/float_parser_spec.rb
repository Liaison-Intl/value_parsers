require 'spec_helper'
include ValueParsers

describe FloatParser do
  describe 'parsing a float' do
    it { FloatParser.parse('3.14').must_equal 3.14 }
  end
end
