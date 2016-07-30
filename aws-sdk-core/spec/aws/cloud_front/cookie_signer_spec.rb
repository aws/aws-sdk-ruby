require 'spec_helper'

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
          expect(cookie.keys).to match_array(["CloudFront-Policy", "CloudFront-Signature", "CloudFront-Key-Pair-Id"])
        end
        it 'can generate signed cookies with canned policy' do
          cookie = signer.signed_cookie(
            "https://abc.cloudfront.net/images/image.jpg?color=red",
            expires: expires
          )
          expect(cookie.keys).to match_array(["CloudFront-Expires", "CloudFront-Signature", "CloudFront-Key-Pair-Id"])
        end
      end
    end
  end
end
