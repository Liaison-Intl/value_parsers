require 'spec_helper'
include ValueParsers

describe IntegerParser do
  describe 'parsing an integer' do
    it { IntegerParser.parse('36').must_equal 36 }
  end
end
