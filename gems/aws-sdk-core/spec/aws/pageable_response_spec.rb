# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe PageableResponse do

    def pageable(resp, pager)
      PageableResponse.apply(resp)
      resp.pager = pager
      resp.context[:original_params] = resp.context.params.freeze
      resp
    end

    let(:pager) { Pager.new(options) }

    let(:resp) { pageable(Aws::Response.new, pager) }

    describe 'paginated operations' do

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
        new_resp = pageable(Aws::Response.new(context: context), pager)
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

        resp2 = pageable(Aws::Response.new, resp.pager)
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
        resp = Aws::Response.new(data: data)
        page = pageable(resp, pager)
        expect {
          page.count
        }.to raise_error(NoMethodError)
      end

      it 'calls count on data' do
        data = double('data', count: 10)
        resp = Aws::Response.new(data: data)
        page = pageable(resp, pager)
        expect(page.count).to eq(10)
      end

      it 'returns false from respond_to when count not present' do
        data = double('data')
        resp = Aws::Response.new(data: data)
        page = pageable(resp, pager)
        expect(page.respond_to?(:count)).to be(false)
      end

      it 'indicates it responds to count when data#count exists' do
        data = double('data', count: 10)
        resp = Aws::Response.new(data: data)
        page = pageable(resp, pager)
        expect(page.respond_to?(:count)).to be(true)
      end

      it 'correctly answers respond_to? with methods different than #count' do
        data = double('data', foo: 'bar')
        resp = Aws::Response.new(data: data)
        page = pageable(resp, pager)
        expect(page.respond_to?(:foo)).to be(true)
      end

    end

    describe 'Aws::Response.new' do
      it 'keeps paging state per instance' do
        pager = Pager.new(tokens: { 'next_token' => 'offset' })
        first = pageable(Aws::Response.new(data: { 'next_token' => 'A' }), pager)
        second = pageable(Aws::Response.new(data: {}), Pager::NullPager.new)

        expect(first.next_page?).to be(true)
        expect(second.last_page?).to be(true)
        expect(first.next_page?).to be(true)
      end
    end

    describe 'module compatibility' do
      it 'can still be reopened, included, and extended as a module' do
        expect {
          Object.module_eval('module Aws::PageableResponse; end')
        }.not_to raise_error
        response_class = Class.new { include PageableResponse }
        expect(response_class.new).to be_a(PageableResponse)
        expect(Object.new.extend(PageableResponse)).to be_a(PageableResponse)
      end
    end

    describe 'before a pager is assigned' do
      let(:data) { Struct.new(:is_truncated, :contents).new(false, []) }
      let(:resp) { Aws::Response.new(data: data) }

      it 'returns the response from first and exposes fields through data' do
        expect(resp.first).to be(resp)
        expect(resp.data.first).to be(false)
      end

      it 'requires a pager for page-state checks and full enumeration' do
        %i[last_page? next_page? next_page].each do |method|
          expect { resp.public_send(method) }.to raise_error(NoMethodError)
        end
        expect { resp.each_page.to_a }.to raise_error(NoMethodError)
        expect { resp.map { |page| page } }.to raise_error(NoMethodError)
      end

      it 'enumerates pages once a pager is assigned' do
        resp.pager = Pager::NullPager.new
        expect(resp.first).to be(resp)
        expect(resp.map { |page| page }).to eq([resp])
        expect(resp.last_page?).to be(true)
        expect(resp.next_page?).to be(false)
      end
    end

    describe '.apply' do
      shared_examples 'resetting paging state' do
        it 'recalculates page state when a different pager is assigned' do
          response = pageable(
            response_class.new(data: { 'next_token' => 'OFFSET' }),
            Pager::NullPager.new
          )
          expect(response.last_page?).to be(true)

          expect(PageableResponse.apply(response)).to be(response)
          response.pager = Pager.new(tokens: { 'next_token' => 'offset' })

          expect(response.next_page?).to be(true)
          expect(response.last_page?).to be(false)
        end
      end

      context 'with an Aws::Response' do
        let(:response_class) { Aws::Response }
        include_examples 'resetting paging state'
      end

      context 'with a plain Seahorse::Client::Response' do
        let(:response_class) { Seahorse::Client::Response }
        include_examples 'resetting paging state'

        it 'adds page traversal to the existing response' do
          pager = Pager.new(tokens: { 'next_token' => 'offset' })
          response = pageable(
            Seahorse::Client::Response.new(data: { 'next_token' => 'TOKEN' }),
            pager
          )
          last_page = pageable(Seahorse::Client::Response.new(data: {}), pager)
          response.context.client = double('client')
          response.context.operation_name = 'operation'
          request = double('request', send_request: last_page)

          expect(response.context.client).to receive(:build_request)
            .with('operation', { offset: 'TOKEN' }).and_return(request)

          expect(response.next_page?).to be(true)
          expect(response.next_page).to be(last_page)
          expect(last_page.each_page.to_a).to eq([last_page])
        end
      end
    end

    describe 'performance regressions' do
      it 'does not extend paginated or single-page responses per instance' do
        pagers = [Pager.new(tokens: { 'next_token' => 'offset' }), Pager::NullPager.new]
        pagers.each do |pager|
          response = pageable(Aws::Response.new, pager)
          expect(response.singleton_class.ancestors.drop(1))
            .to eq(response.class.ancestors)
        end
      end

      # see https://github.com/aws/aws-sdk-ruby/pull/2670
      it 'does not bump the constant cache when applying paging' do
        skip 'Only applies to MRI' unless defined? RubyVM.stat

        key = RUBY_VERSION >= '3.2' ? :constant_cache_invalidations : :global_constant_state
        object = Object.new
        expect {
          PageableResponse.apply(object)
        }.to_not change { RubyVM.stat(key) }
      end

      it 'does not bump the constant cache when constructing a response' do
        skip 'Only applies to MRI' unless defined? RubyVM.stat
        skip 'Requires Ruby 3.2+' unless RUBY_VERSION >= '3.2'

        Aws::Response.new
        expect {
          Aws::Response.new
        }.to_not change { RubyVM.stat(:constant_cache_invalidations) }
      end

      # Per-response extension allocates classes and invalidates method lookups.
      it 'does not give a client response a singleton class' do
        skip 'Only applies to MRI' unless defined? RubyVM.stat

        client = ApiHelper.sample_client.new(stub_responses: true)
        client.example_operation
        gc_disabled = GC.disable
        classes_before = ObjectSpace.count_objects.values_at(:T_CLASS, :T_ICLASS)
        client.example_operation
        expect(ObjectSpace.count_objects.values_at(:T_CLASS, :T_ICLASS)).to eq(classes_before)
      ensure
        GC.enable if defined?(gc_disabled) && gc_disabled == false
      end
    end

  end
end
