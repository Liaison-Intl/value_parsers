module ValueParsers
  class IntegerParser

    def self.parse(value)
      return nil if value.nil? || value == ""
      Integer(value)
    end

    class << self
      alias_method :call, :parse
    end

  end
end
