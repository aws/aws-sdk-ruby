# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'spec_helper'

module AWS
  class DynamoDB

    describe Client do

      let(:test_credentials) do
        { :access_key_id => "access key id",
          :secret_access_key => "secret access key",
          :session_token => "token" }
      end

      let(:http_handler) { double("handler",
                                  :handle => true) }

      let(:client) do
        Client.new(test_credentials).with_http_handler(http_handler)
      end

      let(:response_body) { "{}" }

      let(:http_request) do
        http_request = nil
        http_handler.should_receive(:handle) do |req, resp|
          http_request = req
          resp.body = response_body
        end
        client.send(method, opts)
        http_request
      end

      context 'CRC32 checking' do
        def run(crc = nil, body = nil)
          @client ||= client
          @client = @client.with_options(:max_retries => 2)
          body ||= '{"TableNames":["tbl1", "tbl2"]}'
          crc ||= Zlib.crc32(body)
          @num_tries = 0
          http_handler.stub(:handle) do |req, resp|
            resp.headers['x-amz-crc32'] = [crc.to_s]
            resp.body = body
            resp.status = 200
            @num_tries += 1
          end

          @result = @client.list_tables
        end

        it 'should accept response if CRC32 check succeeds' do
          run

          @num_tries.should == 1
          @result["TableNames"].should == %w(tbl1 tbl2)
        end

        it 'should attempt to retry if CRC32 check fails' do
          lambda { run(123456) }.should raise_error

          @num_tries.should == 3
          @result.should be_nil
        end

        it 'should raise CRC32 error if CRC32 check fails and retries fail' do
          lambda { run(123456) }.
            should raise_error(Errors::CRC32CheckFailed)
          @num_tries.should == client.config.max_retries
        end

        it 'should ignore invalid CRC check if dynamo_db_crc32 is off' do
          @client = client.with_options(:dynamo_db_crc32 => false)
          run(123456, '{"TableNames": ["tAABLE"]}')

          @num_tries.should == 1
          @result["TableNames"].should == %w(tAABLE)
        end
      end

      shared_examples_for "DynamoDB request" do

        it 'should specify the action using the x-amz-target header' do
          http_request.headers["x-amz-target"].
            should match(/#{operation}$/)
        end

        it 'should specify the correct content type' do
          http_request.headers["content-type"].
            should == "application/x-amz-json-1.0"
        end

        it 'should not specify the content encoding' do
          http_request.headers["content-encoding"].should == nil
        end

        context 'errors' do

          let(:error_body) { '{"__type":"foo.bar.baz#SomeError","message":"FOO"}' }

          it 'should extract the error code and raise a modeled exception' do
            http_handler.stub(:handle) do |req, resp|
              resp.body = error_body
              resp.status = 300
            end
            lambda { client.send(method, opts) }.
              should raise_error(Errors::SomeError, "FOO")
          end

        end

      end

      context 'retry logic' do

        # always fails with a throughput error
        class FailHandler
          def initialize
            @call_count = 0
            @failure = nil
          end
          def handle req, resp
            @call_count += 1
            resp.body = @failure
            resp.status = @status
          end

          def throughput_fail
            @failure = "{\"__type\":\"VERSION#ProvisionedThroughputExceededException\",\"message\":\"The level of configured provisioned throughput for the table was exceeded. Consider increasing your provisioning level with the UpdateTable API\"}"
            @status = 400
          end

          def access_fail
            @failure = "{\"__type\":\"VERSION#ExpiredTokenException\",\"message\":\"\"}"
            @status = 400
          end

          def server_fail
            @failure = "{\"__type\":\"VERSION#ServerFailure\",\"message\":\"\"}"
            @status = 500
          end

          attr_reader :call_count
        end

        let(:http_handler) { FailHandler.new }

        let(:config) do
          {
            :access_key_id => "access key id",
            :secret_access_key => "secret access key",
            :session_token => "token"
          }
        end

        let(:client) { Client.new(config.merge(:http_handler => http_handler)) }

        let(:opts) {{
          :table_name => "table",
          :key => { :hash_key_element => { :s => "key" } }
        }}

        let(:make_request) { client.get_item(opts) }

        before(:each) { Kernel.stub(:sleep) }

        context 'server errors' do

          before(:each) { http_handler.server_fail }

          it 'retries 10 times by default' do
            Kernel.should_receive(:sleep).ordered.with(0.0)
            Kernel.should_receive(:sleep).ordered.with(0.05)
            Kernel.should_receive(:sleep).ordered.with(0.1)
            Kernel.should_receive(:sleep).ordered.with(0.2)
            Kernel.should_receive(:sleep).ordered.with(0.4)
            Kernel.should_receive(:sleep).ordered.with(0.8)
            Kernel.should_receive(:sleep).ordered.with(1.6)
            Kernel.should_receive(:sleep).ordered.with(3.2)
            Kernel.should_receive(:sleep).ordered.with(6.4)
            Kernel.should_receive(:sleep).ordered.with(12.8)
            lambda {
              make_request
            }.should raise_error(Errors::ServerFailure)
            http_handler.call_count.should == 11
          end

          it 'retries n times if specified in the config' do
            config[:max_retries] = 2
            lambda {
              make_request
            }.should raise_error(Errors::ServerFailure)
            http_handler.call_count.should == 3
          end

        end

        context 'throughput errors' do

          before(:each) { http_handler.throughput_fail }

          it 'retries 10 times by default' do
            lambda {
              make_request
            }.should raise_error(Errors::ProvisionedThroughputExceededException)
            http_handler.call_count.should == 11
          end

          it 'retries n times if specified in the config' do
            config[:max_retries] = 5
            lambda {
              make_request
            }.should raise_error(Errors::ProvisionedThroughputExceededException)
            http_handler.call_count.should == 6
          end

          it 'does not retry when max_retries > 0 and retry throttle == false' do
            config[:max_retries] = 2
            config[:dynamo_db_retry_throughput_errors] = false
            lambda {
              make_request
            }.should raise_error(Errors::ProvisionedThroughputExceededException)
            http_handler.call_count.should == 1
          end

        end

        context 'expired credential errors' do

          before(:each) { http_handler.access_fail }

          it 'retries once after refeshing the signer' do
            client.config.credential_provider.stub(:refresh)
            client.config.credential_provider.should_receive(:refresh).once
            lambda {
              make_request
            }.should raise_error(Errors::ExpiredTokenException)
            http_handler.call_count.should == 2
          end

          it 'does not retry when configured to max_retries => 0' do
            config[:max_retries] = 0
            client.config.credential_provider.stub(:refresh)
            client.config.credential_provider.should_not_receive(:refresh)
            lambda {
              make_request
            }.should raise_error(Errors::ExpiredTokenException)
            http_handler.call_count.should == 1
          end

          it 'retries once when configured to max_retries > 0' do
            config[:max_retries] = 5
            client.config.credential_provider.stub(:refresh)
            client.config.credential_provider.should_receive(:refresh).once
            lambda {
              make_request
            }.should raise_error(Errors::ExpiredTokenException)
            http_handler.call_count.should == 2
          end

        end

      end

      context '#describe_table' do

        let(:method)    { :describe_table }
        let(:operation) { "DescribeTable" }
        let(:opts)      { { :table_name => 'table-name' } }

        it_should_behave_like "DynamoDB request"
        it_should_behave_like "uses cached responses"

      end

      context '#list_tables' do

        let(:method)    { :list_tables }
        let(:operation) { "ListTables" }
        let(:opts)      { {} }

        it_should_behave_like "DynamoDB request"
        it_should_behave_like "uses cached responses"

      end

      context '#create_table' do

        let(:method)    { :create_table }
        let(:operation) { "CreateTable" }
        let(:opts)      { {
            :table_name => "MyTable",
            :key_schema => {
              :hash_key_element => {
                :attribute_name => "MyHashKey",
                :attribute_type => "S"
              }
            },
            :provisioned_throughput => {
              :write_capacity_units => 10,
              :read_capacity_units => 10
            }
          } }

        it_should_behave_like "DynamoDB request"

        it 'should send options as a correctly formulated JSON payload' do
          JSON.load(http_request.body).should == {
            "TableName" => "MyTable",
            "KeySchema" => {
              "HashKeyElement" => {
                "AttributeName" => "MyHashKey",
                "AttributeType" => "S"
              }
            },
            "ProvisionedThroughput" => {
              "WriteCapacityUnits" => 10,
              "ReadCapacityUnits" => 10
            }
          }
        end

      end

    end

  end
end
