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
    describe Client do

      ## before each test we are creating a fake service interface

      before(:each) do

        module ::AWS
          class Dummy

            extend ServiceInterface

            class Request < Core::Http::Request
              include Signature::Version2
            end

            class Client < Core::Client

              API_VERSION = Time.now.strftime('%Y-%m-%d')

              add_client_request_method(:sample_method) do
                # ...
              end

            end

          end
        end

        config.stub(:dummy_endpoint).and_return('dummy.amazonaws.com')
        config.stub(:dummy_port).and_return('443')
        config.stub(:dummy_region).and_return('us-east-1')

      end

      after(:each) do
        ::AWS.send(:remove_const, :Dummy)
      end

      let(:client_class) { ::AWS::Dummy::Client }

      let(:request_class) { ::AWS::Dummy::Request }

      let(:config_options) {{}}
      
      let(:config) { stub_config.with(config_options) }

      let(:client) { client_class.new(:config => config) }

      context 'logging' do

        let(:logger) { double('logger') }

        let(:config_options) {{ :logger => logger }}

        let(:response) { client.stub_for(:sample_method) }

        before(:each) do
          client_class.add_client_request_method(:sample_method) do
            # method definition not important for logger tests
          end
        end

        it 'logs to the configured logger after each request' do
          logger.should_receive(:info)
          client.sample_method
        end

        it 'calls the logger method that matches the log level' do
          config.stub(:log_level).and_return(:notice)
          logger.should_receive(:notice)
          client.sample_method
        end

        it 'passes the formatted log message to the logger' do
          config.log_formatter.stub(:format).and_return('LOG-MESSAGE')
          logger.should_receive(:info).with('LOG-MESSAGE')
          client.sample_method
        end

        it 'passes the response to the log formatter to build the message' do

          config.log_formatter.should_receive(:format).
            with(response).
            and_return('LOG-MESSAGE')

          logger.should_receive(:info).with('LOG-MESSAGE')

          client.sample_method

        end

      end

    end
  end
end
