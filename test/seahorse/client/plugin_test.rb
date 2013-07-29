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

module Seahorse
  module Client
    describe Plugin do

      def handlers
        @handlers ||= HandlerList.new
      end

      def config
        @config ||= Configuration.new
      end

      describe '#add_configuration' do

        it 'does nothing by default' do
          Plugin.new.add_configuration(config)
        end

        it 'applies options registered by .add_configuration_option'

      end

      describe '#add_handlers' do

        it 'does nothing by default' do
          Plugin.new.add_handlers(handlers, config)
        end

        it 'applies hanlers registered by .add_handler'

      end
    end
  end
end
