
module Aws
  module S3
    module EncryptionV3

      # @api private
      module S3Rfc2047

        def self.decode(input)
          decode_utf8_via_latin1(decode_rfc_2047(input))
        end
        
        # RFC 2047 encoded word pattern:
        # =?charset?encoding?encoded-text?=
        #
        # Capture groups:
        #   $1 - charset (e.g., UTF-8, ISO-8859-1)
        #   $2 - encoding ('B'/'b' for Base64,
        #                  'Q'/'q' for Quoted-Printable)
        #   $3 - encoded_text
        #
        # Example:
        # =?UTF-8?B?w6XDpcOl?=
        WORD = /=\?([^\s?=]+)\?([BbQq])\?([!->@-~]+)\?=/.freeze
    
        # Matches any two adjacent encoded words separated by whitespace.
        #
        # For S3 use case:
        # entire header is encoded,
        # so all whitespace separates encoded words.
        #
        # Per RFC 2047,
        # whitespace between adjacent encoded words is removed during decoding.
        #
        # Example:
        # "=?UTF-8?B?aGVs?= =?UTF-8?Q?lo?=" → "hello" (no space)
        ADJACENT_WORDS = /(#{WORD})[\s\r\n]+(?==\?)/.freeze

        def self.decode_rfc_2047(input)
          # Early exit if no encoded words present.
          # The header we are decoding is from S3
          # and the whole header string is encoded or not.
          return input unless input.start_with?('=?')
          
          input.gsub(ADJACENT_WORDS, "\\1").gsub(WORD) do |word|
            charset = $1
            encoding = $2
            encoded_value = $3
            case encoding
            when 'b', 'B'
              # 'm' - Format directive for Base64 decode
              # (MIME Base64 encoding).
              # The * means "consume the entire remaining string
              # as one Quoted-Printable encoded value"
              # so there will only ever be 1 element.
              decoded_bytes = encoded_value.unpack('m*')[0]
            when 'q', 'Q'
              # RFC 2047 4.2(3):
              # The 8-bit hexadecimal value 20
              # (e.g., ISO-8859-1 SPACE)
              # may be represented as "_" (underscore, ASCII 95.).
              #
              # RFC 2047 4.2(3):
              # In particular,
              # SPACE and TAB MUST NOT be represented as themselves
              # within encoded words.
              #
              # Therefore in RFC 2047 Q encoding,
              # '_' ALWAYS represents a SPACE character (0x20).
              # This is an alternative to encoding it as '=20'
              # in Quoted-Printable.
              encoded_value = encoded_value.tr("_", " ")
              # 'M' - Format directive for Quoted-Printable decoding.
              decoded_bytes = encoded_value.unpack('M*')[0]
            else
              raise DecryptionError, "unknown 2047 encoding: #{encoding} for: #{input}. Expected Q or B."
            end
            begin
              # Ruby works best with UTF-8 strings,
              # so normalize to that.
              decoded_bytes.encode('utf-8', charset)
            rescue 
              raise DecryptionError, "unable to encode text #{text} to utf8 for: #{input}"
            end
          end
        end

        # Decodes a string that has been double-encoded
        # due to UTF-8 bytes being misinterpreted as Latin-1 characters
        # and then re-encoded as UTF-8.
        #
        # The Double-Encoding Process:
        # 
        # Original UTF-8 string:
        # "å" → UTF-8 bytes: C3 A5
        #
        # Step 1:
        # UTF-8 bytes are incorrectly treated as Latin-1/ISO-8859-1 characters
        #   - Byte C3 → Character U+00C3 (Ã)
        #   - Byte A5 → Character U+00A5 (¥)
        #
        # Step 2:
        # These Latin-1 characters are then re-encoded as UTF-8
        #   - U+00C3 in UTF-8 → C3 83
        #   - U+00A5 in UTF-8 → C2 A5
        #
        # Result:
        # The double-encoded data contains "C3 83 C2 A5" instead of "C3 A5"
        #
        # This function reverses the process by:
        #
        # 1. Identifying characters in the Latin-1 extended range
        #    (U+0080-U+00FF)
        #    - These represent the misinterpreted original UTF-8 bytes
        #
        # 2. Extracting their codepoint values as bytes
        #    - Since codepoint value equals original byte value
        #
        # 3. Reinterpreting those bytes as UTF-8
        #    - Recovering the original string
        #
        # Note:
        # ASCII characters (U+0000-U+007F) were never affected by the
        # double-encoding,
        # so they're left untouched.
        # Higher Unicode characters (U+0100+) don't appear in double-encoded data
        # because after the process,
        # all double-encoded bytes fall into the Latin-1 extended range.
        #
        def self.decode_utf8_via_latin1(s)
          # Replace runs of Latin-1 extended characters (U+0080-U+00FF)
          # with their decoded form.
          # These characters represent bytes that were misinterpreted as Latin-1
          # and then re-encoded as UTF-8.
          s.gsub(/[\u0080-\u00FF]+/) do |corrupted_section|
            # Extract the Unicode codepoint of each character
            # in the matched section.
            # For characters in the U+0080-U+00FF range,
            # the codepoint value numerically equals
            # the original UTF-8 byte value that was misinterpreted.
            # 
            # Example:
            # Character 'Ã' (U+00C3) has codepoint 195,
            # which equals the original UTF-8 byte 0xC3 (195 in decimal).
            codepoints = corrupted_section.chars.map(&:ord)
            
            # Pack the codepoint values as raw bytes.
            # 'C*' means "unsigned 8-bit integers".
            # This creates a binary string
            # where each codepoint value becomes a byte.
            # 
            # Example:
            # [195, 165] → "\xC3\xA5" (binary string)
            binary_data = codepoints.pack('C*')
            
            # Reinterpret the binary data as UTF-8.
            # This doesn't transcode the bytes,
            # it just tells Ruby to interpret them as UTF-8 encoded data.
            # 
            # Example:
            # "\xC3\xA5" (bytes C3 A5) interpreted as UTF-8 → "å"
            binary_data.force_encoding('UTF-8')
          end
        end
      end
    end
  end
end
