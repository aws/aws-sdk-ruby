# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module CloudFront
    describe CookieSigner do
      let(:signer) do
        CookieSigner.new(
          key_pair_id: 'CF_KEYPAIR_ID',
          private_key_path: "#{File.dirname(__FILE__)}/rsa_dummy_key"
        )
      end
      let(:expires) { 1_357_034_400 } # January 1, 2013 10:00 am UTC (Unix timestamp)

      describe '#initialize' do
        it 'accepts RSA private key' do
          expect do
            CookieSigner.new(key_pair_id: 'CF_KEYPAIR_ID', private_key: OpenSSL::PKey::RSA.new(1024).to_pem)
          end.to_not raise_error
        end

        it 'accepts ECDSA private key' do
          expect do
            CookieSigner.new(
              key_pair_id: 'CF_KEYPAIR_ID',
              private_key_path: "#{File.dirname(__FILE__)}/ecdsa_dummy_key"
            )
          end.to_not raise_error
        end

        it 'accepts private key path' do
          expect do
            CookieSigner.new(key_pair_id: 'CF_KEYPAIR_ID', private_key_path: "#{File.dirname(__FILE__)}/rsa_dummy_key")
          end.to_not raise_error
        end

        it 'raises when private key or private key path is blank' do
          expect do
            CookieSigner.new(key_pair_id: 'CF_KEYPAIR_ID')
          end.to raise_error(ArgumentError, /:private_key or :private_key_path should be provided/)
        end

        it 'raises when key pair id is blank' do
          expect do
            CookieSigner.new(private_key: OpenSSL::PKey::RSA.new(1024).to_pem)
          end.to raise_error(ArgumentError, /:key_pair_id must not be blank/)
        end
      end

      describe '#signed_cookie' do
        it 'raises error if url is invalid' do
          expect { signer.signed_cookie('what_ever_illegal/url') }.to raise_error(ArgumentError)
        end

        it 'can generate signed urls with custom policy' do
          policy = {
            'Statement' => [
              'Resource' => 'images/image.jpg',
              'Condition' => {
                'IpAddress' => { 'AWS:SourceIp' => '10.52.176.0/24' },
                'DateLessThan' => { 'AWS:EpochTime' => expires }
              }
            ]
          }
          cookie = signer.signed_cookie('http://abc.cloudfront.net/images/image.jpg', policy: policy.to_json)
          expect(cookie['CloudFront-Policy']).to eq('eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaW1hZ2VzL2ltYWdlLmpwZyIsIkNvbmRpdGlvbiI6eyJJcEFkZHJlc3MiOnsiQVdTOlNvdXJjZUlwIjoiMTAuNTIuMTc2LjAvMjQifSwiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjEzNTcwMzQ0MDB9fX1dfQ__')
          expect(cookie['CloudFront-Signature']).to eq('n4V7xum3wA-w1PaCMyEMpWVXdfw-Yt8I26RpZJKc~Nk8yQh8LYOxewItGJXFq0BxnKuSEKoEVYVTFEteFAGKXwhkbC7K~JfL83aroPbRagjyG-V9Y5wMLccBAzMj5nHXxjvjlOu541VUR-RlR0KK106HT4-Hp1c~nyOmXs4R5mU_')
          expect(cookie['CloudFront-Key-Pair-Id']).to eq('CF_KEYPAIR_ID')
        end

        it 'can generate signed urls with custom policy without passing a url' do
          policy = {
            'Statement' => [
              'Resource' => 'images/image.jpg',
              'Condition' => {
                'IpAddress' => { 'AWS:SourceIp' => '10.52.176.0/24' },
                'DateLessThan' => { 'AWS:EpochTime' => expires }
              }
            ]
          }
          cookie = signer.signed_cookie(nil, policy: policy.to_json)
          expect(cookie['CloudFront-Policy']).to eq('eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaW1hZ2VzL2ltYWdlLmpwZyIsIkNvbmRpdGlvbiI6eyJJcEFkZHJlc3MiOnsiQVdTOlNvdXJjZUlwIjoiMTAuNTIuMTc2LjAvMjQifSwiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjEzNTcwMzQ0MDB9fX1dfQ__')
          expect(cookie['CloudFront-Signature']).to eq('n4V7xum3wA-w1PaCMyEMpWVXdfw-Yt8I26RpZJKc~Nk8yQh8LYOxewItGJXFq0BxnKuSEKoEVYVTFEteFAGKXwhkbC7K~JfL83aroPbRagjyG-V9Y5wMLccBAzMj5nHXxjvjlOu541VUR-RlR0KK106HT4-Hp1c~nyOmXs4R5mU_')
          expect(cookie['CloudFront-Key-Pair-Id']).to eq('CF_KEYPAIR_ID')
        end

        it 'can generate signed cookies with canned policy' do
          cookie = signer.signed_cookie('https://abc.cloudfront.net/images/image.jpg?color=red', expires: expires)
          expect(cookie['CloudFront-Expires']).to eq('1357034400')
          expect(cookie['CloudFront-Signature']).to eq('GvrDx3aAG1u1sAQF68c~xD6LVORt36mRTvC2u5RwLjsvusXI0sJPxy3D0R8AQp4qFZlRehwh~mablw8DBNRFLQ81mazmbrUOhXbuepav5ZmCU-KgOmXtpMS49L7TLGUSfwSksDx1qriAtB4mS4iJaNt2mfo0C5G-vlt9qMftkJg_')
          expect(cookie['CloudFront-Key-Pair-Id']).to eq('CF_KEYPAIR_ID')
        end
      end
    end
  end
end
