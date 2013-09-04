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
    describe ContentLength do
      let(:sender) { DummySendHandler.new }
      let(:handler) { ContentLength::Handler.new(sender) }
      let(:api) { load_api('swf') }
      let(:context_opts) { { config: config, operation_name: 'list_domains' } }
      let(:context) { Seahorse::Client::RequestContext.new(context_opts) }
      let(:response) { handler.call(context) }
      let(:config) do
        config = Seahorse::Client::Configuration.new
        config.add_option(:response_body, '{}')
        config.add_option(:api, api)
        config
      end

      it 'adds content-length to regular payload' do
        context.http_request.body = StringIO.new('BODY')
        expect(response.http_request.headers['content-length']).to eq '4'
      end
    end
  end
end
