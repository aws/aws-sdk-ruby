# frozen_string_literal: true

module Aws
  module Cbor
    # Pure Ruby implementation of CBOR Decoder
    class Decoder
      def initialize(bytes)
        @buffer = bytes
        @pos = 0
      end

      def decode
        val = decode_item
        return val unless @pos != @buffer.size

        message = "Extra bytes follow after decoding item. Read #{@pos} / #{@buffer.size} bytes"
        raise ExtraBytesError, message
      end

      private

      FIVE_BIT_MASK = 0x1F

      # high level, generic decode. Based on the next type.  Consumes and returns
      # the next item as a ruby object.
      def decode_item
        case (next_type = peek_type)
        when :array
          read_array.times.map { decode_item }
        when :map
          read_map.times.map { [read_string, decode_item] }.to_h
        when :indefinite_array
          read_start_indefinite_array
          value = []
          value << decode_item until peek_type == :break_stop_code
          read_end_indefinite_collection
          value
        when :indefinite_map
          read_start_indefinite_map
          value = {}
          value[read_string] = decode_item until peek_type == :break_stop_code
          read_end_indefinite_collection
          value
        when :indefinite_binary_string
          read_info
          value = String.new
          value << read_binary_string until peek_type == :break_stop_code
          read_end_indefinite_collection
          value
        when :indefinite_string
          read_info
          value = String.new
          value << read_string until peek_type == :break_stop_code
          read_end_indefinite_collection
          value.force_encoding(Encoding::UTF_8)
        when :tag
          Tagged.new(read_tag, decode_item)
        when :break_stop_code
          raise UnexpectedBreakCode
        else
          send("read_#{next_type}")
        end
      end

      # low level streaming interface
      def peek_type
        ib = peek(1).ord
        add_info = ib & FIVE_BIT_MASK
        major_type = ib >> 5
        case major_type
        when 0, 1 then :integer
        when 2
          add_info == 31 ? :indefinite_binary_string : :binary_string
        when 3
          add_info == 31 ? :indefinite_string : :string
        when 4
          add_info == 31 ? :indefinite_array : :array
        when 5
          add_info == 31 ? :indefinite_map : :map
        when 6 then :tag
        when 7 # simple or float
          case add_info
          when 20, 21 then :boolean
          when 22 then :nil
          when 23 then :undefined # for smithy, this should be parsed as nil
          when 24 then :simple_value
          when 25 then :half
          when 26 then :float
          when 27 then :double
          when 31 then :break_stop_code
          else
            :reserved_undefined
          end
        end
      end

      def read_break_stop_code
        read_info
        :break_stop_code
      end

      def read_integer
        major_type, add_info = read_info

        val = read_count(add_info)
        case major_type
        when 0 then val
        when 1 then -1 - val
        else
          raise ArgumentError, "Expected Integer (0,1) got major type: #{major_type}"
        end
      end

      def read_binary_string
        _major_type, add_info = read_info
        take(read_count(add_info)).force_encoding(Encoding::BINARY)
      end

      def read_string
        _major_type, add_info = read_info
        take(read_count(add_info)).force_encoding(Encoding::UTF_8)
      end

      # returns only the length of the array, caller must read the correct number of values after this
      def read_array
        _major_type, add_info = read_info
        read_count(add_info)
      end

      # returns nothing but consumes and checks the type/info.
      # Caller must keep reading until encountering the stop sequence
      def read_start_indefinite_array
        read_info
      end

      # returns nothing but consumes and checks the type/info.
      # Caller must keep reading until encountering the stop sequence
      def read_start_indefinite_map
        read_info
      end

      # returns nothing but consumes and checks the type/info.
      def read_end_indefinite_collection
        read_info
      end

      # returns only the length of the array, caller must read the correct number of key value pairs after this
      def read_map
        _major_type, add_info = read_info
        read_count(add_info)
      end

      # returns only the tag, caller must interpret the tag and read another value as appropriate
      def read_tag
        _major_type, add_info = read_info
        read_count(add_info)
      end

      def read_boolean
        _major_type, add_info = read_info
        case add_info
        when 20 then false
        when 21 then true
        else
          raise ArgumentError, "Invalid Boolean simple type, expected add_info of 20 or 21, got: #{add_info}"
        end
      end

      def read_nil
        read_info
        nil
      end

      def read_undefined
        read_info
        :undefined
      end

      def read_half
        read_info
        Half.decode(take(2).unpack1('n'))
      end

      def read_float
        read_info
        take(4).unpack1('g')
      end

      def read_double
        read_info
        take(8).unpack1('G')
      end

      # tag type 2 or 3
      def read_bignum(tag_value)
        _major_type, add_info = read_info
        bstr = take(read_count(add_info))
        v = bstr.bytes.inject(0) do |sum, b|
          sum <<= 8
          sum + b
        end
        case tag_value
        when 2 then v
        when 3 then -1 - v
        else
          raise ArgumentError, "Invalid Tag value for BigNum, expected 2 or 3, got: #{tag_value}"
        end
      end

      # A decimal fraction or a bigfloat is represented as a tagged array
      # that contains exactly two integer numbers:
      # an exponent e and a mantissa m
      # See: https://www.rfc-editor.org/rfc/rfc8949.html#name-decimal-fractions-and-bigfl
      def read_big_decimal
        unless (s = read_array) == 2
          raise ArgumentError, "Expected array of length 2 but length is: #{s}"
        end

        e = read_integer
        m = read_integer
        BigDecimal(m) * (BigDecimal(10)**BigDecimal(e))
      end

      # return a tuple of major_type, add_info
      def read_info
        ib = take(1).ord
        [ib >> 5, ib & FIVE_BIT_MASK]
      end

      def read_count(add_info)
        case add_info
        when 0..23 then add_info
        when 24 then take(1).ord
        when 25 then take(2).unpack1('n')
        when 26 then take(4).unpack1('N')
        when 27 then take(8).unpack1('Q>')
        else raise UnexpectedAdditionalInformation, add_info
        end
      end

      def take(n_bytes)
        opos = @pos
        @pos += n_bytes
        raise OutOfBytesError.new(n_bytes, @buffer.bytesize - @pos) if @pos > @buffer.bytesize

        @buffer[opos, n_bytes]
      end

      def peek(n_bytes)
        OutOfBytesError.new(n_bytes, @buffer.bytesize - @pos) if (@pos + n_bytes) > @buffer.bytesize
        @buffer[@pos, n_bytes]
      end
    end
  end
end
