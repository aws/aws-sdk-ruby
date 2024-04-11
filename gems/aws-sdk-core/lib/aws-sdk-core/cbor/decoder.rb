# frozen_string_literal: true

module Aws
  module Cbor
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
          until peek_type == :break_stop_code
            value << decode_item
          end
          read_end_indefinite_collection
          value
        when :indefinite_map
          read_start_indefinite_map
          value = {}
          until peek_type == :break_stop_code
            value[read_string] = decode_item
          end
          read_end_indefinite_collection
          value
        when :indefinite_binary_string
          read_info
          value = String.new
          until peek_type == :break_stop_code
            value << read_binary_string
          end
          read_end_indefinite_collection
          value
        when :indefinite_string
          read_info
          value = String.new
          until peek_type == :break_stop_code
            value << read_string
          end
          read_end_indefinite_collection
          value.force_encoding(Encoding::UTF_8)
        when :tag
          Tagged.new(read_tag, decode_item)
        when :break_stop_code
          raise UnexpectedBreakCode
        else
          self.send("read_#{next_type}")
        end
      end

      private

      # low level streaming interface
      def peek_type
        ib = peek(1).ord
        add_info = ib & FIVE_BIT_MASK
        major_type = ib >> 5
        case major_type
        when 0,1; :integer
        when 2
          add_info == 31 ? :indefinite_binary_string : :binary_string
        when 3
        add_info == 31 ? :indefinite_string : :string
        when 4
          add_info == 31 ? :indefinite_array : :array
        when 5
          add_info == 31 ? :indefinite_map : :map
        when 6; :tag
        when 7 # simple or float
          case add_info
          when 20,21; :boolean
          when 22; :nil
          when 23; :undefined # for smithy, this should be parsed as nil
          when 24; :simple_value
          when 25; :half
          when 26; :float
          when 27; :double
          when 31; :break_stop_code
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
        when 0; val
        when 1; -1 - val
        else
          raise ArgumentError, "Expected Integer (0,1) got major type: #{major_type}"
        end
      end

      def read_binary_string
        major_type, add_info = read_info
        if major_type == 2
          take(read_count(add_info)).force_encoding(Encoding::BINARY)
        else
          raise ArgumentError, "Expected Binary String (2) got major type: #{major_type}"
        end
      end

      def read_string
        major_type, add_info = read_info
        if major_type == 3
          take(read_count(add_info)).force_encoding(Encoding::UTF_8)
        else
          raise ArgumentError, "Expected String (3) got major type: #{major_type}"
        end
      end

      # returns only the length of the array, caller must read the correct number of values after this
      def read_array
        major_type, add_info = read_info
        if major_type == 4
          read_count(add_info)
        else
          raise ArgumentError, "Expected Array (4) got major type: #{major_type}"
        end
      end

      # returns nothing but consumes and checks the type/info.
      # Caller must keep reading until encountering the stop sequence
      def read_start_indefinite_array
        major_type, add_info = read_info
        if major_type != 4 || add_info != 31
          raise ArgumentError, "Expected Indefinite Array (4, 31) got  #{major_type}, #{add_info}"
        end
      end

      # returns nothing but consumes and checks the type/info.
      # Caller must keep reading until encountering the stop sequence
      def read_start_indefinite_map
        major_type, add_info = read_info
        if major_type != 5 || add_info != 31
          raise ArgumentError, "Expected Indefinite map (5, 31) got  #{major_type}, #{add_info}"
        end
      end

      # returns nothing but consumes and checks the type/info.
      def read_end_indefinite_collection
        major_type, add_info = read_info
        if major_type != 7 || add_info != 31
          raise ArgumentError, "Expected stop sequence (5, 31) got  #{major_type}, #{add_info}"
        end
      end

      # returns only the length of the array, caller must read the correct number of key value pairs after this
      def read_map
        major_type, add_info = read_info
        if major_type == 5
          read_count(add_info)
        else
          raise ArgumentError, "Expected Map (5) got major type: #{major_type}"
        end
      end

      # returns only the tag, caller must interpret the tag and read another value as appropriate
      def read_tag
        major_type, add_info = read_info
        if major_type == 6
          read_count(add_info)
        else
          raise ArgumentError, "Expected Tag (6) got major type: #{major_type}"
        end
      end

      def read_boolean
        major_type, add_info = read_info
        if major_type == 7
          case add_info
          when 20; false
          when 21; true
          else
            raise ArgumentError, "Invalid Boolean simple type, expected add_info of 20 or 21, got: #{add_info}"
          end
        else
          raise ArgumentError, "Expected Boolean/Simple (7) got major type: #{major_type}"
        end
      end

      def read_nil
        major_type, add_info = read_info
        if major_type == 7 && add_info == 22
          nil
        else
          raise ArgumentError, "Expected Nil value (7, 22) got : #{major_type}, #{add_info}"
        end
      end

      def read_undefined
        read_info
        :undefined
      end

      def read_half
        major_type, add_info = read_info
        if major_type == 7 && add_info == 25
          Half.decode(take(2).unpack('n').first)
        else
          raise ArgumentError, "Expected Half value (7, 25) got : #{major_type}, #{add_info}"
        end
      end

      def read_float
        major_type, add_info = read_info
        if major_type == 7 && add_info == 26
          take(4).unpack('g').first
        else
          raise ArgumentError, "Expected Float value (7, 26) got : #{major_type}, #{add_info}"
        end
      end

      def read_double
        major_type, add_info = read_info
        if major_type == 7 && add_info == 27
          take(8).unpack('G').first
        else
          raise ArgumentError, "Expected Double value (7, 27) got : #{major_type}, #{add_info}"
        end
      end

      # tag type 2 or 3
      def read_bignum(tag_value)
        major_type, add_info = read_info
        if major_type == 2 # byte string
          bstr = take(read_count(add_info))
          v = bstr.bytes.inject(0) {|sum, b| sum <<= 8; sum += b }
          case tag_value
          when 2; v
          when 3; -1 - v
          else
            raise ArgumentError, "Invalid Tag value for BigNum, expected 2 or 3, got: #{tag_value}"
          end
        else
          raise ArgumentError, "Expected byte string (2) but got major type : #{major_type}"
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
        BigDecimal(m) * (BigDecimal(10) ** BigDecimal(e))
      end

      # return a tuple of major_type, add_info
      def read_info
        ib = take(1).ord
        [ib >> 5, ib & FIVE_BIT_MASK]
      end

      def read_count(add_info)
        case add_info
        when 0..23; add_info
        when 24; take(1).ord
        when 25; take(2).unpack("n").first
        when 26; take(4).unpack("N").first
        when 27; take(8).unpack("Q>").first
        else raise "unknown additional information #{add_info}"
        end
      end

      def atleast!(n)
        left = @buffer.bytesize - @pos
        raise OutOfBytesError.new(n - left) if n > left
      end

      def take(n)
        opos = @pos
        @pos += n
        raise OutOfBytesError.new(@pos - @buffer.bytesize) if @pos > @buffer.bytesize
        @buffer[opos, n]
      end

      def peek(n)
        return nil if (@pos + n) > @buffer.bytesize
        @buffer[@pos, n]
      end
    end
  end
end