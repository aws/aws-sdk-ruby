# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe ExpressCredentialsProvider do
      let(:client) { double('client') }
      let(:express_credentials) { double('express-credentials') }

      subject do
        ExpressCredentialsProvider.new(
          client: client,
          session_mode: 'ReadWrite'
        )
      end

      describe '#express_credentials_for' do
        after do
          EXPRESS_CREDENTIALS_CACHE.clear
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
