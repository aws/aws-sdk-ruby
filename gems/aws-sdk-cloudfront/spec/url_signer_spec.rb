# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module CloudFront
    describe UrlSigner do
      let(:signer) do
        UrlSigner.new(
          key_pair_id: 'CF_KEYPAIR_ID',
          private_key_path: "#{File.dirname(__FILE__)}/rsa_dummy_key"
        )
      end
      let(:expires) { 1_357_034_400 } # January 1, 2013 10:00 am UTC (Unix timestamp)

      describe '#initialize' do
        it 'accepts RSA private key' do
          expect do
            UrlSigner.new(key_pair_id: 'CF_KEYPAIR_ID', private_key: OpenSSL::PKey::RSA.new(1024).to_pem)
          end.to_not raise_error
        end

        it 'accepts ECDSA private key' do
          expect do
            UrlSigner.new(key_pair_id: 'CF_KEYPAIR_ID', private_key_path: "#{File.dirname(__FILE__)}/ecdsa_dummy_key")
          end.to_not raise_error
        end

        it 'accepts private key path' do
          expect do
            UrlSigner.new(key_pair_id: 'CF_KEYPAIR_ID', private_key_path: "#{File.dirname(__FILE__)}/rsa_dummy_key")
          end.to_not raise_error
        end

        it 'raises when private key or private key path is blank' do
          expect do
            UrlSigner.new(key_pair_id: 'CF_KEYPAIR_ID')
          end.to raise_error(ArgumentError, /:private_key or :private_key_path should be provided/)
        end

        it 'raises when key pair id is blank' do
          expect do
            UrlSigner.new(private_key: OpenSSL::PKey::RSA.new(1024).to_pem)
          end.to raise_error(ArgumentError, /:key_pair_id must not be blank/)
        end
      end

      describe '#signed_url' do
        it 'raises error if url is invalid' do
          expect { signer.signed_url('what_ever_illegal/url') }.to raise_error(ArgumentError)
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
          url = signer.signed_url('http://abc.cloudfront.net/images/image.jpg', policy: policy.to_json)
          expected_url = 'http://abc.cloudfront.net/images/image.jpg?'\
                         'Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaW1hZ2VzL2l'\
                         'tYWdlLmpwZyIsIkNvbmRpdGlvbiI6eyJJcEFkZHJlc3MiOnsiQVdTO'\
                         'lNvdXJjZUlwIjoiMTAuNTIuMTc2LjAvMjQifSwiRGF0ZUxlc3NUaGF'\
                         'uIjp7IkFXUzpFcG9jaFRpbWUiOjEzNTcwMzQ0MDB9fX1dfQ__'\
                         '&Signature=n4V7xum3wA-w1PaCMyEMpWVXdfw-Yt8I26RpZJKc~Nk'\
                         '8yQh8LYOxewItGJXFq0BxnKuSEKoEVYVTFEteFAGKXwhkbC7K~JfL8'\
                         '3aroPbRagjyG-V9Y5wMLccBAzMj5nHXxjvjlOu541VUR-RlR0KK106'\
                         'HT4-Hp1c~nyOmXs4R5mU_&Key-Pair-Id=CF_KEYPAIR_ID'
          expect(url).to eq(expected_url)
        end

        it 'can generate signed urls with canned policy' do
          url = signer.signed_url('https://abc.cloudfront.net/images/image.jpg?color=red', expires: expires)
          expected_url = 'https://abc.cloudfront.net/images/image.jpg?'\
                         'color=red&Expires=1357034400&Signature=GvrDx3aAG1u1sAQF'\
                         '68c~xD6LVORt36mRTvC2u5RwLjsvusXI0sJPxy3D0R8AQp4qFZlRehw'\
                         'h~mablw8DBNRFLQ81mazmbrUOhXbuepav5ZmCU-KgOmXtpMS49L7TLG'\
                         'USfwSksDx1qriAtB4mS4iJaNt2mfo0C5G-vlt9qMftkJg_'\
                         '&Key-Pair-Id=CF_KEYPAIR_ID'
          expect(url).to eq(expected_url)
        end
        it 'can generate signed rtmp urls' do
          url = signer.signed_url('rtmp://example-distribution.cloudfront.net/videos/example.mp4', expires: expires)
          expected_url = 'videos/example.mp4?Expires=1357034400'\
                         '&Signature=TMXSGAw6x4fJsUfmBzJGbR2HYPduVFTPtqmoVQeZOEO'\
                         'Bs1NbQ6sARJoIMb9ot4CYyY95nNy8pzuuOkOm4DTsbda30a-8BrKx7'\
                         'loGHRb1AZztMkC1u-joz-3B9EgBRH6t6qpAFKtWoZI42F5LSacCb6O'\
                         'cTVsiWVeKyCGT~8i81-4_&Key-Pair-Id=CF_KEYPAIR_ID'
          expect(url).to eq(expected_url)
        end

        it 'can handle urls with url-like paths' do
          url = signer.signed_url('https://abc.cloudfront.net/images/from/s3://bucket/file.jpg', expires: expires)
          expected_url = 'https://abc.cloudfront.net/images/from/s3://bucket/file.jpg?'\
                         'Expires=1357034400&Signature=Xk0prcC1fjhyROJOIr~x0KUuc-wEOQ~'\
                         'v0zHwQ1GjPZH2rJPDIbjwNcvK8NIwyuQSk4PxmpaI1oVV8t62tuMPiQ8NuP2'\
                         'LM6y-XWFPUkegRVVRC~~HKxvPUghef4iWS~zwIbn4bDpXjqjtA9nnyIlasau'\
                         'Qypl7Zqm94g48YKTL2U0_&Key-Pair-Id=CF_KEYPAIR_ID'
          expect(url).to eq(expected_url)
        end
      end
    end
  end
end
