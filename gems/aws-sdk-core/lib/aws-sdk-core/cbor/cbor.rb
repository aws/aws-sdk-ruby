# frozen_string_literal: true

require_relative 'half'

module Aws
  module Cbor
    class OutOfBytesError < RuntimeError
    end
    class UnknownType < ArgumentError; end

    Tagged = Struct.new(:tag, :value) do
      def to_s
        "#{tag}(#{value})"
      end
      def inspect
        "#{tag}(#{value.inspect})"
      end
      def data
        value
      end
    end

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

    def self.encode(data)
      Encoder.new.add(data).bytes
    end

    def self.decode(bytes)
      Decoder.new(bytes).decode
    end

    class Encoder
      def initialize
        @buffer = String.new
        # Using StringIO is about 2x slower
      end

      # @return the encoded bytes in CBOR format for all added data
      def bytes
        @buffer
      end

      def add(value)
        case value
        when Integer; add_auto_integer(value)
        when Numeric; add_auto_float(value)
        when Symbol; add(value.to_s)    # TODO: Should this be tagged
        when false; head(MAJOR_TYPE_SIMPLE, 20)
        when true; head(MAJOR_TYPE_SIMPLE, 21)
        when nil; head(MAJOR_TYPE_SIMPLE, 22)
        # ruby does not have an "undefined", but this would be 23
        when Tagged
          head(MAJOR_TYPE_TAG, value.tag)
          add(value.value)
        when String
          major_type = if value.encoding == Encoding::BINARY
                 MAJOR_TYPE_BYTE_STR
               else
                 value = value.encode(Encoding::UTF_8).force_encoding(Encoding::BINARY)
                 MAJOR_TYPE_STR
               end
          head(major_type, value.bytesize)
          @buffer << value
        when Array
          head(MAJOR_TYPE_ARRAY, value.size)
          value.each {|di| add(di)}
        when Hash
          head(MAJOR_TYPE_MAP, value.size)
          value.each {|k, v| add(k); add(v)}
        when Time
          # always use Major type 6 (Tag) w/ epoch-based time
          head(MAJOR_TYPE_TAG, TAG_TYPE_EPOCH)
          epoch_ms = (value.utc.to_f * 1000).to_i
          add_integer(epoch_ms)
        else
          raise UnknownType, "Unable to encode #{value}"
        end
        self
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

        # This is not quite correct.
        # Ruby bignum does not exactly match the m*(10^e) format expected here
        add_tag(4)
        start_array(2)
        add_integer(bd.exponent.to_i)
        add_integer(bd.fix.to_i)
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

      private
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

      def bignum_to_bytes(d)
        s = String.new
        while (d != 0)
          s << (d & 0xFF)
          d >>= 8
        end
        s.reverse!
      end
    end

    class Decoder
      def initialize(bytes)
        @buffer = bytes
        @pos = 0
      end

      def decode
        val = decode_item
        raise "extra bytes follow after a deserialized object of #@pos bytes" if @pos != @buffer.size
        val
      end

      # low level streaming interface

      def peek_type
        ib = peek(1).ord
        add_info = ib & FIVE_BIT_MASK
        major_type = ib >> 5
        case major_type
        when 0,1; :integer
        when 2; :binary_string
        when 3; :string
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
      end

      def read_indefinite_map
        read_info
      end

      def read_indefinite_array
        read_info
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

      def read_half
        major_type, add_info = read_info
        if major_type == 7 && add_info == 25
          Half.decode(take(2).unpack('n'))
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

      # Callback based streaming API

      def read_next_item(handler)
        next_type = peek_type
        value = self.send("read_#{next_type}")
        callback = handler[next_type]
        callback.call(value) if callback
        [next_type, value]
      end



      # return a tuple of major_type, add_info
      def read_info
        ib = take(1).ord
        [ib >> 5, ib & FIVE_BIT_MASK]
      end

      def read_count(add_info)
        case add_info
        when 0...23; add_info
        when 23; :undefined
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

      private

      FIVE_BIT_MASK = 0x1F

      def decode_item(breakable = false)
        ib = take(1).ord
        add_info = ib & FIVE_BIT_MASK
        major_type = ib >> 5
        val = case add_info
              when 0...23; add_info
              when 23; :undefined
              when 24; take(1).ord
              when 25; take(2).unpack("value").first
              when 26; (s = take(4)).unpack("N").first
              when 27; (s = take(8)).unpack("Q>").first
              when 31; return decode_item_streaming(ib, breakable)
              else raise "unknown additional information #{add_info} in major_type #{major_type}"
              end
        case major_type
        when 0; val
        when 1; -1-val
        when 7
          case add_info
          when 20; false
          when 21; true
          when 22; nil
          # when 23; Simple.new(23)   # Ruby does not have Undefined
          when 24;
            raise "two-byte simple is #{val} but must be between 32 and 255" unless val >= 32;
            val
          when 25; Half.decode(val)
          when 26; s.unpack("g").first  # raw bytes taken in val earlier
          when 27; s.unpack("G").first
          else
            val
          end
        when 6
          di = decode_item
          if val == TAG_TYPE_EPOCH && Integer === di
            Time.at(di / 1000.0)
          elsif String === di && (val & ~1) == TAG_BIGNUM_BASE
            (TAG_BIGNUM_BASE - val) ^ di.bytes.inject(0) {|sum, b| sum <<= 8; sum += b }
          else
            Tagged.new(val, di).to_s
          end
        when 2; take(val).force_encoding(Encoding::BINARY)
        when 3; take(val).force_encoding(Encoding::UTF_8)
        when 4; atleast!(val); Array.new(val) { decode_item }
        when 5; atleast!(val*2); Hash[Array.new(val) {[decode_item, decode_item]}]
        end
      end

      def decode_item_streaming(ib, breakable)
        case ib >>= 5
        when 2, 3
          want_encoding = MT_TO_ENCODING[ib]
          subs = []
          while (element = decode_item(true)) != :break
            raise "non-string (#{element.inspect}) in streaming string" unless String === element
            raise "bytes/text mismatch (#{element.encoding} != #{want_encoding}) in streaming string" unless element.encoding == want_encoding
            subs << element
          end
          result = subs.join.cbor_stream!(subs.map(&:length)).force_encoding(want_encoding)
        when 4
          result = Array.new;
          while (element = decode_item(true)) != :break
            result << element
          end
          result
        when 5
          result = Hash.new
          while (key = decode_item(true)) != :break
            result[key] = decode_item
          end
          result
        when 7
          raise "break stop code outside indefinite length item" unless breakable
          :break
        else raise "unknown ib #{ib} for additional information 31"
        end
      end
    end
  end
end