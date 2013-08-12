module ValueParsers
  class DateParser
    class InvalidDate < ArgumentError; end

    def self.parse(value)
      if mm_dd_yyyy?(value)
        mm_dd_yyyy(value)
      elsif mm_yyyy?(value)
        mm_yyyy(value)
      elsif yyyy_mm_dd?(value)
        yyyy_mm_dd(value)
      else
        raise InvalidDate, "Invalid date format: #{ value.inspect }"
      end
    end

    private

    def self.mm_dd_yyyy?(value)
      value.count('/') == 2
    end

    def self.mm_dd_yyyy(value)
      parts = split(value, '/')
      Date.new(parts[2], parts[0], parts[1])
    end

    def self.mm_yyyy?(value)
      value.count('/') == 1
    end

    def self.mm_yyyy(value)
      parts = split(value, '/')
      Date.new(parts[1], parts[0])
    end

    def self.split(value, delimiter)
      value.split(delimiter).map(&:to_i)
    end

    def self.yyyy_mm_dd?(value)
      value.count('-') == 2
    end

    def self.yyyy_mm_dd(value)
      parts = split(value, '-')
      Date.new(*parts)
    end
  end
end
