# frozen_string_literal: true

module OpsCpuSec
  module Validator
    # Flattens and normalizes values so that wire text and parsed values
    # compare equal.
    module Values
      NUMBER = /\A-?\d+(\.\d+)?([eE][+-]?\d+)?\z/.freeze
      ISO8601 = /\A\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d(\.\d+)?Z\z/.freeze
      RFC822 = /\A\w{3}, \d\d \w{3} \d{4} \d\d:\d\d:\d\d GMT\z/.freeze
      BASE64 = %r{\A[A-Za-z0-9+/]+={0,2}\z}.freeze

      class << self
        def underscore(str)
          AwsSdkCodeGenerator::Underscore.underscore(str)
        end

        # All scalar values of a nested Hash/Array.
        def leaves(obj)
          case obj
          when Hash then obj.values.flat_map { |value| leaves(value) }
          when Array then obj.flat_map { |value| leaves(value) }
          when nil then []
          else [obj]
          end
        end

        def data_to_hash(obj)
          case obj
          when Struct then struct_to_hash(obj)
          when Hash then obj.transform_values { |value| data_to_hash(value) }
          when Array then obj.map { |value| data_to_hash(value) }
          when IO, StringIO then obj.read.tap { obj.rewind }
          else obj
          end
        end

        def struct_to_hash(obj)
          obj.members.each_with_object({}) do |member, hash|
            value = obj[member]
            hash[member] = data_to_hash(value) unless value.nil?
          end
        end

        def norm(value)
          case value
          when Time then [:num, value.to_f.round(3)]
          when Numeric then [:num, value.to_f.round(9)]
          when String then norm_string(value.b)
          else [:str, value.to_s]
          end
        end

        def norm_string(str)
          return [:num, Float(str).round(9)] if str.match?(NUMBER)
          return [:num, Time.parse(str).to_f.round(3)] if str.match?(ISO8601) || str.match?(RFC822)

          [:str, str]
        end

        # Wire base64 text compares equal to the parsed (decoded) blob.
        def norm_blob(value)
          return nil unless value.is_a?(String) && value.match?(BASE64) && (value.size % 4).zero?

          norm(Base64.strict_decode64(value))
        rescue ArgumentError
          nil
        end

        # Removes each expected value from actual (as a multiset); returns
        # [expected values not found, actual values left over]. With blobs,
        # base64 text also matches its decoded bytes.
        def match(expected, actual, blobs: false)
          remaining = actual.map { |value| norm(value) }
          missing = expected.reject do |value|
            idx = remaining.index(norm(value)) || (blobs && remaining.index(norm_blob(value)))
            remaining.delete_at(idx) if idx
          end
          [missing, remaining]
        end
      end
    end
  end
end
