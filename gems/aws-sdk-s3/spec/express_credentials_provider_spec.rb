# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe ExpressCredentialsProvider do
      let(:client) { client_with_credentials('akid', 'secret') }
      let(:express_credentials) { double('express-credentials', client: client) }

      def client_with_credentials(akid, secret)
        credentials = Aws::Credentials.new(akid, secret)
        double('client', config: double('config', credentials: credentials))
      end

      subject do
        ExpressCredentialsProvider.new(
          client: client,
          session_mode: 'ReadWrite'
        )
      end

      describe '#express_credentials_for' do
        after do
          Aws::S3.express_credentials_cache.clear
        end

        it 'returns a new set of credentials for the bucket' do
          expect(ExpressCredentials).to receive(:new)
            .with(bucket: 'bucket', client: client, session_mode: 'ReadWrite')
            .and_return(express_credentials)

          expect(subject.express_credentials_for('bucket'))
            .to eq(express_credentials)
        end

        it 'returns the same set of credentials for the bucket' do
          expect(ExpressCredentials).to receive(:new)
            .with(bucket: 'bucket', client: client, session_mode: 'ReadWrite')
            .and_return(express_credentials)

          credentials = subject.express_credentials_for('bucket')
          expect(subject.express_credentials_for('bucket'))
            .to be(credentials)
        end

        it 'does not share credentials across different client credentials' do
          other_client = client_with_credentials('other-akid', 'other-secret')
          other = ExpressCredentialsProvider.new(client: other_client)
          expect(ExpressCredentials).to receive(:new)
            .with(bucket: 'bucket', client: client, session_mode: 'ReadWrite')
            .and_return(express_credentials)
          expect(ExpressCredentials).to receive(:new)
            .with(bucket: 'bucket', client: other_client)
            .and_return(double('other-express-credentials'))

          expect(subject.express_credentials_for('bucket'))
            .not_to be(other.express_credentials_for('bucket'))
        end

        it 'does not share credentials when only the secret differs' do
          other_client = client_with_credentials('akid', 'other-secret')
          other = ExpressCredentialsProvider.new(client: other_client)
          expect(ExpressCredentials).to receive(:new)
            .and_return(express_credentials, double('other')).twice

          expect(subject.express_credentials_for('bucket'))
            .not_to be(other.express_credentials_for('bucket'))
        end

        it 'shares credentials across clients with the same credentials' do
          other = ExpressCredentialsProvider.new(
            client: client_with_credentials('akid', 'secret')
          )
          expect(ExpressCredentials).to receive(:new)
            .once.and_return(express_credentials)

          expect(subject.express_credentials_for('bucket'))
            .to be(other.express_credentials_for('bucket'))
        end

        it 'creates credentials with the requesting client' do
          other_client = client_with_credentials('other-akid', 'other-secret')
          expect(ExpressCredentials).to receive(:new)
            .with(bucket: 'bucket', client: other_client, session_mode: 'ReadWrite')
            .and_return(express_credentials)

          subject.express_credentials_for('bucket', other_client)
        end

        it 'does not reuse credentials whose client credentials changed' do
          other_client = client_with_credentials('akid', 'secret')
          expect(ExpressCredentials).to receive(:new)
            .and_return(express_credentials, double('other')).twice

          subject.express_credentials_for('bucket')
          allow(client.config).to receive(:credentials)
            .and_return(Aws::Credentials.new('rotated', 'rotated'))
          expect(subject.express_credentials_for('bucket', other_client))
            .not_to be(express_credentials)
        end

        it 'does not use the raw credentials in the cache key' do
          cache = Aws::S3.express_credentials_cache
          allow(ExpressCredentials).to receive(:new).and_return(express_credentials)
          allow(cache).to receive(:[]=).and_call_original

          subject.express_credentials_for('bucket')
          expect(cache).to have_received(:[]=) do |key, _value|
            expect(key).to match(/\A\h{64}bucket\z/)
            expect(key).not_to include('akid', 'secret')
          end
        end

        context 'caching disabled' do
          subject do
            ExpressCredentialsProvider.new(
              client: client,
              session_mode: 'ReadWrite',
              caching: false
            )
          end

          it 'returns a different set of credentials for the bucket' do
            expect(ExpressCredentials).to receive(:new)
              .with(bucket: 'bucket', client: client, session_mode: 'ReadWrite')
              .and_return(express_credentials).twice

            credentials = subject.express_credentials_for('bucket')
            expect(subject.express_credentials_for('bucket'))
              .to be(credentials)
          end
        end
      end

      describe '#client' do
        it 'can assign and return the client' do
          expect(subject.client).to eq(client)
          new_client = double('client')
          subject.client = new_client
          expect(subject.client).to eq(new_client)
        end
      end
    end
  end
end
