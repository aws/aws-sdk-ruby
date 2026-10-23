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

        it 'minifies the custom policy before signing' do
          policy = {
            'Statement' => [
              'Resource' => 'images/image.jpg',
              'Condition' => { 'DateLessThan' => { 'AWS:EpochTime' => expires } }
            ]
          }
          url = 'http://abc.cloudfront.net/images/image.jpg'
          expect(signer.signed_url(url, policy: JSON.pretty_generate(policy))).to eq(signer.signed_url(url, policy: policy.to_json))
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

      # test vectors from the CloudFront URL and Cookie Signer SEP
      describe 'SEP test cases' do
        let(:key_dir) { File.dirname(__FILE__) }
        let(:expires) { 1_767_290_400 }
        let(:active) { 1_767_200_000 }

        def rsa_signer(hash_algorithm = nil)
          UrlSigner.new(key_pair_id: 'K1TESTKEY', private_key_path: "#{key_dir}/sep_rsa_key", hash_algorithm: hash_algorithm)
        end

        def query_params(url)
          URI.decode_www_form(URI(url).query).to_h
        end

        def cloudfront_base64_decode(str)
          Base64.decode64(str.tr('-_~', '+=/'))
        end

        def canned_policy(resource)
          %({"Statement":[{"Resource":"#{resource}","Condition":{"DateLessThan":{"AWS:EpochTime":#{expires}}}}]})
        end

        it 'canned-policy-url-basic' do
          url = rsa_signer.signed_url('https://d111111abcdef8.cloudfront.net/image.jpg', expires: expires)
          expect(url).to start_with('https://d111111abcdef8.cloudfront.net/image.jpg?')
          expect(query_params(url)).to eq(
            'Expires' => '1767290400',
            'Signature' => 'iONoMLnhiCy9q1~WB9GkR2DiHz18I85i3o6kZ64REf-fCSOg-AyXEZiq7fJuS~DT-kbZXjVpgIQqI4sCTcBW9XpO6dyJ5sh8Igk3V~OVncS9acGVnI~ZhHBWiGhU8GmkEMAhn6R2RGO-wKGClrXdJGEUE26XoALdHUzHbmU6AGI_',
            'Key-Pair-Id' => 'K1TESTKEY'
          )
        end

        it 'canned-policy-url-basic-sha256' do
          url = rsa_signer('SHA256').signed_url('https://d111111abcdef8.cloudfront.net/image.jpg', expires: expires)
          expect(query_params(url)).to eq(
            'Expires' => '1767290400',
            'Signature' => 'LiC~LakvNvZtR~AsTcirQ0CAsy-YIZmpHmI9uImK4xJmrhVdJULhWmRt3bXO7qqw2gJDECZN-xC~bKWEKcJ9Vgs1IgpRdMkY6XGDKZ1XHBdNbd~0v5UiRf4zXwVMRqoynkQPQcihkze7RkDBsOoYHh9jDdtO1iDm0QZ1Qp~cxro_',
            'Key-Pair-Id' => 'K1TESTKEY',
            'Hash-Algorithm' => 'SHA256'
          )
        end

        it 'canned-policy-url-existing-params' do
          url = rsa_signer.signed_url('https://d111111abcdef8.cloudfront.net/image.jpg?size=large', expires: expires)
          expect(query_params(url)).to eq(
            'size' => 'large',
            'Expires' => '1767290400',
            'Signature' => 'kx5dxV5cSW50EuCMtYi9JI0D5H97if~zNqwKxZtS7FPc3NV5oi~zCb45ti8ve-YDYw45hzN4lceF6zhW~STVWa7r7fC9wi5XBG1T6ZT2b9R0wMWmGxsy9uVGXFn6JqcjQMsq09MnWrPezK0qFQ2X6pV1nGQqLQZ2sgO~FSlEoCo_',
            'Key-Pair-Id' => 'K1TESTKEY'
          )
        end

        it 'canned-policy-url-existing-params-sha256' do
          url = rsa_signer('SHA256').signed_url('https://d111111abcdef8.cloudfront.net/image.jpg?size=large', expires: expires)
          expect(query_params(url)).to eq(
            'size' => 'large',
            'Expires' => '1767290400',
            'Signature' => 'g8vzqbTu5PxBzAXD3zowGFNHNlyaGZn7thMiCk27sTfvdy5CMAbECVz-aucgqrKYmqsz1xY7ZoxoMxOizzXWzfzTyJ6k38YwW6QMyJWT7B8pHStQrq0DGFSCnXqgRDXUDzkpIe8mHqyRWtgnFbdFQlbPweykfl7Eo4RJadveryQ_',
            'Key-Pair-Id' => 'K1TESTKEY',
            'Hash-Algorithm' => 'SHA256'
          )
        end

        it 'custom-policy-url-with-active-date' do
          policy = %({"Statement":[{"Resource":"https://d111111abcdef8.cloudfront.net/video.mp4","Condition":{"DateLessThan":{"AWS:EpochTime":#{expires}},"DateGreaterThan":{"AWS:EpochTime":#{active}}}}]})
          url = rsa_signer.signed_url('https://d111111abcdef8.cloudfront.net/video.mp4', policy: policy)
          params = query_params(url)
          expect(params.keys).to eq(%w[Policy Signature Key-Pair-Id])
          expect(params['Signature']).to eq('aF0WSOV6dkNn-D0HJ~-EwLG69-4QZZ9dv1PgAZEsER~WXkaNa1pBM2aTVXrskBWVHUU6hc1nD6ZKYgBS5Sb9JluFVT0MbQWR~DrtUGu8ugCsnfzUe6ov38nFPBwQICY~jnoQZEXxO2ZkQrluOO4~jWOpqAGrCw5tkdHAnb9gHYQ_')
        end

        it 'custom-policy-url-with-active-date-sha256' do
          policy = %({"Statement":[{"Resource":"https://d111111abcdef8.cloudfront.net/video.mp4","Condition":{"DateLessThan":{"AWS:EpochTime":#{expires}},"DateGreaterThan":{"AWS:EpochTime":#{active}}}}]})
          url = rsa_signer('SHA256').signed_url('https://d111111abcdef8.cloudfront.net/video.mp4', policy: policy)
          params = query_params(url)
          expect(params.keys).to eq(%w[Policy Signature Key-Pair-Id Hash-Algorithm])
          expect(params['Signature']).to eq('RKoXpBb3IFyONXBnGGPj6021LmYyaphTYom0DsDID20xlCaK8gvNpcbYw493LloPhtDdGTdyadyuR59ok8eSPpJReRGbHbw8FDjGSXE9JWsVayzI7t7ZPGfPtKgK~ij0AekXDNQNFNUdwuSE0aR5nQmuPhw7CfDHCMpTWmoKPgE_')
          expect(params['Hash-Algorithm']).to eq('SHA256')
        end

        it 'custom-policy-url-with-ip-range' do
          policy = %({"Statement":[{"Resource":"https://d111111abcdef8.cloudfront.net/document.pdf","Condition":{"DateLessThan":{"AWS:EpochTime":#{expires}},"IpAddress":{"AWS:SourceIp":"192.168.0.0/24"}}}]})
          url = rsa_signer.signed_url('https://d111111abcdef8.cloudfront.net/document.pdf', policy: policy)
          expect(query_params(url)['Signature']).to eq('fq~vePR~kmc5kWDveZOJ3j6PSYRsHSSanN1shBBpj2rQwvVQPU8e9MRwUDizOYHLnuAXQG89Xm7kXL03HIX0uzELcY2Q6Bw68BcGQHq-nyC2U6h0Uv277pg~FIwatR84y1FZiswIVmZwfPmpkvR0X~1skuooCPGiztAXREe-hsg_')
        end

        it 'custom-policy-url-with-ip-range-sha256' do
          policy = %({"Statement":[{"Resource":"https://d111111abcdef8.cloudfront.net/document.pdf","Condition":{"DateLessThan":{"AWS:EpochTime":#{expires}},"IpAddress":{"AWS:SourceIp":"192.168.0.0/24"}}}]})
          url = rsa_signer('SHA256').signed_url('https://d111111abcdef8.cloudfront.net/document.pdf', policy: policy)
          expect(query_params(url)['Signature']).to eq('aKDzeIIfHviQRbCu9jxlFpOenTNQHMnt8HL2V2cqYP0vqc-KpRBuez2k4LZAzmfH0sIiQuDMZZc1D149XYRVAjEZoqr3vzGzWmrpzZJV-CSHs-Scau1cCNdVXqswj~QX8SzOZtGsRSKb4bomqOWxSIUu~Sybjf5b12GXBcYRCH4_')
        end

        it 'custom-policy-url-with-wildcard' do
          policy = canned_policy('https://d111111abcdef8.cloudfront.net/images/*')
          url = rsa_signer.signed_url('https://d111111abcdef8.cloudfront.net/images/photo.jpg', policy: policy)
          expect(url).to start_with('https://d111111abcdef8.cloudfront.net/images/photo.jpg?Policy=')
          expect(query_params(url)['Signature']).to eq('nP~GtuBVUSEUDMXW1ZTGTx~BUQfjl7FsWBQBKwnTNhHlBAeYlzdbMGMphViPQbjawdYt1Z~iBHDr0ctooQyhEdsXwZPQKmRJQm3yIxmbvnuCzB2qdMDVGRKH8l3PnfAJErrgUVIzb6m3KUdtIDvSkLV~Mb0tyQJwZ6QE4BdlEmQ_')
        end

        it 'custom-policy-url-with-wildcard-sha256' do
          policy = canned_policy('https://d111111abcdef8.cloudfront.net/images/*')
          url = rsa_signer('SHA256').signed_url('https://d111111abcdef8.cloudfront.net/images/photo.jpg', policy: policy)
          expect(query_params(url)['Signature']).to eq('FoaoRDqA7H91xD8CL2zk2Ztm6WVx3kIunCdqvzwMCUdsduwVWEH8elbBZc2qqWy3ZixDBBEHegeJnZbgp~nHTsYtr~jv6R-8~BnmmvH3KNyjH7wgyKKtzKpteNXYacWgHYabkoreyHC4ek~JMjGo1o0gTiIeL8YCV3ueKK3Lqtk_')
        end

        it 'ecdsa-canned-policy-url-sha256' do
          signer = UrlSigner.new(key_pair_id: 'K2ECDSATEST', private_key_path: "#{key_dir}/sep_ecdsa_key", hash_algorithm: 'SHA256')
          url = signer.signed_url('https://d111111abcdef8.cloudfront.net/video.mp4', expires: expires)
          params = query_params(url)
          expect(params.keys).to eq(%w[Expires Signature Key-Pair-Id Hash-Algorithm])
          expect(params['Hash-Algorithm']).to eq('SHA256')

          public_key = OpenSSL::PKey.read(File.read("#{key_dir}/sep_ecdsa_public_key"))
          signature = cloudfront_base64_decode(params['Signature'])
          policy = canned_policy('https://d111111abcdef8.cloudfront.net/video.mp4')
          expect(public_key.verify(OpenSSL::Digest.new('SHA256'), signature, policy)).to be(true)
        end

        it 'ecdsa-canned-policy-url-sha1-accept' do
          signer = UrlSigner.new(key_pair_id: 'K2ECDSATEST', private_key_path: "#{key_dir}/sep_ecdsa_key")
          url = signer.signed_url('https://d111111abcdef8.cloudfront.net/video.mp4', expires: expires)
          params = query_params(url)
          expect(params.keys).to eq(%w[Expires Signature Key-Pair-Id])

          public_key = OpenSSL::PKey.read(File.read("#{key_dir}/sep_ecdsa_public_key"))
          signature = cloudfront_base64_decode(params['Signature'])
          policy = canned_policy('https://d111111abcdef8.cloudfront.net/video.mp4')
          expect(public_key.verify(OpenSSL::Digest.new('SHA1'), signature, policy)).to be(true)
        end
      end
    end
  end
end
