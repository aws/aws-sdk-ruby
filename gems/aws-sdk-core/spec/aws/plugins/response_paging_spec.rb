# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe ResponsePaging do
      let(:paged_service) do
        ApiHelper.sample_service(
          api: {
            'operations' => {
              'ListThings' => {
                'http' => { 'method' => 'POST', 'requestUri' => '/' },
                'input' => { 'shape' => 'ListThingsInput' },
                'output' => { 'shape' => 'ListThingsOutput' }
              }
            },
            'shapes' => {
              'ListThingsInput' => {
                'type' => 'structure',
                'members' => {
                  'Filter' => { 'shape' => 'String' },
                  'NextToken' => { 'shape' => 'String' }
                }
              },
              'ListThingsOutput' => {
                'type' => 'structure',
                'members' => {
                  'NextToken' => { 'shape' => 'String' },
                  'Things' => { 'shape' => 'StringList' }
                }
              },
              'String' => { 'type' => 'string' },
              'StringList' => {
                'type' => 'list',
                'member' => { 'shape' => 'String' }
              }
            }
          },
          paginators: {
            'pagination' => {
              'ListThings' => {
                'input_token' => 'NextToken',
                'output_token' => 'NextToken',
                'result_key' => 'Things'
              }
            }
          }
        )
      end

      let(:client_options) do
        {
          region: 'us-east-1',
          credentials: Credentials.new('akid', 'secret')
        }
      end

      let(:paged_client) do
        paged_service.const_get(:Client).new(
          client_options.merge(stub_responses: true)
        )
      end

      let(:plain_client) do
        ApiHelper.sample_client.new(client_options.merge(stub_responses: true))
      end

      describe 'paginated operations' do
        before do
          paged_client.stub_responses(
            :list_things,
            { things: %w[a b], next_token: 'T1' },
            { things: %w[c], next_token: 'T2' },
            { things: %w[d] }
          )
        end

        it 'yields every page from #each_page' do
          pages = paged_client.list_things(filter: 'f').each_page.to_a
          expect(pages.map(&:things)).to eq([%w[a b], %w[c], %w[d]])
          expect(pages.last.last_page?).to be(true)
        end

        it 'sends the next token and the original params for each page' do
          paged_client.list_things(filter: 'f').each_page.to_a
          expect(paged_client.api_requests.map { |r| r[:params] }).to eq(
            [
              { filter: 'f' },
              { filter: 'f', next_token: 'T1' },
              { filter: 'f', next_token: 'T2' }
            ]
          )
        end

        it 'reports next_page? and returns the next page from #next_page' do
          resp = paged_client.list_things
          expect(resp.next_page?).to be(true)
          expect(resp.last_page?).to be(false)
          expect(resp.next_page.things).to eq(%w[c])
        end

        it 'enumerates pages with Enumerable methods' do
          resp = paged_client.list_things
          expect(resp.first).to be(resp)
          expect(resp.map(&:things)).to eq([%w[a b], %w[c], %w[d]])
        end
      end

      describe 'nonpaginated operations' do
        it 'returns a single page' do
          resp = plain_client.example_operation
          expect(resp.last_page?).to be(true)
          expect(resp.next_page?).to be(false)
          expect(resp.each_page.to_a).to eq([resp])
          expect(resp.first).to be(resp)
        end

        it 'raises LastPageError from #next_page' do
          resp = plain_client.example_operation
          expect { resp.next_page }
            .to raise_error(PageableResponse::LastPageError)
        end
      end

      describe 'error responses' do
        it 'returns the error and keeps the paging methods' do
          client = plain_client.class.new(
            client_options.merge(
              stub_responses: true, raise_response_errors: false
            )
          )
          client.stub_responses(:example_operation, 'NotFound')
          resp = client.example_operation
          expect(resp.error.class.name).to end_with('Errors::NotFound')
          expect(resp.successful?).to be(false)
          expect(resp.last_page?).to be(true)
        end
      end

      describe 'response callbacks' do
        it 'yields the returned response to on_success and on callbacks' do
          yielded = []
          plain_client.handle(step: :sign, priority: 0) do |context|
            built = @handler.call(context)
            built.on_success { |r| yielded << r }
            built.on(200) { |r| yielded << r }
            built
          end
          resp = plain_client.example_operation
          expect(yielded).to eq([resp, resp])
        end
      end

      describe 'custom response handlers' do
        it 'can inspect data explicitly before paging is set up' do
          seen = {}
          paged_client.stub_responses(
            :list_things, { next_token: 'T1', things: %w[a] }
          )
          paged_client.handle_response(step: :validate, priority: 0) do |resp|
            seen[:response_first] = resp.first
            seen[:first] = resp.data.first
            seen[:map] = resp.data.map { |x| x }
          end
          resp = paged_client.list_things
          expect(seen[:response_first]).to be(resp)
          expect(seen[:first]).to eq('T1')
          expect(seen[:map]).to eq(['T1', %w[a]])
          expect(resp.first).to be(resp)
          expect(resp.next_page?).to be(true)
        end
      end

      describe 'custom log formatters' do
        it 'can inspect data explicitly before paging is set up' do
          seen = {}
          formatter = Object.new
          formatter.define_singleton_method(:format) do |resp|
            seen[:first] = resp.data.first
            seen[:map] = resp.data.map { |x| x }
            ''
          end
          client = paged_client.class.new(
            client_options.merge(
              stub_responses: true,
              logger: Logger.new(StringIO.new),
              log_formatter: formatter
            )
          )
          client.stub_responses(:list_things, { things: %w[a] })
          resp = client.list_things
          expect(seen[:first]).to be_nil
          expect(seen[:map]).to eq([nil, %w[a]])
          expect(resp.map { |x| x }).to eq([resp])
          expect(resp.last_page?).to be(true)
        end
      end

      describe 'custom send handlers' do
        it 'get paging methods on the response they build' do
          client = paged_service.const_get(:Client).new(client_options)
          client.handle(step: :send) do |context|
            Seahorse::Client::Response.new(
              context: context,
              data: context.operation.output.shape.struct_class.new
            )
          end
          resp = client.list_things
          expect(resp.last_page?).to be(true)
          expect(resp.each_page.to_a).to eq([resp])
        end
      end

      describe 'sent requests' do
        before(:each) do
          WebMock.disable_net_connect!
          allow(Kernel).to receive(:sleep)
        end

        it 'returns a pageable response after a retry' do
          stub_request(:post, /.*/)
            .to_return(status: 500, body: '{}')
            .then.to_return(status: 200, body: '{"Things":["a"]}')
          client = paged_service.const_get(:Client).new(client_options)
          resp = client.list_things
          expect(resp.context.retries).to eq(1)
          expect(resp.things).to eq(%w[a])
          expect(resp.last_page?).to be(true)
          expect(resp.each_page.to_a).to eq([resp])
        end
      end

      describe 'performance' do
        it 'does not extend each response with a module' do
          resps = [paged_client.list_things, plain_client.example_operation]
          resps.each do |resp|
            expect(resp.singleton_class.ancestors.drop(1))
              .to eq(resp.class.ancestors)
          end
        end
      end
    end
  end
end
