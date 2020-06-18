# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module CloudFront
    describe Client do

      it 'does not have the YYYY_MM_DD suffix on the api operation name' do
        expect {
          Client.api.operation(:list_distributions)
        }.not_to raise_error
      end

      it 'populates correct operation.name' do
        # avoid hard code YYYY_MM_DD in case new api version is introduced
        expect(Client.api.operation(:list_distributions).name).not_to eq('ListDistributions')
      end

      it 'returns the paginator for the operation' do
        expect(Client.api.operation(:list_distributions)[:pager]).not_to be(nil)
      end

      it 'accepts an integer for `:max_items`' do
        client = Client.new(stub_responses: {
          list_distributions: {
            distribution_list: {
              max_items: 1,
              is_truncated: false,
              marker: 'marker',
              quantity: 0,
            }
          }
        })
        expect {
          client.list_distributions(max_items: 1)
        }.not_to raise_error
      end

      it 'supports incomplete stubs for paginators' do
        client = Client.new(:stub_responses => true)
        expect {
          client.stub_data(
            :list_cloud_front_origin_access_identities,
            {
              cloud_front_origin_access_identity_list: {
                items: [
                  {
                    id: "foo",
                    s3_canonical_user_id: "bar"
                  }
                ]
              }
            }
          )
        }.not_to raise_error
      end

    end
  end
end
