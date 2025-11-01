require_relative '../spec_helper'
require 'base64'
require 'openssl'
require 'json'

module Aws
  module S3
    module EncryptionV3
      
      context 'S3Rfc2047 decode' do

        it 'ascii header value' do
          test = S3Rfc2047.decode("all ascii value")
          expect(test).to eq("all ascii value")
        end
        
        it 'non-ascii header value' do
          test = S3Rfc2047.decode('=?UTF-8?B?w4PCpcODwqXDg8Kl?=')
          expect(test).to eq("ååå")
        end
        
        it 'characters outside the extended latin1 range' do
          test = S3Rfc2047.decode('=?UTF-8?B?w6TCuMKtw6TCuMKtw6TCuMKt?=')
          expect(test).to eq("中中中")
        end
                
        it 'encryption context with non-ascii' do
          test = S3Rfc2047.decode('=?UTF-8?Q?{"aws:x-amz-cek-alg":"AES/GCM/NoPadding",?= =?UTF-8?Q?"Some_Data":"Some_Da?= =?UTF-8?Q?ta","l1Key":"=C3=83=C2=A5=C3=83=C2=A5=C3=83=C2=A5"}?=')
          expect(test).to eq('{"aws:x-amz-cek-alg":"AES/GCM/NoPadding","Some Data":"Some Data","l1Key":"ååå"}')
        end
        
        it 'encryption context with lots of non-ascii' do
          test = S3Rfc2047.decode("=?UTF-8?B?eyJhd3M6eC1hbXotY2VrLWFsZyI6IkFFUy9HQ00=?= =?UTF-8?B?L05vUGFkZGluZyIsIlNvbWUgRGF0YSI6IlNvbWUg?= =?UTF-8?B?RGF0YSIsImwxS2V5Ijoiw4PCpcODwqXDg8Klw4PCpcODwqXDg8Klw4PCpQ==?= =?UTF-8?B?w4PCpcODwqXDg8Klw4PCpcODwqXDg8Klw4PCpcOD?= =?UTF-8?B?wqXDg8Klw4PCpcODwqXDg8Klw4PCpcODwqXDg8Kl?= =?UTF-8?B?w4PCpcODwqXDg8Klw4PCpcODwqXDg8Klw4PCpQ==?= =?UTF-8?B?w4PCpcODwqXDg8Klw4PCpcODwqXDg8Klw4PCpcOD?= =?UTF-8?B?wqXDg8Klw4PCpcODwqXDg8Klw4PCpcODwqXDg8Kl?= =?UTF-8?B?w4PCpcODwqXDg8Klw4PCpcODwqXDg8Klw4PCpcOD?= =?UTF-8?B?wqXDg8Klw4PCpcODwqXDg8Klw4PCpcODwqXDgw==?= =?UTF-8?B?wqXDg8Klw4PCpcODwqXDg8Klw4PCpcODwqXDg8Kl?= =?UTF-8?B?w4PCpcODwqXDg8Klw4PCpcODwqXDg8Klw4PCpcOD?= =?UTF-8?B?wqXDg8Klw4PCpcODwqXDg8Klw4PCpcODwqUifQ==?=")
          
          expect(test).to eq('{"aws:x-amz-cek-alg":"AES/GCM/NoPadding","Some Data":"Some Data","l1Key":"åååååååååååååååååååååååååååååååååååååååååååååååååååååååååååååååååååååååååååååååå"}')
        end
        
        it 'does not collapse adjacent words with different encodings' do
          # Mix of Base64 and Quoted-Printable -
          # should decode correctly without collapsing.
          # "hel" in Base64 + "lo" in Quoted-Printable = "hello"
          input = '=?UTF-8?B?aGVs?= =?UTF-8?Q?lo?='
          result = S3Rfc2047.decode(input)
          expect(result).to eq("hello")
        end
        
        it 'collapses adjacent words with same charset and encoding' do
          # Both Base64 -
          # should collapse before decoding.
          # "hel" + "lo" = "hello"
          input = '=?UTF-8?B?aGVs?= =?UTF-8?B?bG8=?='
          result = S3Rfc2047.decode(input)
          expect(result).to eq("hello")
        end
        
        context 'Interesting test vectors' do
          # Test cases for encode_utf8_via_latin1 / decode_utf8_via_latin1.
          # Each entry is [utf8_string, utf8_via_latin1_encoded, s3_rfc_2047]
          # where utf8_via_latin1_encoded is the result of encode_utf8_via_latin1(utf8_string)
          # and s3_rfc_2047 is the result of sending the utf8_string to S3 as metadata then getting back the header value
          UTF8_VIA_LATIN1_TEST_STRINGS = [
            # === 1. ASCII (1-byte UTF-8) - IMPORTANT EDGE CASE ===
            # ASCII characters (U+0000-U+007F) use bytes 0x00-0x7F
            # which are identical in Latin-1 and UTF-8.
            # These should pass through UNCHANGED
            # because they don't trigger the corruption (no bytes >= 0x80).
            # Bytes: 48 65 6C 6C 6F 20 57 6F 72 6C 64
            ["Hello World", "Hello World", "Hello World"],
            
            # === 2. Latin-1 Extended (2-byte UTF-8) - PRIMARY TEST CASE ===
            # The 'é' (U+00E9) is encoded as C3 A9 in UTF-8 (2 bytes).
            # Both bytes are >= 0x80,
            # triggering the full corruption path.
            #
            # UTF-8 bytes:
            # 63 61 66 C3 A9
            #
            # After corruption:
            # 63 61 66 C3 83 C2 A9 (é becomes Ã©)
            ["café", "cafÃ©", "=?UTF-8?Q?caf=C3=83=C2=A9?="],
            
            # Swedish/Nordic characters.
            # Each is 2-byte UTF-8.
            # å = C3 A5,
            # ä = C3 A4,
            # ö = C3 B6
            ["åäö", "Ã¥Ã¤Ã¶", "=?UTF-8?B?w4PCpcODwqTDg8K2?="],
            
            # Greek Omega (U+03A9) -
            # upper end of 2-byte UTF-8 range.
            # UTF-8:
            # CE A9 (both bytes in 0x80-0xFF range)
            ["Ω", "Î©", "=?UTF-8?B?w47CqQ==?="],
            
            # === 3. CJK Characters (3-byte UTF-8) ===
            # Common Chinese characters use 3-byte UTF-8 encoding.
            # 中 = E4 B8 AD,
            # 文 = E6 96 87
            ["中文", "ä¸­æ\u0096\u0087", "=?UTF-8?B?w6TCuMKtw6bClsKH?="],
            
            # Japanese characters -
            # comprehensive 3-byte test.
            ["日本語", "æ\u0097¥æ\u009C¬è\u00AA\u009E", "=?UTF-8?B?w6bCl8Klw6bCnMKsw6jCqsKe?="],
            
            # Euro sign (U+20AC) -
            # common symbol at start of 3-byte range.
            # UTF-8:
            # E2 82 AC
            ["€", "â\u0082¬", "=?UTF-8?B?w6LCgsKs?="],
            
            # === 4. Emoji and Rare Characters (4-byte UTF-8) ===
            # Grinning face emoji (U+1F600) -
            # tests 4-byte UTF-8 encoding.
            # UTF-8:
            # F0 9F 98 80
            ["😀", "ð\u009F\u0098\u0080", "=?UTF-8?B?w7DCn8KYwoA=?="],
            
            # Fire emoji (U+1F525) -
            # another common 4-byte emoji.
            # UTF-8:
            # F0 9F 94 A5
            ["🔥", "ð\u009F\u0094¥", "=?UTF-8?B?w7DCn8KUwqU=?="],
            
            # Mathematical bold H (U+1D573) -
            # non-emoji 4-byte character.
            # UTF-8:
            # F0 9D 95 B3
            ["𝕳", "ð\u009D\u0095³", "=?UTF-8?B?w7DCncKVwrM=?="],
            
            # === 5. Mixed Strings - CRITICAL FOR REAL-WORLD USE ===
            # Combines all byte lengths in one string.
            ["Hello café 中文 😀", "Hello cafÃ© ä¸­æ\u0096\u0087 ð\u009F\u0098\u0080", "=?UTF-8?B?SGVsbG8gY2Fmw4PCqSDDpMK4wq3DpsKWwocgw7DCn8KYwoA=?="],
            
            # Real-world scenario -
            # JSON with non-ASCII values.
            ["{\"key\":\"åäö\"}", "{\"key\":\"Ã¥Ã¤Ã¶\"}", "=?UTF-8?Q?{\"key\":\"=C3=83=C2=A5=C3=83=C2=A4=C3=83=C2=B6\"}?="],
            
            # === 6. Boundary Cases ===
            # First non-ASCII codepoint
            # (2-byte UTF-8: C2 80).
            ["\u0080", "Â\u0080", "=?UTF-8?B?w4LCgA==?="],
            
            # Last 2-byte UTF-8 character
            # (DF BF).
            ["\u07FF", "ß¿", "=?UTF-8?B?w5/Cvw==?="],
            
            # First 3-byte UTF-8 character
            # (E0 A0 80).
            ["\u0800", "à\u00A0\u0080", "=?UTF-8?B?w6DCoMKA?="],
            
            # Last character in BMP
            # (EF BF BF).
            ["\uFFFF", "ï¿¿", "=?UTF-8?B?w6/Cv8K/?="],
            
            # === 7. Edge Cases ===
            # Empty string -
            # ensure it doesn't crash.
            ["", "", ""],
            
            # Single ASCII -
            # minimal ASCII case.
            ["a", "a", "a"],
            
            # Single 2-byte character -
            # minimal non-ASCII case.
            ["å", "Ã¥", "=?UTF-8?B?w4PCpQ==?="],
            
            # Repeated 2-byte -
            # consecutive identical characters.
            ["åå", "Ã¥Ã¥", "=?UTF-8?B?w4PCpcODwqU=?="],
            
            # Non-ASCII followed by ASCII -
            # transition test.
            ["åa", "Ã¥a", "=?UTF-8?B?w4PCpWE=?="],
            
            # ASCII followed by non-ASCII -
            # transition test.
            ["aå", "aÃ¥", "=?UTF-8?B?YcODwqU=?="],
          ].freeze

          # This is the S3 result of concatenating all utf8 strings in UTF8_VIA_LATIN1_TEST_STRINGS twice.
          # Then sending this to S3 as metadata and getting it back.
          STRESS = "=?UTF-8?B?SGVsbG8gV29ybGRjYWbDg8Kpw4PCpcODwqTDg8K2w47CqcOkwrjCrcOmwpY=?= =?UTF-8?B?wofDpsKXwqXDpsKcwqzDqMKqwp7DosKCwqzDsA==?= =?UTF-8?B?wp/CmMKAw7DCn8KUwqXDsMKdwpXCs0hlbGw=?= =?UTF-8?B?byBjYWbDg8KpIMOkwrjCrcOmwpbChyDDsMKfwpjCgHsia2V5Ijoiw4PCpQ==?= =?UTF-8?B?w4PCpMODwrYifcOCwoDDn8K/w6DCoMKAw68=?= =?UTF-8?B?wr/Cv2HDg8Klw4PCpcODwqXDg8KlYWHDg8Kl?= =?UTF-8?B?SGVsbG8gV29ybGRjYWbDg8Kpw4PCpcODwqTDg8K2w47CqcOkwrjCrcOmwpY=?= =?UTF-8?B?wofDpsKXwqXDpsKcwqzDqMKqwp7DosKCwqzDsA==?= =?UTF-8?B?wp/CmMKAw7DCn8KUwqXDsMKdwpXCs0hlbGw=?= =?UTF-8?B?byBjYWbDg8KpIMOkwrjCrcOmwpbChyDDsMKfwpjCgHsia2V5Ijoiw4PCpQ==?= =?UTF-8?B?w4PCpMODwrYifcOCwoDDn8K/w6DCoMKAw68=?= =?UTF-8?B?wr/Cv2HDg8Klw4PCpcODwqXDg8KlYWHDg8Kl?="
        
          UTF8_VIA_LATIN1_TEST_STRINGS.each_with_index do |(value, utf8_via_latin1_encoded, s3_rfc2047_encoded), i|
            it "decode_utf8_via_latin1 test #{i+1}: #{value}" do
              # Verify the utf8_via_latin1_encoded value in the array matches what encode_utf8_via_latin1 produces
              expect(utf8_via_latin1_encoded).to eq(encode_utf8_via_latin1(value))
              
              decoded = S3Rfc2047.decode_utf8_via_latin1(utf8_via_latin1_encoded)
              expect(decoded).to eq(value)
            end

            it "decode_rfc_2047 test #{i+1}: #{value}" do              
              decoded = S3Rfc2047.decode_rfc_2047(s3_rfc2047_encoded)
              expect(decoded).to eq(utf8_via_latin1_encoded)
            end

            it "decode test #{i+1}: #{value}" do              
              decoded = S3Rfc2047.decode(s3_rfc2047_encoded)
              expect(decoded).to eq(value)
            end
          end

          it "Stress test: do it all at once" do
            value = UTF8_VIA_LATIN1_TEST_STRINGS.map { |v, _| v }.join() + UTF8_VIA_LATIN1_TEST_STRINGS.map { |v, _| v }.join()
            utf8_via_latin1_encoded = encode_utf8_via_latin1(value)
            decoded = S3Rfc2047.decode_utf8_via_latin1(utf8_via_latin1_encoded)
            expect(decoded).to eq(value)
            expect(utf8_via_latin1_encoded).to eq(S3Rfc2047.decode_rfc_2047(STRESS))
          end

          # Encodes a UTF-8 string
          # using the same double-encoding corruption
          # that decode_utf8_via_latin1 reverses,
          # using encoding manipulation.
          #
          # The Double-Encoding Process:
          #
          # Original UTF-8 string:
          # "å" → UTF-8 bytes: C3 A5
          #
          # Step 1:
          # Force interpretation of UTF-8 bytes as ISO-8859-1/Latin-1
          #   - Byte C3 → Character U+00C3 (Ã) in Latin-1
          #   - Byte A5 → Character U+00A5 (¥) in Latin-1
          #
          # Step 2:
          # Re-encode those Latin-1 characters as UTF-8
          #   - U+00C3 in UTF-8 → C3 83
          #   - U+00A5 in UTF-8 → C2 A5
          #
          # Result:
          # "Ã¥" with UTF-8 bytes C3 83 C2 A5 (double-encoded)
          #
          def encode_utf8_via_latin1(s)
            # Get the raw UTF-8 bytes
            # and treat them as ISO-8859-1 codepoints.
            s.dup.force_encoding('ISO-8859-1').encode('UTF-8')
          end
        end
      end
    end
  end
end
