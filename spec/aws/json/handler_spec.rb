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
  module Json
    describe Handler do
      let(:response) do
        call_handler Handler,
          api: load_api('swf'),
          response_body: '{"domainInfos": [{"name": "Hello"}]}',
          operation_name: 'list_domains',
          params: { registration_status: 'REGISTERED' }
      end

      it 'sets x-amz-target header' do
        target = 'SimpleWorkflowService.ListDomains'
        expect(response.http_request.headers['x-amz-target']).to eq(target)
      end

      it 'sets content-type header' do
        ctype = 'application/x-amz-json-1.0'
        expect(response.http_request.headers['content-type']).to eq(ctype)
      end

      it 'serializes body parameters' do
        body = '{"registrationStatus":"REGISTERED"}'
        expect(response.http_request.body.read).to eq(body)
      end

      it 'deserializes response to JSON' do
        expect(response.data.to_hash).to eq domain_infos: [{name: 'Hello'}]
      end
    end
  end
end
