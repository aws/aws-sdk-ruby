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
    describe JsonSerializer do
      let(:response_body) { '{"domainInfos": [{"name": "Hello"}]}' }
      let(:response) { client.list_domains(registration_status: 'value') }
      let(:client) { new_client('swf', response_body: response_body) }
      let(:http_request) { response.http_request }
      let(:http_response) { response.http_response }

      it 'always uses POST' do
        expect(http_request.http_method).to eq 'POST'
      end

      it 'always points to /' do
        expect(http_request.path).to eq '/'
      end

      it 'sets x-amz-target header' do
        result = 'SimpleWorkflowService.ListDomains'
        expect(http_request.headers['x-amz-target']).to eq result
      end

      it 'sets content-type header' do
        result = 'application/x-amz-json-1.0'
        expect(http_request.headers['content-type']).to eq result
      end

      it 'serializes body parameters' do
        result = '{"registrationStatus":"value"}'
        expect(http_request.body.read).to eq result
      end

      it 'deserializes response to JSON' do
        expect(response.data).to eq domain_infos: [{name: 'Hello'}]
      end
    end
  end
end
