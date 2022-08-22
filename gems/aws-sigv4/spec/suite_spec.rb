# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module Sigv4
    describe Signer do
      describe 'suite' do
        Dir.glob(File.expand_path('../suite/**', __FILE__)).each do |path|

          prefix = File.join(path, File.basename(path))
          next unless File.exist?("#{prefix}.req")

          describe(File.basename(prefix)) do

            let(:signer) {
              Signer.new({
                service: 'service',
                region: 'us-east-1',
                credentials: Credentials.new(
                  access_key_id: 'AKIDEXAMPLE',
                  secret_access_key: 'wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY',
                ),
                # necessary to pass the test suite
                uri_escape_path: false,
                apply_checksum_header: false,
              })
            }

            let(:request) {
              raw_request = File.read("#{prefix}.req", encoding: "utf-8")
              request = SpecHelper.parse_request(raw_request)
              SpecHelper.debug("GIVEN REQUEST: |#{raw_request}|")
              SpecHelper.debug("PARSED REQUEST: #{request.inspect}")
              request
            }

            it 'computes the canonical request' do # creq
              skip("CRT Signer does not provide canonical request") if Signer.use_crt?
              signature = signer.sign_request(request)
              computed = signature.canonical_request
              expected = File.read("#{prefix}.creq", encoding: "utf-8")
              SpecHelper.debug("EXPECTED CANONICAL_REQUEST: |#{expected}|")
              SpecHelper.debug("COMPUTED CANONICAL_REQUEST: |#{computed}|")
              expect(computed).to eq(expected)
            end

            it 'computes the string to sign' do # sts
              skip("CRT Signer does not provide string to sign") if Signer.use_crt?

              signature = signer.sign_request(request)
              computed = signature.string_to_sign
              expected = File.read("#{prefix}.sts", encoding: "utf-8")
              SpecHelper.debug("EXPECTED STRING_TO_SIGN: |#{expected}|")
              SpecHelper.debug("COMPUTED STRING_TO_SIGN: |#{computed}|")
              expect(computed).to eq(expected)
            end

            it 'computes the authorization header' do # authz
              signature = signer.sign_request(request)
              computed = signature.headers['authorization']
              expected = File.read("#{prefix}.authz", encoding: "utf-8")
              SpecHelper.debug("EXPECTED AUTHORIZATION: |#{expected}|")
              SpecHelper.debug("COMPUTED AUTHORIZATION: |#{computed}|")
              expect(computed).to eq(expected)
            end

          end
        end
      end
    end
  end
end
