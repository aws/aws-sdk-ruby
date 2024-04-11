# frozen_string_literal: true

module Aws
  module Cbor
    class Encoder

      def initialize
        @buffer = String.new
        # Using StringIO is about 2x slower
      end

      # @return the encoded bytes in CBOR format for all added data
      def bytes
        @buffer
      end

      # generic method for adding generic Ruby data based on its type
      def add(value)
        case value
        when Integer; add_auto_integer(value)
        when Numeric; add_auto_float(value)
        when Symbol; add_string(value.to_s)
        when true,false; add_boolean(value)
        when nil; add_nil
        when Tagged
          add_tag(value.tag)
          add(value.value)
        when String
          if value.encoding == Encoding::BINARY
            add_byte_string(value)
          else
            add_string(value)
          end
        when Array
          start_array(value.size)
          value.each {|di| add(di)}
        when Hash
          start_map(value.size)
          value.each {|k, v| add(k); add(v)}
        when Time
          add_time(value)
        else
          raise UnknownType, "Unable to encode #{value}"
        end
        self
      end

      private

      MAJOR_TYPE_UNSIGNED_INT = 0x00 # 000_00000 - Major Type 0 - unsigned int
      MAJOR_TYPE_NEGATIVE_INT = 0x20 # 001_00000 - Major Type 1 - negative int
      MAJOR_TYPE_BYTE_STR = 0x40 # 010_00000 - Major Type 2 (Byte String)
      MAJOR_TYPE_STR = 0x60 # 011_00000 - Major Type 3 (Text String)
      MAJOR_TYPE_ARRAY = 0x80 # 100_00000 - Major Type 4 (Array)
      MAJOR_TYPE_MAP = 0xa0 # 101_00000 - Major Type 5 (Map)
      MAJOR_TYPE_TAG = 0xc0 # 110_00000 - Major type 6 (Tag)
      MAJOR_TYPE_SIMPLE = 0xe0 # 111_00000 - Major type 7 (111) + 5 bit 0

      FLOAT_BYTES = 0xfa # 111_11010 - Major type 7 (Float) + value: 26
      DOUBLE_BYTES = 0xfb # 111_ 11011 - Major type 7 (Float) + value: 26

      # https://www.rfc-editor.org/rfc/rfc8949.html#tags
      TAG_TYPE_EPOCH = 1

      TAG_BIGNUM_BASE = 2

      MAX_INTEGER = 18446744073709551616 # 2^64

      HALF_NAN_BYTES = ("\xf9" + Half::NAN_BYTES).freeze
      FLOAT_NAN_BYTES = "\xFA\x7F\xC0\x00\x00"

      def head(major_type, value)
        @buffer <<
          case value
          when 0...24
            [major_type + value].pack("C") # 8-bit unsigned
          when 0...256
            [major_type + 24, value].pack("CC")
          when 0...65536
            [major_type + 25, value].pack("Cn")
          when 0...4294967296
            [major_type + 26, value].pack("CN")
          when 0...MAX_INTEGER
            [major_type + 27, value].pack("CQ>")
          else
            raise ArgumentError, "Value is too large to encode: #{d}"
          end
      end

      # streaming style, lower level interface
      def add_integer(d)
        major_type = if d < 0
                       d = -1 - d
                       MAJOR_TYPE_NEGATIVE_INT
                     else
                       MAJOR_TYPE_UNSIGNED_INT
                     end
        head(major_type, d)
      end

      def add_bignum(d)
        major_type = if d < 0
                       d = -1 - d
                       MAJOR_TYPE_NEGATIVE_INT
                     else
                       MAJOR_TYPE_UNSIGNED_INT
                     end
        s = bignum_to_bytes(d)
        head(MAJOR_TYPE_TAG, TAG_BIGNUM_BASE + (major_type >> 5))
        head(MAJOR_TYPE_BYTE_STR, s.bytesize)
        @buffer << s
      end

      # A decimal fraction or a bigfloat is represented as a tagged array
      # that contains exactly two integer numbers:
      # an exponent e and a mantissa m
      # See: https://www.rfc-editor.org/rfc/rfc8949.html#name-decimal-fractions-and-bigfl
      def add_big_decimal(bd)
        raise NotImplementedError
      end

      def add_auto_integer(d)
        major_type = if d < 0
                       d = -1 - d
                       MAJOR_TYPE_NEGATIVE_INT
                     else
                       MAJOR_TYPE_UNSIGNED_INT
                     end

        if d >= MAX_INTEGER
          s = bignum_to_bytes(d)
          head(MAJOR_TYPE_TAG, TAG_BIGNUM_BASE + (major_type >> 5))
          head(MAJOR_TYPE_BYTE_STR, s.bytesize)
          @buffer << s
        else
          head(major_type, d)
        end
      end

      def add_float(fv)
        if fv.nan?
          @buffer << FLOAT_NAN_BYTES
        else
          ss = [fv].pack("g")         # single-precision
          @buffer << FLOAT_BYTES << ss
        end
      end

      def add_double(fv)
        if fv.nan?
          @buffer << FLOAT_NAN_BYTES
        else
          @buffer << [DOUBLE_BYTES, fv].pack("CG") # double-precision
        end
      end

      def add_auto_float(fv)
        if fv.nan?
          @buffer << FLOAT_NAN_BYTES # Prefer using single precision over half
        else
          ss = [fv].pack("g")         # single-precision
          if ss.unpack("g").first == fv
            @buffer << FLOAT_BYTES << ss
          else
            @buffer << [DOUBLE_BYTES, fv].pack("CG") # double-precision
          end
        end
      end

      def add_nil
        head(MAJOR_TYPE_SIMPLE, 22)
      end

      def add_boolean(value)
        value ? head(MAJOR_TYPE_SIMPLE, 21) : head(MAJOR_TYPE_SIMPLE, 20)
      end

      # Encoding MUST already be Encoding::BINARY
      def add_byte_string(value)
        head(MAJOR_TYPE_BYTE_STR, value.bytesize)
        @buffer << value
      end

      def add_string(value)
        value = value.encode(Encoding::UTF_8).force_encoding(Encoding::BINARY)
        head(MAJOR_TYPE_STR, value.bytesize)
        @buffer << value
      end

      # caller is responsible for adding length values
      def start_array(length)
        head(MAJOR_TYPE_ARRAY, length)
      end

      def start_indefinite_array
        head(MAJOR_TYPE_ARRAY + 31, 0)
      end

      # caller is responsible for adding length key/value pairs
      def start_map(length)
        head(MAJOR_TYPE_MAP, length)
      end

      def start_indefinite_map
        head(MAJOR_TYPE_MAP + 31, 0)
      end

      def end_indefinite_collection
        # write the stop sequenece
        head(MAJOR_TYPE_SIMPLE + 31, 0)
      end

      def add_tag(tag)
        head(MAJOR_TYPE_TAG, tag)
      end

      def add_time(value)
        head(MAJOR_TYPE_TAG, TAG_TYPE_EPOCH)
        epoch_ms = (value.to_f * 1000).to_i
        add_integer(epoch_ms)
      end

      def bignum_to_bytes(d)
        s = String.new
        while (d != 0)
          s << (d & 0xFF)
          d >>= 8
        end
        s.reverse!
      end
    end
  end
end