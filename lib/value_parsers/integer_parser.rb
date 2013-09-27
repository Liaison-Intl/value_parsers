module ValueParsers
  class IntegerParser

    class << self
      alias_method :call, :parse
    end

    def self.parse(value)
      value.to_i
    end

  end
end
