# frozen_string_literal: true

module Benchmark
  module Gems
    class DynamoDB < Benchmark::Gem
      def gem_name
        'aws-sdk-dynamodb'
      end

      def client_module_name
        'Aws::DynamoDB'
      end

      def operation_benchmarks
        {
          get_item_small: {
            setup: proc do |client|
              client.stub_responses(:get_item, [{ item: TestData.test_hash(5) }])
              { key: { 'pk': 'value', 'rk': 'rk1' }, table_name: 'table' }
            end,
            test: proc do |client, req|
              client.get_item(req)
            end
          },
          get_item_large: {
            n: 150,
            setup: proc do |client|
              client.stub_responses(:get_item, [{ item: TestData.test_hash(1000) }])
              { key: { 'pk': 'value', 'rk': 'rk1' }, table_name: 'table' }
            end,
            test: proc do |client, req|
              client.get_item(req)
            end
          },
          put_item_small: {
            setup: proc do |_client|
              { table_name: 'table', item: TestData.test_hash(5) }
            end,
            test: proc do |client, req|
              client.put_item(req)
            end
          },
          put_item_large: {
            n: 100,
            setup: proc do |_client|
              { table_name: 'table', item: TestData.test_hash(1000) }
            end,
            test: proc do |client, req|
              client.put_item(req)
            end
          },
          batch_get_item_large: {
            n: 100,
            setup: proc do |client|
              client.stub_responses(:batch_get_item, [{ responses: { 'table' => (0...100).map do |i|
                                                                                  TestData.test_hash(10, i)
                                                                                end } }])
              { request_items: { 'table' => { keys: (0...100).map { |i| { 'pk' => i } } } } }
            end,
            test: proc do |client, req|
              client.batch_get_item(req)
            end
          }
        }
      end
    end
  end
end
