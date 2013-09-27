module ValueParsers
  class FloatParser

    class << self
      alias_method :call, :parse
    end

    def self.parse(value)
      value.to_f
    end

  end
end
