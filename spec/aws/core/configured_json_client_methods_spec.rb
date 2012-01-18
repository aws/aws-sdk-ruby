# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  module Core

    describe ConfiguredJsonClientMethods do

      let(:class_methods_module) { described_class.const_get(:ClassMethods) }

      it_should_behave_like "class methods module" do

        let(:mod) do
          m = Module.new do
            self::TARGET_PREFIX = "TARGET_PREFIX."
            self::Options = Module.new do
              include ConfiguredOptionGrammars
            end
          end

          m::Options.stub(:operation_grammar).and_return(option_grammar)

          MetaUtils.extend_method(m, :configure_client) { super_configure_client }
          m.stub(:super_configure_client)
          m.stub(:add_client_request_method)
          m.stub(:api_config).and_return(api_config)

          m.send(:extend, class_methods_module)
          m
        end

        let(:api_config) { { :operations => operations } }

        let(:operations) { { "DoSomething" => {} } }

        let(:option_grammar) { double("option grammar") }

        it 'should include ApiConfig' do
          class_methods_module.ancestors.should include(ApiConfig)
        end

        context '#configure_client' do

          it 'should call super' do
            mod.should_receive(:super_configure_client)
            mod.configure_client
          end

          it 'should read the api config' do
            mod.should_receive(:api_config)
            mod.configure_client
          end

          it 'should call add_client_request_method for each operation' do
            mod.should_receive(:add_client_request_method).
              with(:do_something)
            mod.configure_client
          end

          context 'request block' do

            before(:each) do
              mod.module_eval do
                def self.add_client_request_method(*args, &block)
                  method_builder.instance_eval(&block)
                end
              end
              mod.stub(:method_builder).and_return(method_builder)
              method_builder.stub(:configure_request).
                and_yield(request, request_options)
              method_builder.stub(:process_response).
                and_yield(response)
              method_builder.stub(:simulate_response)
              option_grammar.stub(:to_json).
                and_return('{"foo":"bar"}')
            end

            let(:request) { double("request",
                                   :headers => {},
                                   :body= => nil) }

            let(:response) { Response.new(nil, http_response) }

            let(:http_response) { double("http response",
                                         :body => "{}") }

            let(:method_builder) { double("method_builder",
                                          :configure_request => nil,
                                          :process_response => nil) }

            let(:request_options) { { :foo => "bar" } }

            it 'should call configure_request' do
              method_builder.should_receive(:configure_request)
              mod.configure_client
            end

            it 'should add the x-amz-target header using the target prefix' do
              mod.configure_client
              request.headers["x-amz-target"].
                should == "TARGET_PREFIX.DoSomething"
            end

            it 'should generate the request body using the option grammar' do
              option_grammar.should_receive(:to_json).
                with(request_options).
                and_return("{}")
              mod.configure_client
            end

            it 'should add the body to the request' do
              request.should_receive(:body=).
                with('{"foo":"bar"}')
              mod.configure_client
            end

            it 'should call process_response' do
              method_builder.should_receive(:process_response)
              mod.configure_client
            end

            it 'should parse the response body as JSON and store it on the response object' do
              JSON.should_receive(:load).
                with("{}").
                and_return({ :foo => "bar" })
              mod.configure_client
              response.data.should == { :foo => "bar" }
            end

            it 'should call simulate_response' do
              method_builder.should_receive(:simulate_response)
              mod.configure_client
            end

            it 'should stub the data method to return an empty hash' do
              method_builder.stub(:process_response)
              method_builder.stub(:simulate_response).
                and_yield(response)
              mod.configure_client
              response.data.should == {}
            end

          end

        end

      end

    end

  end
end
