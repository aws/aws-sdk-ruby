# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Checksums
      describe 'algorithm metadata' do
        known_vectors = {
          'CRC32' => 'i9aeUg==',
          'SHA1' => 'e1AsOh9IyGCa4hLN+2Od7jlnP14=',
          'SHA256' => 'ZOyIygCyaOW6GjVnihtTFtIS9PNmskdyMlNKiuyjfzw=',
          'SHA512' =>
            't/eDuu2Cl/DbkXRiGE/08I5pwtXl95qUJgD5cl9Yzh8pwYE5v4CwbA//K900c4RS' \
            '7PQMSIwip+PYDN9vnBwNRw=='
        }.freeze

        known_vectors.each do |algorithm, expected|
          it "provides consistent #{algorithm} metadata" do
            digest = Checksums.digest_for(algorithm)
            digest.update('Hello world')

            expect(digest.base64digest).to eq(expected)
            expect(Checksums.base64_length(algorithm)).to eq(expected.length)
            expect(Checksums.header_name(algorithm))
              .to eq("x-amz-checksum-#{algorithm.downcase}")
          end
        end

        it 'derives the supported algorithms from the registry' do
          expect(Checksums::SUPPORTED_ALGORITHMS).to eq(known_vectors.keys)
        end

        it 'reuses cached header names for normalized algorithms' do
          header_name = Checksums.header_name('SHA256')

          expect(Checksums.header_name('SHA256')).to be(header_name)
          expect(Checksums.header_name(:sha256)).to be(header_name)
        end
      end
    end
  end
end
