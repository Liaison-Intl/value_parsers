module ValueParsers
  class BooleanParser

    BOOLEAN_MAP = {
      1 => true, '1' => true,  'Y' => true, 'on' => true,
      0 => false,  2 => false, '0' => false, '2' => false, 'N' => false,
      3 => nil,  '3' => nil
    }.freeze

    YES_NO_MAP = {
      true  => 'Yes',
      false => 'No',
      nil   => 'Not Sure'
    }.freeze

    def self.boolean(value)
      BOOLEAN_MAP.fetch(value) { value }
    end

    def self.yes_no(value)
      YES_NO_MAP.fetch(boolean(value)) { value }
    end

  end
end
