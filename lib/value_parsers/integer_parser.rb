module ValueParsers
  class IntegerParser

    def self.parse(value)
      return nil if value.nil? || value == ""
      Integer(value, 10)
    end

    class << self
      alias_method :call, :parse
    end

  end
end
