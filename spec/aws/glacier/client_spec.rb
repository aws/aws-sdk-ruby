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

module AWS
  class Glacier
    describe Client do

      let(:handler) { double('handler', :handle => nil) }

      let(:client) {
        Client.new(
          :access_key_id => 'akid',
          :secret_access_key => 'secret',
          :http_handler => handler)
      }

      context '#get_job_output' do

        let(:params) {{
          :account_id => '-',
          :vault_name => 'aws-sdk',
          :job_id => 'job-id',
        }}

        it 'returns the http response body as :output' do
          resp_body = '{}'
          handler.should_receive(:handle) do |req,resp|
            resp.status = 200
            resp.headers = {
              'x-amzn-requestid' => ['request-id'],
              'x-amz-sha256-tree-hash' => ['checksum'],
              'content-range' => ['range'],
              'accept-ranges' => ['bytes'],
              'content-type' => ['application/json'],
              'x-amz-archive-description' => ['description'],
              'date' => ['Wed, 16 Jan 2013 17:42:40 GMT'],
            }
            resp.body = resp_body
          end
          client.get_job_output(params).data.should eq({
            :body => resp_body,
            :request_id => 'request-id',
            :checksum => 'checksum',
            :content_range => 'range',
            :accept_ranges => 'bytes',
            :content_type => 'application/json',
            :archive_description => 'description',
          })
        end

        it 'yields the body when it receives a block' do
          resp_body = '{}'
          handler.should_receive(:handle) do |req,resp|
            resp.status = 200
            resp.headers = {
              'x-amzn-requestid' => ['request-id'],
            }
            resp.body = nil
          end.and_yield(resp_body)

          yielded = false
          resp = client.get_job_output(params) do |chunk|
            chunk.should eq('{}')
            yielded = true
          end

          resp.data.should eq({
            :body => nil,
            :request_id => 'request-id',
          })
          yielded.should eq(true)
        end

      end

    end
  end
end
