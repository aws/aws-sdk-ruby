require 'spec_helper'

module Aws
  module Paging
    describe NullProvider do

      let(:provider) { NullProvider.new }

      it 'returns null pagers' do
        expect(provider.pager('NonPagedOperation').next_tokens).to eq({})
        expect(provider.pager('NonPagedOperation').truncated?('resp')).to be(false)
      end

    end
  end
end
