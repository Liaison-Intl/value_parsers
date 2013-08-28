require 'spec_helper'
include ValueParsers

describe BooleanParser do
  subject { BooleanParser }

  describe 'parsing 1' do
    it { subject.parse(1).must_equal true }
    it { subject.humanize(1).must_equal 'Yes'}
  end

  describe 'parsing "1"' do
    it { subject.parse('1').must_equal true }
    it { subject.humanize('1').must_equal 'Yes'}
  end

  describe 'parsing "Y"' do
    it { subject.parse('Y').must_equal true }
    it { subject.humanize('Y').must_equal 'Yes'}
  end

  describe 'parsing "on"' do
    it { subject.parse('on').must_equal true }
    it { subject.humanize('on').must_equal 'Yes'}
  end

  describe 'parsing true' do
    it { subject.parse(true).must_equal true }
    it { subject.humanize(true).must_equal 'Yes'}
  end

  describe 'parsing "yes"' do
    it { subject.parse('yes').must_equal true }
    it { subject.humanize('yes').must_equal 'Yes'}
  end

  describe 'parsing "true"' do
    it { subject.parse('true').must_equal true }
    it { subject.humanize('true').must_equal 'Yes'}
  end

  describe 'parsing 0' do
    it { subject.parse(0).must_equal false }
    it { subject.humanize(0).must_equal 'No'}
  end

  describe 'parsing "0"' do
    it { subject.parse('0').must_equal false }
    it { subject.humanize('0').must_equal 'No'}
  end

  describe 'parsing "2"' do
    it { subject.parse('2').must_equal false }
    it { subject.humanize('2').must_equal 'No'}
  end

  describe 'parsing 2' do
    it { subject.parse(2).must_equal false }
    it { subject.humanize(2).must_equal 'No'}
  end

  describe 'parsing "N"' do
    it { subject.parse("N").must_equal false }
    it { subject.humanize("N").must_equal 'No'}
  end

  describe 'parsing "no"' do
    it { subject.parse("no").must_equal false }
    it { subject.humanize("no").must_equal 'No'}
  end

  describe 'parsing "false"' do
    it { subject.parse("false").must_equal false }
    it { subject.humanize("false").must_equal 'No'}
  end

  describe 'parsing false' do
    it { subject.parse(false).must_equal false }
    it { subject.humanize(false).must_equal 'No'}
  end

  describe 'parsing 3' do
    it { subject.parse(3).must_equal nil }
    it { subject.humanize(3).must_equal 'Not Sure'}
  end

  describe 'parsing "3"' do
    it { subject.parse("3").must_equal nil }
    it { subject.humanize("3").must_equal 'Not Sure'}
  end

  describe 'parsing nil' do
    it { subject.parse(nil).must_equal nil }
    it { subject.humanize(nil).must_equal 'Not Sure' }
  end

  describe 'parsing "NONE"' do
    it { subject.parse('NONE').must_equal nil }
    it { subject.humanize('NONE').must_equal 'Not Sure' }
  end

  describe 'parsing the empty string' do
    it { subject.parse('').must_equal nil }
    it { subject.humanize('').must_equal 'Not Sure' }
  end

  describe 'parsing "garbage"' do
    it { subject.parse('garbage').must_equal 'garbage' }
    it { subject.humanize('garbage').must_equal 'garbage'}
  end
end
