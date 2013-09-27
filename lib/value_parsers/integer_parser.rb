module ValueParsers
  class IntegerParser

    alias_method :call, :parse

    def self.parse(value)
      value.to_i
    end

  end
end
