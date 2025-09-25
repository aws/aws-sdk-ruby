# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module DSQL
    describe AuthTokenGenerator do
      let(:credentials) { Core::StaticCredentialsProvider.new(access_key_id: 'akid', secret_access_key: 'secret') }
      let(:generator) { AuthTokenGenerator.new(credentials: credentials) }

      describe '#initialize' do
        it 'requires :credentials' do
          expect { AuthTokenGenerator.new }.to raise_error(KeyError)
        end
      end

      describe 'generate_db_connect_auth_token' do
        it 'requires region and endpoint to create a token' do
          expect do
            generator.generate_db_connect_auth_token(region: 'us-west-2')
          end.to raise_error(KeyError)
          expect do
            generator.generate_db_connect_auth_token(endpoint: 'peccy.dsql.us-east-1.on.aws')
          end.to raise_error(KeyError)
        end

        it 'generates a valid token' do
          now = Time.parse('20240827T000000Z')
          allow(Time).to receive(:now).and_return(now)

          region = 'us-east-1'
          endpoint = 'peccy.dsql.us-east-1.on.aws'
          token = generator.generate_db_connect_auth_token(
            region: region,
            endpoint: endpoint,
            expires_in: 450
          )
          expect(token).to match(/#{endpoint}\/\?Action=DbConnect/)
          expect(token).to match(/X-Amz-Credential=akid%2F#{now.utc.strftime('%Y%m%d')}%2F#{region}%2Fdsql%2Faws4_request/)
          expect(token).to match(/X-Amz-Expires=450/)
          expect(token).not_to match(/http[s?]:\/\//)
        end
      end

      describe 'db_connect_admin_auth_token' do
        it 'requires region and endpoint to create a token' do
          expect do
            generator.generate_db_connect_admin_auth_token(region: 'us-west-2')
          end.to raise_error(KeyError)
          expect do
            generator.generate_db_connect_admin_auth_token(endpoint: 'peccy.dsql.us-east-1.on.aws')
          end.to raise_error(KeyError)
        end

        it 'generates a valid token' do
          now = Time.parse('20240827T000000Z')
          allow(Time).to receive(:now).and_return(now)

          region = 'us-east-1'
          endpoint = 'peccy.dsql.us-east-1.on.aws'
          token = generator.generate_db_connect_admin_auth_token(
            region: region,
            endpoint: endpoint,
            expires_in: 450
          )
          expect(token).to match(/#{endpoint}\/\?Action=DbConnectAdmin/)
          expect(token).to match(/X-Amz-Credential=akid%2F#{now.utc.strftime('%Y%m%d')}%2F#{region}%2Fdsql%2Faws4_request/)
          expect(token).to match(/X-Amz-Expires=450/)
          expect(token).not_to match(/http[s?]:\/\//)
        end
      end
    end
  end
end
