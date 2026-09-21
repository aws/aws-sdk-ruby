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

      # test vectors from the CloudFront URL and Cookie Signer SEP
      describe 'SEP test cases' do
        let(:key_dir) { File.dirname(__FILE__) }
        let(:expires) { 1_767_290_400 }

        def rsa_signer(hash_algorithm = nil)
          CookieSigner.new(key_pair_id: 'K1TESTKEY', private_key_path: "#{key_dir}/sep_rsa_key", hash_algorithm: hash_algorithm)
        end

        it 'canned-policy-cookies' do
          cookies = rsa_signer.signed_cookie('https://d111111abcdef8.cloudfront.net/image.jpg', expires: expires)
          expect(cookies).to eq(
            'CloudFront-Expires' => '1767290400',
            'CloudFront-Signature' => 'iONoMLnhiCy9q1~WB9GkR2DiHz18I85i3o6kZ64REf-fCSOg-AyXEZiq7fJuS~DT-kbZXjVpgIQqI4sCTcBW9XpO6dyJ5sh8Igk3V~OVncS9acGVnI~ZhHBWiGhU8GmkEMAhn6R2RGO-wKGClrXdJGEUE26XoALdHUzHbmU6AGI_',
            'CloudFront-Key-Pair-Id' => 'K1TESTKEY'
          )
        end

        it 'canned-policy-cookies-sha256' do
          cookies = rsa_signer('SHA256').signed_cookie('https://d111111abcdef8.cloudfront.net/image.jpg', expires: expires)
          expect(cookies).to eq(
            'CloudFront-Expires' => '1767290400',
            'CloudFront-Signature' => 'LiC~LakvNvZtR~AsTcirQ0CAsy-YIZmpHmI9uImK4xJmrhVdJULhWmRt3bXO7qqw2gJDECZN-xC~bKWEKcJ9Vgs1IgpRdMkY6XGDKZ1XHBdNbd~0v5UiRf4zXwVMRqoynkQPQcihkze7RkDBsOoYHh9jDdtO1iDm0QZ1Qp~cxro_',
            'CloudFront-Key-Pair-Id' => 'K1TESTKEY',
            'CloudFront-Hash-Algorithm' => 'SHA256'
          )
        end

        it 'custom-policy-cookies' do
          policy = %({"Statement":[{"Resource":"https://d111111abcdef8.cloudfront.net/*","Condition":{"DateLessThan":{"AWS:EpochTime":#{expires}},"IpAddress":{"AWS:SourceIp":"10.0.0.0/8"}}}]})
          cookies = rsa_signer.signed_cookie(nil, policy: policy)
          expect(cookies).to eq(
            'CloudFront-Policy' => 'eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kMTExMTExYWJjZGVmOC5jbG91ZGZyb250Lm5ldC8qIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNzY3MjkwNDAwfSwiSXBBZGRyZXNzIjp7IkFXUzpTb3VyY2VJcCI6IjEwLjAuMC4wLzgifX19XX0_',
            'CloudFront-Signature' => 'r28Jnd0t9aq7cu0k9jGWl4L0YsRxgueZtGRw5oEEspU9-eIPGM~ZGMQh36~5HpKC5c67cZjDgJcsqrCacmTHMZZx613gbeYAsx2-hEatU8URiuNHnVp4hPV3HqtbuZ6Din9iEZUpOBYVg6DWGEFJRCQ7SPouBhhJdYDZZOPHGpA_',
            'CloudFront-Key-Pair-Id' => 'K1TESTKEY'
          )
        end

        it 'custom-policy-cookies-sha256' do
          policy = %({"Statement":[{"Resource":"https://d111111abcdef8.cloudfront.net/*","Condition":{"DateLessThan":{"AWS:EpochTime":#{expires}},"IpAddress":{"AWS:SourceIp":"10.0.0.0/8"}}}]})
          cookies = rsa_signer('SHA256').signed_cookie(nil, policy: policy)
          expect(cookies['CloudFront-Signature']).to eq('OzeonPh-NS8g3trdsFAo5LrMBEx1ef05GvdmWuLai6AaBLP63PVJRUGySYmGfQ-NqQ02geWzo7aZS7XFtkr4X1z9VTbQMfmzZftbuRXoP5ZDhFzVnSX3DeoEW8jP3BrOLHJsKwFCY5alIR4zO6LpqFmR5vVmqMYpRcbafg3~X18_')
          expect(cookies['CloudFront-Hash-Algorithm']).to eq('SHA256')
          expect(cookies).to_not have_key('CloudFront-Expires')
        end
      end
    end
  end
end
