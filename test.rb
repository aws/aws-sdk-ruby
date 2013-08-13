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


require 'bundler/setup'
require 'aws-sdk-core'
require 'json'
require 'pp'
require 'stringio'

class Seahorse::Model::Api
  property :json_version, String
  property :target_prefix, String
  property :timestamp_format, String
end

class DummySenderPlugin < Seahorse::Client::Plugin
  option(:response_body) { '' }

  handler :Handler, priority: :send do |context|
    response = Seahorse::Client::Response.new(context: context)
    response.http_response.body = StringIO.new(context.config.response_body)
    response.signal_complete
  end
end

MyClient = Seahorse::Client.define api: {
  'plugins' => [
    Aws::Plugins::VersionedApiLoader,
    Aws::Plugins::RegionalEndpoint,
    Aws::Plugins::EnvironmentCredentials,
    Aws::Plugins::Signers::Version3,
    Aws::Plugins::JsonSerializer,
    #DummySenderPlugin
  ],
  'metadata' => {
    'aws_api_versions' => {
      '2012-01-25' => 'models/swf-2012-01-25.json'
    },
    'regional_endpoint' => 'swf.%s.amazonaws.com'
  }
}

client = MyClient.new region: 'us-east-1',
  ssl_default: false, api_version: '2012-01-25'

resp = client.list_domains(registrationStatus: 'REGISTERED')
pp resp.data

