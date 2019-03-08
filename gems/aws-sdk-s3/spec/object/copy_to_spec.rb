require_relative '../spec_helper'

module Aws
  module S3
    describe Object do
      describe '#copy_to' do
        let(:source_client) { Client.new(stub_responses: true) }
        let(:destination_client) { Client.new(stub_responses: true) }
        let(:source) do
          Aws::S3::Object.new(
            'source-bucket', 'source-key',
            client: source_client
          )
        end
        let(:destination) do
          Aws::S3::Object.new(
            'destination-bucket', 'destination-key',
            client: destination_client
          )
        end
        let(:copy_source) do
          [
            source.bucket_name,
            Seahorse::Util.uri_path_escape(source.key)
          ].join('/')
        end

        it 'copies one object to a location referenced by another object' do
          expect(destination_client).to receive(:copy_object).with(
            copy_source: copy_source,
            bucket: destination.bucket_name,
            key: destination.key
          )
          source.copy_to(destination)
        end
      end
    end
  end
end
