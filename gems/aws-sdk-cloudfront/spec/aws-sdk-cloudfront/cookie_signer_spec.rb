# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module CloudFront
    describe CookieSigner do
      describe '#initialize' do
        it 'accepts RSA private key' do
          expect do
            CookieSigner.new(
              key_pair_id: 'CF_KEYPAIR_ID',
              private_key: OpenSSL::PKey::RSA.new(1024).to_pem
            )
          end.to_not raise_error
        end

        it 'accepts RSA private key path' do
          expect do
            CookieSigner.new(
              key_pair_id: 'CF_KEYPAIR_ID',
              private_key_path: "#{File.dirname(__FILE__)}/rsa_dummy_key"
            )
          end.to_not raise_error
        end

        it 'accepts ECDSA private key' do
          expect do
            CookieSigner.new(
              key_pair_id: 'CF_KEYPAIR_ID',
              private_key: OpenSSL::PKey::EC.generate('prime256v1').to_pem
            )
          end.to_not raise_error
        end

        it 'accepts ECDSA private key path' do
          expect do
            CookieSigner.new(
              key_pair_id: 'CF_KEYPAIR_ID',
              private_key_path: "#{File.dirname(__FILE__)}/ecdsa_dummy_key"
            )
          end.to_not raise_error
        end

        it 'raises when private_key or private_key_path is blank' do
          expect do
            CookieSigner.new(key_pair_id: 'CF_KEYPAIR_ID')
          end.to raise_error(ArgumentError, /:private_key or :private_key_path should be provided/)
        end

        it 'raises when key_pair_id is blank' do
          expect do
            CookieSigner.new(private_key: OpenSSL::PKey::RSA.new(1024).to_pem)
          end.to raise_error(ArgumentError, /:key_pair_id must not be blank/)
        end
      end

      describe '#signed_cookie' do
        let(:signer) do
          CookieSigner.new(
            key_pair_id: 'CF_KEYPAIR_ID',
            private_key_path: "#{File.dirname(__FILE__)}/rsa_dummy_key"
          )
        end
        let(:policy) do
          {
            'Statement' => [
              {
                'Resource' => 'images/image.jpg',
                'Condition' => {
                  'IpAddress' => { 'AWS:SourceIp' => '10.52.176.0/24' },
                  'DateLessThan' => { 'AWS:EpochTime' => expires }
                }
              }
            ]
          }
        end
        let(:expires) { 1_357_034_400 } # January 1, 2013 10:00 am UTC (Unix timestamp)

        it 'raises an error if the url is invalid' do
          expect do
            signer.signed_cookie('what_ever_illegal/url', expires: expires)
          end.to raise_error(ArgumentError, /Invalid URL/)
        end

        it 'raises if neither policy nor expires is provided' do
          expect do
            signer.signed_cookie('http://abc.cloudfront.net/images/image.jpg')
          end.to raise_error(ArgumentError, /Either a policy or a resource with an expiration time must be provided/)
        end

        it 'generates signed urls with a custom policy' do
          cookie = signer.signed_cookie(nil, policy: policy.to_json)
          expected_policy = 'eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaW1hZ2VzL2ltYWdlLmpwZyIsIkNvbmRpdG' \
                            'lvbiI6eyJJcEFkZHJlc3MiOnsiQVdTOlNvdXJjZUlwIjoiMTAuNTIuMTc2LjAvMjQifSwi' \
                            'RGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjEzNTcwMzQ0MDB9fX1dfQ__'
          expect(cookie['CloudFront-Policy']).to eq(expected_policy)
          expected_signature = 'n4V7xum3wA-w1PaCMyEMpWVXdfw-Yt8I26RpZJKc~Nk8yQh8LYOxewItGJXFq0BxnKu' \
                               'SEKoEVYVTFEteFAGKXwhkbC7K~JfL83aroPbRagjyG-V9Y5wMLccBAzMj5nHXxjvjlO' \
                               'u541VUR-RlR0KK106HT4-Hp1c~nyOmXs4R5mU_'
          expect(cookie['CloudFront-Signature']).to eq(expected_signature)
          expect(cookie['CloudFront-Key-Pair-Id']).to eq('CF_KEYPAIR_ID')
        end

        it 'ignores passed in urls when using the custom policy' do
          cookie = signer.signed_cookie('http://abc.cloudfront.net/images/image.jpg', policy: policy.to_json)
          expected_policy = 'eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaW1hZ2VzL2ltYWdlLmpwZyIsIkNvbmRpdG' \
                            'lvbiI6eyJJcEFkZHJlc3MiOnsiQVdTOlNvdXJjZUlwIjoiMTAuNTIuMTc2LjAvMjQifSwi' \
                            'RGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjEzNTcwMzQ0MDB9fX1dfQ__'
          expect(cookie['CloudFront-Policy']).to eq(expected_policy)
          expected_signature = 'n4V7xum3wA-w1PaCMyEMpWVXdfw-Yt8I26RpZJKc~Nk8yQh8LYOxewItGJXFq0BxnKu' \
                               'SEKoEVYVTFEteFAGKXwhkbC7K~JfL83aroPbRagjyG-V9Y5wMLccBAzMj5nHXxjvjlO' \
                               'u541VUR-RlR0KK106HT4-Hp1c~nyOmXs4R5mU_'
          expect(cookie['CloudFront-Signature']).to eq(expected_signature)
          expect(cookie['CloudFront-Key-Pair-Id']).to eq('CF_KEYPAIR_ID')
        end

        it 'generates signed cookies with the canned policy' do
          cookie = signer.signed_cookie('https://abc.cloudfront.net/images/image.jpg?color=red', expires: expires)
          expect(cookie['CloudFront-Expires']).to eq('1357034400')
          expected_signature = 'GvrDx3aAG1u1sAQF68c~xD6LVORt36mRTvC2u5RwLjsvusXI0sJPxy3D0R8AQp4qFZlReh' \
                               'wh~mablw8DBNRFLQ81mazmbrUOhXbuepav5ZmCU-KgOmXtpMS49L7TLGUSfwSksDx1qriAtB4m' \
                               'S4iJaNt2mfo0C5G-vlt9qMftkJg_'
          expect(cookie['CloudFront-Signature']).to eq(expected_signature)
          expect(cookie['CloudFront-Key-Pair-Id']).to eq('CF_KEYPAIR_ID')
        end
      end
    end
  end
end
