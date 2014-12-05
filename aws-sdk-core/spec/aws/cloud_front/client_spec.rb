require 'spec_helper'

module Aws
  module CloudFront
    describe Client do

      it 'does not have the YYYY_MM_DD suffix on the api operation name' do
        operation = Client.api.operation(:list_distributions)
        expect(operation.name).to eq('ListDistributions')
      end

      it 'returns the paginator for the operation' do
        operation = Client.api.operation(:list_distributions)
        pager = Client.paginators.pager(operation.name)
        expect(pager).not_to be_kind_of(Paging::NullPager)
      end

    end
  end
end
