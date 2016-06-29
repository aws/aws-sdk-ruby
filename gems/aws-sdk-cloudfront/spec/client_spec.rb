require_relative 'spec_helper'

module Aws
  module CloudFront
    describe Client do

      it 'does not have the YYYY_MM_DD suffix on the api operation name' do
        operation = Client.api.operation(:list_distributions)
        expect(operation.name).to eq('ListDistributions')
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

    end
  end
end
