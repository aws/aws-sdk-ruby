require 'spec_helper'

module Aws
  module S3
    describe Bucket do
      describe 'waiters' do

        let(:client) { S3::Client.new(stub_responses:true) }

        let(:bucket) { Bucket.new('bucket-name', client: client) }

        it 'yields the waiter to the given block' do
          client.handle(step: :send) do |context|
            context.http_response.signal_headers(200, {})
            context.http_response.signal_done
            Seahorse::Client::Response.new(context:context)
          end

          yielded = nil
          bucket.wait_until_exists { |w| yielded = w }
          expect(yielded).to be_kind_of(Aws::Waiters::Waiter)
        end

      end
    end
  end
end
