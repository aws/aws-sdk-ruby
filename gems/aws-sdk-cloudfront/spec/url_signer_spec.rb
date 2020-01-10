require_relative 'spec_helper'

module Aws
  module CloudFront
    describe UrlSigner do

      let(:options) {
        {
          :key_pair_id => "CF_KEYPAIR_ID",
          :private_key_path =>"#{File.dirname(__FILE__)}/cf_private_key.pem"
        }
      }
      let(:signer) { Aws::CloudFront::UrlSigner.new(options) }
      let(:expires) { 1357034400 } # January 1, 2013 10:00 am UTC (Unix timestamp)

      describe '#initialize' do
        it 'requires key pair id' do
          expect {
            Aws::CloudFront::UrlSigner.new(
              :private_key_path =>"#{File.dirname(__FILE__)}/cf_private_key.pem"
            )
          }.to raise_error(ArgumentError)
        end
        it 'requires either private key or its path' do
          expect {
            Aws::CloudFront::UrlSigner.new(
              :key_pair_id => "CF_KEYPAIR_ID"
            )
          }.to raise_error(ArgumentError)
        end
      end

      describe '#signed_url' do
        it 'raises error if url is invaild' do
          expect {
            signer.signed_url("what_ever_ilegal/url")
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
          url = signer.signed_url(
            "http://abc.cloudfront.net/images/image.jpg",
            :policy => policy.to_json
          )
          expected_url = "http://abc.cloudfront.net/images/image.jpg?"\
            "Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaW1hZ2VzL2l"\
            "tYWdlLmpwZyIsIkNvbmRpdGlvbiI6eyJJcEFkZHJlc3MiOnsiQVdTO"\
            "lNvdXJjZUlwIjoiMTAuNTIuMTc2LjAvMjQifSwiRGF0ZUxlc3NUaGF"\
            "uIjp7IkFXUzpFcG9jaFRpbWUiOjEzNTcwMzQ0MDB9fX1dfQ__"\
            "&Signature=n4V7xum3wA-w1PaCMyEMpWVXdfw-Yt8I26RpZJKc~Nk"\
            "8yQh8LYOxewItGJXFq0BxnKuSEKoEVYVTFEteFAGKXwhkbC7K~JfL8"\
            "3aroPbRagjyG-V9Y5wMLccBAzMj5nHXxjvjlOu541VUR-RlR0KK106"\
            "HT4-Hp1c~nyOmXs4R5mU_&Key-Pair-Id=CF_KEYPAIR_ID"
            expect(url).to eq(expected_url)
        end
        it 'can generate signed urls with canned policy' do
          url = signer.signed_url(
            "https://abc.cloudfront.net/images/image.jpg?color=red",
            :expires => expires
          )
          expected_url = "https://abc.cloudfront.net/images/image.jpg?"\
            "color=red&Expires=1357034400&Signature=GvrDx3aAG1u1sAQF"\
            "68c~xD6LVORt36mRTvC2u5RwLjsvusXI0sJPxy3D0R8AQp4qFZlRehw"\
            "h~mablw8DBNRFLQ81mazmbrUOhXbuepav5ZmCU-KgOmXtpMS49L7TLG"\
            "USfwSksDx1qriAtB4mS4iJaNt2mfo0C5G-vlt9qMftkJg_"\
            "&Key-Pair-Id=CF_KEYPAIR_ID"
            expect(url).to eq(expected_url)
        end
        it 'can generate signed rtmp urls' do
          url = signer.signed_url(
            "rtmp://example-distribution.cloudfront.net/videos/example.mp4",
            :expires => expires
          )
          expected_url = "videos/example.mp4?Expires=1357034400"\
            "&Signature=TMXSGAw6x4fJsUfmBzJGbR2HYPduVFTPtqmoVQeZOEO"\
            "Bs1NbQ6sARJoIMb9ot4CYyY95nNy8pzuuOkOm4DTsbda30a-8BrKx7"\
            "loGHRb1AZztMkC1u-joz-3B9EgBRH6t6qpAFKtWoZI42F5LSacCb6O"\
            "cTVsiWVeKyCGT~8i81-4_&Key-Pair-Id=CF_KEYPAIR_ID"
          expect(url).to eq(expected_url)
        end
      end
    end
  end
end
