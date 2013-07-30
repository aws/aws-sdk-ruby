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

require 'test_helper'
require 'logger'

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
          @config.logger.must_equal(nil)
          @config.log_level.must_equal(:info)
          @config.log_formatter.must_equal(Logging::Formatter.default)
        end

        it 'adds a handler when a :logger is configured' do
          logger = Object.new
          setup_plugin(logger: logger)
          @config.logger.must_equal(logger)
          @handlers.first.must_equal(Logging::Handler)
        end

        it 'skips the handler when :logger is not configured' do
          setup_plugin # no logger
          @config.logger.must_equal(nil)
          @handlers.to_a.must_equal([])
        end

        it 'adds the handler :before_validate (at the bottom of the stack)' do
          @handlers = Minitest::Mock.new
          @handlers.expect(:add, nil,
            [Logging::Handler, { priority: :before_validate }])
          setup_plugin(logger: Object.new)
          @handlers.verify
        end

      end
    end
  end
end
