# frozen_string_literal: true

module Aws
  module Cbor
    # 16 bit IEEE 754 half-precision floats
    # Support decoding only
    # format:
    # sign - 1 bit
    # exponent - 5 bits
    # precision - 10 bits
    module Half
      def self.decode(b16)
        exp = b16 >> 10 & 0x1f
        mant = b16 & 0x3ff
        val =
          case exp
          when 0
            Math.ldexp(mant, -24)
          when 31
            mant.zero? ? Float::INFINITY : Float::NAN
          else
            # exp bias is 15, but to use ldexp we divide by 1024 (2^10) to get
            # exp-15-10
            Math.ldexp(1024 + mant, exp - 25)
          end
        if b16[15] != 0
          -val
        else
          val
        end
      end
    end
  end
end
