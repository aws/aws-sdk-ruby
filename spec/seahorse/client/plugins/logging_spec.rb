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

module Seahorse
  module  Client
    module Plugins
      describe Logging do

        def setup_plugin(options = {})
          @config ||= Configuration.new(options)
          @handlers ||= HandlerList.new
          Logging.new.add_options(@config)
          Logging.new.add_handlers(@handlers, @config)
        end

        it 'adds default configuration options' do
          setup_plugin
          expect(@config.logger).to be(nil)
          expect(@config.log_level).to equal(:info)
          expect(@config.log_formatter).to eq(Client::Logging::Formatter.default)
        end

        it 'adds a handler when a :logger is configured' do
          logger = Object.new
          setup_plugin(logger: logger)
          expect(@config.logger).to be(logger)
          expect(@handlers.first).to be(Client::Logging::Handler)
        end

        it 'skips the handler when :logger is not configured' do
          setup_plugin # no logger
          expect(@config.logger).to be(nil)
          expect(@handlers.to_a).to eq([])
        end

        it 'adds the handler to the bottom of the stack' do
          @handlers = double('handler-list')
          expect(@handlers).to receive(:add).
            with(Client::Logging::Handler, step: :validate)
          setup_plugin(logger: Object.new)
        end

      end
    end
  end
end
