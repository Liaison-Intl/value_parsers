module ValueParsers
  class FloatParser

    alias_method :call, :parse

    def self.parse(value)
      value.to_f
    end

  end
end
