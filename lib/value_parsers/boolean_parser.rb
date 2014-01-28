module ValueParsers
  class BooleanParser

    BOOLEAN_MAP = {
      1 => true, '1' => true,  'y' => true, 'on' => true, 'yes' => true, 'true' => true,
      0 => false,  2 => false, '0' => false, '2' => false, 'n' => false, 'no' => false, 'false' => false,
      3 => nil,  '3' => nil, 'n/a' => nil, 'none' => nil, '' => nil
    }.freeze

    YES_NO_MAP = {
      true  => 'Yes',
      false => 'No',
      nil   => 'Not Sure'
    }.freeze

    def self.parse(value)
      BOOLEAN_MAP.fetch(value.to_s.downcase) { value }
    end

    def self.humanize(value)
      YES_NO_MAP.fetch(parse(value)) { value }
    end

    class << self
      alias_method :call, :parse
    end

  end
end
