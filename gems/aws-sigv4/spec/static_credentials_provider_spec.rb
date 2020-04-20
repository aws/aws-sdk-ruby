require_relative 'spec_helper'

module Aws
  module Sigv4
    describe StaticCredentialsProvider do

      let(:credentials) do
        Credentials.new(access_key_id: 'akid', secret_access_key: 'sak')
      end
      describe '#initialize' do

        it 'accepts credentials option' do
          provider = StaticCredentialsProvider.new(credentials: credentials)

          expect(provider.credentials).to be(credentials)
        end

        it 'accepts access_key_id and secret_access_key options' do
          provider = StaticCredentialsProvider.new(
            access_key_id: 'akid',
            secret_access_key: 'sak',
            session_token: 'st'
          )
          expect(provider.credentials).to be_kind_of(Credentials)
        end

        context 'credentials like object' do

          let(:credentials) do
            double(
              access_key_id: 'akid',
              secret_access_key: 'sak',
              session_token: nil
            )
          end

          it 'creates a new Credentials object from the provided option' do
            provider = StaticCredentialsProvider.new(credentials: credentials)

            expect(provider.credentials).to be_kind_of(Credentials)
          end
        end

        context 'invalid credentials option' do
          let(:credentials) { double() }
          it 'raises an ArgumentError' do
            expect do
              StaticCredentialsProvider.new(credentials: credentials)
            end.to raise_error(ArgumentError)
          end
        end
      end
    end

  end
end
