
# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
require 'logger'

module Seahorse
  module  Client
    module Logging
      describe Handler do

        class LogNullDevice
          attr_reader :messages
          def write(msg)
            @messages ||= ''
            @messages << msg
          end
          def close; end
        end

        class TestFormatter
          def format(response)
            'test-formatter-log-msg'
          end
        end

        def handle!
          @log_dev ||= LogNullDevice.new
          @logger ||= Logger.new(@log_dev)
          @log_level ||= :info
          @formatter ||= TestFormatter.new
          @config ||= double('config',
            logger: @logger,
            log_level: @log_level,
            log_formatter: @formatter)
          @handler ||= Handler.new(lambda { |context|
            Response.new(context: context).signal_complete
          })
          @handler.call(RequestContext.new(config: @config))
        end

        it 'populates the request context with timing information' do
          resp = handle!
          expect(resp.context[:started_at]).to be_kind_of(Time)
          expect(resp.context[:completed_at]).to be_kind_of(Time)
          expect(resp.context[:started_at]).to be < resp.context[:completed_at]
        end

        it 'sends the formatted message to the logger' do
          handle!
          expect(@log_dev.messages).to match(/test-formatter-log-msg/)
        end

        it 'sends the message at the right log level' do
          @log_dev = LogNullDevice.new
          @logger = Logger.new(@log_dev)
          @logger.level = Logger::WARN
          handle!
          expect(@log_dev.messages).to be(nil)
        end

      end
    end
  end
end
