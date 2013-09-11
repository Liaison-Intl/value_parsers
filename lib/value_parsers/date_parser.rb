module ValueParsers
  class DateParser
    class InvalidDate < InvalidValue; end

    DATE_FORMATS = {
      %r(\A\d{1,2}/\d{1,2}/\d{4}\Z) => '%m/%d/%Y',
      %r(\A\d{1,2}/\d{4}\Z)         => '%m/%Y',
      %r(\A\d{4}-\d{1,2}-\d{1,2}\Z) => '%Y-%m-%d',
      %r(\A\d{4}-\d{1,2}\Z)         => '%Y-%m'
    }

    def self.parse(value)
      format = fetch_format(value)
      Date.strptime(value, format)
    end

    private

    def self.fetch_format(value)
      format = DATE_FORMATS.detect { |pattern, format| pattern === value }
      raise InvalidDate, "Invalid date format: #{ value.inspect }" if format.nil?
      format.last
    end
  end
end
