# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module RDS
    describe AuthTokenGenerator do
      let(:credentials) { Aws::StaticCredentialsProvider.new(access_key_id: 'akid', secret_access_key: 'secret') }
      let(:generator) { AuthTokenGenerator.new(credentials: credentials) }

      describe '#initialize' do
        it 'requires :credentials' do
          expect { AuthTokenGenerator.new }.to raise_error(KeyError)
        end
      end

      describe '#generate_auth_token' do
        it 'requires region, endpoint, username to create a token' do
          expect do
            generator.generate_auth_token(
              region: 'us-west-2',
              username: 'user'
            )
          end.to raise_error(KeyError)
          expect do
            generator.generate_auth_token(
              region: 'us-west-2',
              endpoint: 'prod-instance.us-east-1.rds.amazonaws.com:3306'
            )
          end.to raise_error(KeyError)
          expect do
            generator.generate_auth_token(
              endpoint: 'prod-instance.us-east-1.rds.amazonaws.com:3306',
              username: 'user'
            )
          end.to raise_error(KeyError)
        end

        it 'generates a valid token' do
          now = Time.parse('20240827T000000Z')
          allow(Time).to receive(:now).and_return(now)

          region = 'us-east-1'
          endpoint = 'prod-instance.us-east-1.rds.amazonaws.com:3306'
          user_name = 'peccy'
          token = generator.generate_auth_token(
            region: region,
            endpoint: endpoint,
            username: user_name,
            expires_in: 450
          )
          expect(token).to match(%r{#{endpoint}/\?Action=connect&DBUser=#{user_name}})
          expect(token).to match(
            /X-Amz-Credential=akid%2F#{now.utc.strftime('%Y%m%d')}%2F#{region}%2Frds-db%2Faws4_request/
          )
          expect(token).to match(/X-Amz-Expires=450/)
          expect(token).not_to match(%r{http[s?]://})
        end
      end
    end
  end
end
