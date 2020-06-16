require_relative '../spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do
      let(:client) { S3::Client.new(stub_responses: true) }

      describe '#exists?' do
        let(:small_obj) do
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'small',
            client: client
          )
        end

        it 'exists call build_request' do
          expect(client).to receive(:build_request).and_call_original.exactly(1).times

          expect(small_obj.exists?).to be true
        end
      end
    end
  end
end
