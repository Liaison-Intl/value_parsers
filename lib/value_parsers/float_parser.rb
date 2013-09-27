module ValueParsers
  class FloatParser

    def self.parse(value)
      value.to_f
    end

    class << self
      alias_method :call, :parse
    end

  end
end
