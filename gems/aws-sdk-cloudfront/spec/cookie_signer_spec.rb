# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module CloudFront
    describe CookieSigner do

      let(:options) {
        {
          :key_pair_id => "CF_KEYPAIR_ID",
          :private_key_path =>"#{File.dirname(__FILE__)}/cf_private_key.pem"
        }
      }
      let(:signer) { Aws::CloudFront::CookieSigner.new(options) }
      let(:expires) { 1357034400 } # January 1, 2013 10:00 am UTC (Unix timestamp)

      describe '#signed_cookie' do
        it 'raises error if url is invaild' do
          expect {
            signer.signed_cookie("what_ever_ilegal/url")
          }.to raise_error(ArgumentError)
        end

        it 'can generate signed urls with custom policy' do
          policy =  {
            'Statement' => [
              'Resource' => 'images/image.jpg',
                'Condition' => {
                'IpAddress' => {'AWS:SourceIp' => '10.52.176.0/24'},
                'DateLessThan' => {'AWS:EpochTime' => expires}
                }
              ]
          }
          cookie = signer.signed_cookie(
            "http://abc.cloudfront.net/images/image.jpg",
            policy: policy.to_json
          )
          expect(cookie['CloudFront-Policy']).to eq('eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaW1hZ2VzL2ltYWdlLmpwZyIsIkNvbmRpdGlvbiI6eyJJcEFkZHJlc3MiOnsiQVdTOlNvdXJjZUlwIjoiMTAuNTIuMTc2LjAvMjQifSwiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjEzNTcwMzQ0MDB9fX1dfQ__')
          expect(cookie['CloudFront-Signature']).to eq('n4V7xum3wA-w1PaCMyEMpWVXdfw-Yt8I26RpZJKc~Nk8yQh8LYOxewItGJXFq0BxnKuSEKoEVYVTFEteFAGKXwhkbC7K~JfL83aroPbRagjyG-V9Y5wMLccBAzMj5nHXxjvjlOu541VUR-RlR0KK106HT4-Hp1c~nyOmXs4R5mU_')
          expect(cookie['CloudFront-Key-Pair-Id']).to eq('CF_KEYPAIR_ID')
        end

        it 'can generate signed urls with custom policy without passing a url' do
          policy =  {
            'Statement' => [
              'Resource' => 'images/image.jpg',
                'Condition' => {
                'IpAddress' => {'AWS:SourceIp' => '10.52.176.0/24'},
                'DateLessThan' => {'AWS:EpochTime' => expires}
                }
              ]
          }
          cookie = signer.signed_cookie(nil, policy: policy.to_json)
          expect(cookie['CloudFront-Policy']).to eq('eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaW1hZ2VzL2ltYWdlLmpwZyIsIkNvbmRpdGlvbiI6eyJJcEFkZHJlc3MiOnsiQVdTOlNvdXJjZUlwIjoiMTAuNTIuMTc2LjAvMjQifSwiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjEzNTcwMzQ0MDB9fX1dfQ__')
          expect(cookie['CloudFront-Signature']).to eq('n4V7xum3wA-w1PaCMyEMpWVXdfw-Yt8I26RpZJKc~Nk8yQh8LYOxewItGJXFq0BxnKuSEKoEVYVTFEteFAGKXwhkbC7K~JfL83aroPbRagjyG-V9Y5wMLccBAzMj5nHXxjvjlOu541VUR-RlR0KK106HT4-Hp1c~nyOmXs4R5mU_')
          expect(cookie['CloudFront-Key-Pair-Id']).to eq('CF_KEYPAIR_ID')
        end

        it 'can generate signed cookies with canned policy' do
          cookie = signer.signed_cookie(
            "https://abc.cloudfront.net/images/image.jpg?color=red",
            expires: expires
          )
          expect(cookie['CloudFront-Expires']).to eq('1357034400')
          expect(cookie['CloudFront-Signature']).to eq('GvrDx3aAG1u1sAQF68c~xD6LVORt36mRTvC2u5RwLjsvusXI0sJPxy3D0R8AQp4qFZlRehwh~mablw8DBNRFLQ81mazmbrUOhXbuepav5ZmCU-KgOmXtpMS49L7TLGUSfwSksDx1qriAtB4mS4iJaNt2mfo0C5G-vlt9qMftkJg_')
          expect(cookie['CloudFront-Key-Pair-Id']).to eq('CF_KEYPAIR_ID')
        end
      end
    end
  end
end
