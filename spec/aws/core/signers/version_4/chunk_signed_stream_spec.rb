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
require 'stringio'

module AWS
  module Core
    module Signers
      class Version4

        describe ChunkSignedStream do

          let(:body) { 'hello' }

          let(:req) {
            req = Http::Request.new
            req.headers = { 'content-length' => body.size }
            req.body_stream = StringIO.new(body)
            req
          }

          let(:credentials) {
            CredentialProviders::StaticProvider.new(
              :access_key_id => 'akid',
              :secret_access_key => 'secret')
          }

          let(:signer) { Version4.new(credentials, 'service', 'region') }

          let(:signed_stream) { described_class.new(*init_args) }

          let(:sign) { signer.sign_request(req, :chunk_signing => true) }

          context '#read' do

            before(:each) { sign }

            it 'returns the number of bytes equal to the caculated size' do
              expected_size = req.body_stream.read.size
              req.headers['content-length'].to_i.should eq(expected_size)
            end

          end

        end
      end
    end
  end
end
