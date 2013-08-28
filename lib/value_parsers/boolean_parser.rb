module ValueParsers
  class BooleanParser

    BOOLEAN_MAP = {
      3 => nil,  '3' => nil, 'none' => nil
      1 => true, '1' => true,  'y' => true, 'on' => true, 'yes' => true, 'true' => true,
      0 => false,  2 => false, '0' => false, '2' => false, 'n' => false, 'no' => false, 'false' => false,
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

  end
end
