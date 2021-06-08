# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe PageableResponse do

    def pageable(resp, pager)
      resp.extend(PageableResponse)
      resp.pager = pager
      resp.context[:original_params] = resp.context.params
      resp
    end

    let(:pager) { Pager.new(options) }

    let(:resp) { pageable(Seahorse::Client::Response.new, pager) }

    describe 'pagable operations' do

      let(:options) {{
        tokens: {
          'next_token' => 'offset',
          'other_token' => 'token'
        }
      }}

      it 'is Enumerable' do
        expect(resp).to be_kind_of(Enumerable)
      end

      it 'returns false from last page if the paging token value is present' do
        resp.data = { 'next_token' => 'OFFSET' }
        expect(resp.last_page?).to be(false)
        expect(resp.next_page?).to be(true)
      end

      it 'is not pageable if response data does not contain tokens' do
        resp.data = { }
        expect(resp.last_page?).to be(true)
        expect(resp.next_page?).to be(false)
      end

      it 'is not pageable if next token is an empty hash' do
        resp.data = { 'next_token' => {} }
        expect(resp.last_page?).to be(true)
        expect(resp.next_page?).to be(false)
      end

      it 'is not pageable if next token is an empty array' do
        resp.data = { 'next_token' => [] }
        expect(resp.last_page?).to be(true)
        expect(resp.next_page?).to be(false)
      end

      it 'is not pageable if next token is an empty string' do
        resp.data = { 'next_token' => '' }
        expect(resp.last_page?).to be(true)
        expect(resp.next_page?).to be(false)
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

        expect(new_request).to receive(:send_request).
          and_return(Seahorse::Client::Response.new)

        resp.next_page
      end

      it 'removes previous tokens on subsequent #next_page calls' do
        client = double('client')
        request_1 = double('new-request')
        request_2 = double('new-new-request')

        resp.data = { 'next_token' => 'OFFSET', 'other_token' => 'TOKEN' }
        resp.context.client = client
        resp.context.operation_name = 'operation-name'

        expect(client).to receive(:build_request).
          with('operation-name', { :offset => 'OFFSET', :token => 'TOKEN' }).
          and_return(request_1)

        context = Seahorse::Client::RequestContext.new(
          params: { :offset => 'OFFSET', :token => 'TOKEN' }
        )
        new_resp = pageable(Seahorse::Client::Response.new(context: context), pager)
        new_resp.data = { 'next_token' => 'OFFSET' }
        new_resp.context.client = client
        new_resp.context.operation_name = 'operation-name'

        expect(request_1).to receive(:send_request).and_return(new_resp)

        second_page = resp.next_page

        expect(client).to receive(:build_request).
          with('operation-name', { :offset => 'OFFSET' }).
          and_return(request_2)

        expect(request_2).to receive(:send_request).
          and_return(Seahorse::Client::Response.new)

        second_page.next_page
      end
    end

    describe 'paging with multiple tokens' do

      let(:options) {{
        tokens: {
          'group' => 'offset_a',
          'value' => 'offset_b'
        }
      }}

      it 'returns false from last page if all paging tokens are present' do
        resp.data = { 'group' => 'a', 'value' => 'b' }
        expect(resp.last_page?).to be(false)
        expect(resp.next_page?).to be(true)
      end

      it 'returns false from last page if ANY paging token is present' do
        resp.data = { 'group' => 'a' }
        expect(resp.last_page?).to be(false)
        expect(resp.next_page?).to be(true)
      end

      it 'returns true from last page if NO paging tokens are present' do
        resp.data = { }
        expect(resp.last_page?).to be(true)
        expect(resp.next_page?).to be(false)
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

        allow(new_request).to receive(:send_request).and_return(resp)

        resp.next_page
      end

    end

    describe 'paging with truncation indicator' do

      let(:options) {{
        tokens: {
          'next_marker' => 'marker'
        },
        more_results: 'is_truncated'
      }}

      it 'returns false from last page if the truncation marker is true' do
        resp.data = { 'is_truncated' => true }
        expect(resp.last_page?).to be(false)
        expect(resp.next_page?).to be(true)
      end

      it 'returns true from last page if the truncation marker is false' do
        resp.data = { 'is_truncated' => false }
        expect(resp.last_page?).to be(true)
        expect(resp.next_page?).to be(false)
      end

    end

    describe '#each_page' do

      let(:options) {{
        tokens: {
          'next_token' => 'offset'
        }
      }}

      it 'yields once per paging result' do
        client = double('client')
        new_request = double('new-request')

        resp.data = { 'next_token' => 'OFFSET' }
        resp.context.client = client
        resp.context.operation_name = 'operation-name'

        resp2 = pageable(Seahorse::Client::Response.new, resp.pager)
        resp2.data = {}

        allow(client).to receive(:build_request).
          with('operation-name', { :offset => 'OFFSET' }).
          and_return(new_request)

        allow(new_request).to receive(:send_request).and_return(resp2)

        pages = []
        resp.each { |r| pages << r.data }
        expect(pages).to eq([resp.data, resp2.data])
      end

    end

    describe '#count' do

      let(:options) {{
        tokens: {}
      }}

      it 'raises not implemented error by default' do
        data = double('data')
        resp = Seahorse::Client::Response.new(data:data)
        page = pageable(resp, pager)
        expect {
          page.count
        }.to raise_error(NoMethodError)
      end

      it 'passes count from the raises not implemented error by default' do
        data = double('data', count: 10)
        resp = Seahorse::Client::Response.new(data:data)
        page = pageable(resp, pager)
        expect(page.count).to eq(10)
      end

      it 'returns false from respond_to when count not present' do
        data = double('data')
        resp = Seahorse::Client::Response.new(data:data)
        page = pageable(resp, pager)
        expect(page.respond_to?(:count)).to be(false)
      end

      it 'indicates it responds to count when data#count exists' do
        data = double('data', count: 10)
        resp = Seahorse::Client::Response.new(data:data)
        page = pageable(resp, pager)
        expect(page.respond_to?(:count))
      end

      it 'correctly answers respond_to? with methods different than #count' do
        data = double('data', foo: 'bar')
        resp = Seahorse::Client::Response.new(data:data)
        page = pageable(resp, pager)
        expect(page.respond_to?(:foo)).to be(true)
      end

    end
  end
end
