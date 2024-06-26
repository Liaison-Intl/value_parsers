module ValueParsers
  class InvalidValue < ArgumentError; end
end

require 'value_parsers/version'
require 'value_parsers/boolean_parser'
require 'value_parsers/date_parser'
require 'value_parsers/integer_parser'
require 'value_parsers/float_parser'
