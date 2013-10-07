module Aws
  # @api private
  module TimestampFormatter

    include Seahorse::Model::Shapes

    def timestamp(shape, value)
      value = case shape
        when Iso8601TimestampShape then value.iso8601
        when Rfc822TimestampShape then value.rfc822
        when UnixTimestampShape then value.to_i
        else raise "invalid timestamp format `#{shape.class.name}'"
      end
    end
  end
end
