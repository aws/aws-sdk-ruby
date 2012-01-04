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

module AWS::Core

  describe ConfiguredClientMethods do

    let(:class_methods_module) { described_class.const_get(:ClassMethods) }

    it_should_behave_like "class methods module" do

      let(:mod) do
        m = Module.new do
          self::XML = Module.new do
            include ConfiguredXmlGrammars
          end
          self::Options = Module.new do
            include ConfiguredOptionGrammars
          end
        end

        m::XML.stub(:operation_grammar).and_return(xml_grammar)
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

      let(:xml_grammar) { double("xml grammar") }

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
            with(:do_something, :xml_grammar => xml_grammar)
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
            option_grammar.stub(:request_params).
              and_return(["one", "two"])
          end

          let(:request) { double("request",
                                 :add_param => nil) }

          let(:method_builder) { double("method_builder",
                                        :configure_request => nil) }

          let(:request_options) { { :foo => "bar" } }

          after(:each) do
            mod.configure_client
          end

          it 'should call configure_request' do
            method_builder.should_receive(:configure_request)
          end

          it 'should add the action param' do
            request.should_receive(:add_param).
              with("Action", "DoSomething")
          end

          it 'should generate the request parameters using the option grammar' do
            option_grammar.should_receive(:request_params).
              with(request_options).
              and_return([])
          end

          it 'should add the request params to the request' do
            request.should_receive(:add_param).
              with("one")
            request.should_receive(:add_param).
              with("two")
          end

        end

      end

    end

  end

end
