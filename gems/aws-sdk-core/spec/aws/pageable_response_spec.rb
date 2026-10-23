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

    let(:resp) { pageable(new_response, pager) }

    shared_examples 'a pageable response' do

      describe 'reapplying paging' do
        it 'resets cached paging state when a different pager is assigned' do
          response = new_response(data: { 'next_token' => 'OFFSET' })
          pageable(response, Pager::NullPager.new)
          expect(response.last_page?).to be(true)
          response.instance_variable_set(:@more_results, true)

          expect(PageableResponse.apply(response)).to be(response)
          response.pager = Pager.new(tokens: { 'next_token' => 'offset' })

          expect(response.next_page?).to be(true)
          expect(response.instance_variable_get(:@more_results)).to be_nil
        end
      end

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
          new_resp = pageable(new_response(context: context), pager)
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

          resp2 = pageable(new_response, resp.pager)
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
          resp = new_response(data: data)
          page = pageable(resp, pager)
          expect {
            page.count
          }.to raise_error(NoMethodError)
        end

        it 'calls count on data' do
          data = double('data', count: 10)
          resp = new_response(data: data)
          page = pageable(resp, pager)
          expect(page.count).to eq(10)
        end

        it 'returns false from respond_to when count not present' do
          data = double('data')
          resp = new_response(data: data)
          page = pageable(resp, pager)
          expect(page.respond_to?(:count)).to be(false)
        end

        it 'indicates it responds to count when data#count exists' do
          data = double('data', count: 10)
          resp = new_response(data: data)
          page = pageable(resp, pager)
          expect(page.respond_to?(:count))
        end

        it 'correctly answers respond_to? with methods different than #count' do
          data = double('data', foo: 'bar')
          resp = new_response(data: data)
          page = pageable(resp, pager)
          expect(page.respond_to?(:foo)).to be(true)
        end

      end

    end

    context 'with PageableResponse.apply on a Seahorse::Client::Response' do
      def new_response(options = {})
        Seahorse::Client::Response.new(options)
      end

      include_examples 'a pageable response'
    end

    context 'with Aws::Response.new' do
      def new_response(options = {})
        Aws::Response.new(options)
      end

      include_examples 'a pageable response'
    end

    describe 'Aws::Response.new' do
      it 'keeps paging state per instance' do
        pager = Pager.new(tokens: { 'next_token' => 'offset' })
        resp1 = Aws::Response.new(data: { 'next_token' => 'A' })
        resp2 = Aws::Response.new(data: {})
        resp1.pager = pager
        resp2.pager = Pager::NullPager.new
        expect(resp1.last_page?).to be(false)
        expect(resp2.last_page?).to be(true)
        expect(resp1.pager).to be(pager)
        expect(resp2.pager).to be_a(Pager::NullPager)
      end

      it 'does not bump RubyVM.stat(:constant_cache_invalidations)' do
        skip 'Only applies to MRI' unless defined? RubyVM.stat
        skip 'Requires Ruby 3.2+' unless RUBY_VERSION >= '3.2'

        Aws::Response.new
        expect {
          Aws::Response.new
        }.to_not(change { RubyVM.stat(:constant_cache_invalidations) })
      end
    end

    describe 'module compatibility' do
      it 'keeps .apply and the nested constants' do
        expect(PageableResponse).to be_instance_of(Module)
        expect(Aws::Response).to be < Seahorse::Client::Response
        expect(PageableResponse::Extension).to be_instance_of(Module)
        expect(PageableResponse::UnsafeEnumerableMethods)
          .to be_instance_of(Module)
        expect(PageableResponse::LastPageError).to be < RuntimeError
        resp = PageableResponse.apply(Seahorse::Client::Response.new)
        expect(resp).to be_a(PageableResponse::Extension)
        expect(resp).not_to be_a(Aws::Response)
      end

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
      let(:data_class) { Struct.new(:is_truncated, :contents) }
      let(:data) { data_class.new(false, []) }
      let(:plain) { Seahorse::Client::Response.new(data: data) }
      let(:resp) { Aws::Response.new(data: data) }

      it 'keeps the plain response delegating to its data' do
        expect(plain.first).to be(false)
        expect(plain.map { |x| x }).to eq([false, []])
      end

      it 'treats the pageable response as the first page' do
        expect(resp).to be_a(Seahorse::Client::Response)
        expect(resp.first).to be(resp)
        expect(resp.count).to eq(2)
      end

      it 'raises NoMethodError for paging methods' do
        %i[last_page? next_page? next_page].each do |name|
          expect { plain.public_send(name) }.to raise_error(NoMethodError)
          expect { resp.public_send(name) }.to raise_error(NoMethodError)
        end
        expect { resp.each_page { |_r| nil } }.to raise_error(NoMethodError)
      end

      it 'yields the response before requiring a pager for further enumeration' do
        %i[each each_page].each do |method|
          yielded = []
          expect {
            resp.public_send(method) { |page| yielded << page }
          }.to raise_error(NoMethodError)
          expect(yielded).to eq([resp])
        end
        expect { resp.map { |page| page } }.to raise_error(NoMethodError)
      end

      it 'does not depend on the data having Enumerable methods' do
        resp = Aws::Response.new(data: Object.new)
        expect(resp.first).to be(resp)
      end

      it 'pages once a pager is assigned' do
        resp.pager = Pager::NullPager.new
        expect(resp.first).to be(resp)
        expect(resp.map { |x| x }).to eq([resp])
        expect(resp.last_page?).to be(true)
        expect(resp.respond_to?(:next_page?)).to be(true)
        expect(resp.count).to eq(2)
      end
    end

    describe '.apply' do
      it 'returns the same Aws::Response without extending it' do
        resp = Aws::Response.new
        expect(PageableResponse.apply(resp)).to be(resp)
        expect(resp.singleton_class.ancestors - resp.class.ancestors)
          .not_to include(PageableResponse::Extension)
      end

      # see https://github.com/aws/aws-sdk-ruby/pull/2670
      it 'does not bump RubyVM.stat(:global_constant_state)' do
        skip 'Only applies to MRI'  unless defined? RubyVM.stat

        key = :global_constant_state
        # Ruby 3.2 removed global_constant_state
        # see https://github.com/ruby/ruby/pull/5766
        key = :constant_cache_invalidations if RUBY_VERSION >= '3.2'

        object = Object.new
        expect {
          PageableResponse.apply(object)
        }.to_not change { RubyVM.stat(key) }
      end

      # Kernel#extend creates a singleton class and clears the method cache for every
      # method the module defines (each, count, to_h, respond_to?, all of Enumerable...),
      # process-wide, so it must not happen once per response.
      it 'does not give a client response a singleton class' do
        skip 'Only applies to MRI' unless defined? RubyVM.stat

        client = ApiHelper.sample_client.new(stub_responses: true)
        client.example_operation
        GC.disable
        classes_before = ObjectSpace.count_objects.values_at(:T_CLASS, :T_ICLASS)
        client.example_operation
        expect(ObjectSpace.count_objects.values_at(:T_CLASS, :T_ICLASS)).to eq(classes_before)
      ensure
        GC.enable
      end

      it 'makes every Aws::Response pageable' do
        resp = Response.new
        expect(resp).to be_kind_of(PageableResponse::Extension)
        expect(resp).to be_kind_of(Enumerable)
      end
    end

  end
end
