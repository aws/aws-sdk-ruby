require 'spec_helper'

module Aws
  describe ResponsePager do

    let(:resp) { Seahorse::Client::Response.new }

    let(:operation) { double('operation', metadata: { 'paging' => paging }) }

    let(:pager) { ResponsePager.new(resp) }

    let(:paging) { nil }

    before(:each) do
      resp.context.operation = operation
    end

    # If an operation has no paging metadata, then it is considered
    # un-pageable and will always treat a response as the last page.
    describe 'unpageable-operation' do

      it 'returns true from #last_page?' do
        expect(pager.last_page?).to be(true)
        expect(pager.next_page?).to be(false)
      end

      it 'raises a LastPageError when calling next_page' do
        expect { pager.next_page }.to raise_error(ResponsePager::LastPageError)
      end

      it 'popualtes the error with the response' do
        begin
          pager.next_page
        rescue => error
          expect(error.response).to be(resp)
        end
      end

    end

    # When paging is configured with tokens, the token keys are treated
    # as request parameters and the values are treated as response data
    # elements to map into the next request.
    describe 'paging with tokens' do

      let(:paging) {{
        'tokens' => {
          'offset' => 'next_token'
        }
      }}

      it 'returns false from last page if the paging token value is present' do
        resp.data = { 'next_token' => 'OFFSET' }
        expect(pager.last_page?).to be(false)
        expect(pager.next_page?).to be(true)
      end

      it 'is not pageable if response data does not contain tokens' do
        resp.data = { }
        expect(pager.last_page?).to be(true)
        expect(pager.next_page?).to be(false)
      end

      it 'responds to #next_page by sending a new request with tokens applied' do
        client = double('client')
        new_request = double('new-request')

        resp.data = { 'next_token' => 'OFFSET' }
        resp.context.client = client
        resp.context.operation_name = 'operation-name'

        expect(client).to receive(:build_request).
          with('operation-name', { :offset => 'OFFSET' }).
          and_return(new_request)

        expect(new_request).to receive(:send_request)

        pager.next_page
      end

    end

    describe 'paging with multiple tokens' do

      let(:paging) {{
        'tokens' => {
          'offset_a' => 'group',
          'offset_b' => 'value',
        }
      }}

      it 'returns false from last page if all paging tokens are present' do
        resp.data = { 'group' => 'a', 'value' => 'b' }
        expect(pager.last_page?).to be(false)
        expect(pager.next_page?).to be(true)
      end

      it 'returns false from last page if ANY paging token is present' do
        resp.data = { 'group' => 'a' }
        expect(pager.last_page?).to be(false)
        expect(pager.next_page?).to be(true)
      end

      it 'returns true from last page if NO paging tokens are present' do
        resp.data = { }
        expect(pager.last_page?).to be(true)
        expect(pager.next_page?).to be(false)
      end

      it 'sends any tokens found a request params' do
        client = double('client')
        new_request = double('new-request', send_request: nil)

        resp.data = { 'group' => 'a' }
        resp.context.client = client
        resp.context.operation_name = 'operation-name'

        expect(client).to receive(:build_request).
          with('operation-name', { :offset_a => 'a' }).
          and_return(new_request)

        pager.next_page
      end

    end

    describe 'paging with truncation indicator' do

      let(:paging) {{
        'tokens' => { 'marker' => 'next_marker' },
        'truncated_if' => 'is_truncated'
      }}

      it 'returns false from last page if the truncation marker is true' do
        resp.data = { 'is_truncated' => true }
        expect(pager.last_page?).to be(false)
        expect(pager.next_page?).to be(true)
      end

      it 'returns true from last page if the truncation marker is false' do
        resp.data = { 'is_truncated' => false }
        expect(pager.last_page?).to be(true)
        expect(pager.next_page?).to be(false)
      end

    end

    describe 'custom paging rules' do

      let(:paging) {{ 'tokens' => { 'offset' => 'next_token' } }}

      it 'can be constructed with an empty set of rules to disable paging' do
        pager = ResponsePager.new(resp, paging_rules: {})
        expect(pager.last_page?).to be(true)
        expect(pager.next_page?).to be(false)
      end

    end
  end
end
