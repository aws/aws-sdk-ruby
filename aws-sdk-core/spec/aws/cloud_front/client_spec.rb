require 'spec_helper'

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

    end
  end
end
