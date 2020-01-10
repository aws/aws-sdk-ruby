require_relative 'spec_helper'

module Aws
  module RDS

    describe AuthTokenGenerator do

      let(:generator) {
        AuthTokenGenerator.new(
          credentials: Credentials.new('akid', 'skid')
        )
      }

      describe 'initialize' do

        it 'requires :credentials parameter' do
          expect {
            AuthTokenGenerator.new
          }.to raise_error(
            KeyError
          )
        end

      end

      describe 'auth_token' do

        it 'requires region, endpoint, username to create a token' do
          expect {
            generator.auth_token(
              region: 'us-west-2',
              user_name: 'user'
            )
          }.to raise_error(
            KeyError
          )
          expect {
            generator.auth_token(
              region: 'us-west-2',
              endpoint: 'prod-instance.us-east-1.rds.amazonaws.com:3306'
            )
          }.to raise_error(
            KeyError
          )
          expect {
            generator.auth_token(
              endpoint: 'prod-instance.us-east-1.rds.amazonaws.com:3306',
              user_name: 'user'
            )
          }.to raise_error(
            KeyError
          )
        end

        it 'generates a valid token' do
          now = Time.now
          allow(Time).to receive(:now).and_return(now)

          region = 'us-west-2'
          endpoint = 'prod-instance.us-east-1.rds.amazonaws.com:3306'
          user_name = 'mySQLUser'
          token = generator.auth_token(
            region: region,
            endpoint: endpoint,
            user_name: user_name
          )
          expected_token = /#{endpoint}\/\?Action=connect&DBUser=#{user_name}&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=akid%2F#{now.strftime('%Y%m%d')}%2F#{region}%2Frds-db%2Faws4_request&X-Amz-Date=#{now.strftime('%Y%m%dT%H%M%SZ')}&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=.+$/
          expect(token).to match(expected_token)
        end

      end

    end

  end
end
