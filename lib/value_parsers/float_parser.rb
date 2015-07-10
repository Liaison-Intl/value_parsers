module ValueParsers
  class FloatParser

    def self.parse(value)
      return nil if value.nil? || value == ""
      value.to_f
    end

    class << self
      alias_method :call, :parse
    end

  end
end
