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

module Aws
  module Plugins
    describe GlobalConfiguration do
      let(:client_class) do
        klass = Class.new(Seahorse::Client::Base)
        klass.add_plugin(GlobalConfiguration)
        klass
      end

      def plugin(&block)
        Class.new(Seahorse::Client::Plugin, &block)
      end

      def global_config(options = {})
        allow(Aws).to receive(:config).and_return(options)
      end

      before { global_config }

      it 'uses global configuration settings for options with no default' do
        global_config(property: 'global')
        client_class.add_plugin plugin { option :property }
        client = client_class.new
        expect(client.config.property).to eq 'global'
      end

      it 'uses global configuration settings even if option has default' do
        global_config(property: 'global')
        client_class.add_plugin plugin { option :property, 'default' }
        client = client_class.new
        expect(client.config.property).to eq 'global'
      end

      it 'does not use global configuration setting if provided in constructor' do
        global_config(property: 'global')
        client_class.add_plugin plugin { option :property, 'default' }
        client = client_class.new property: 'user'
        expect(client.config.property).to eq 'user'
      end
    end
  end
end
