module ValueParsers
  class IntegerParser

    def self.parse(value)
      value.to_i
    end

    class << self
      alias_method :call, :parse
    end

  end
end
