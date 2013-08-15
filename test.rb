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
  property :global_endpoint, String
  property :checksum_format, String
end

class Seahorse::Model::Operation
  property :documentation_url, String
  property :response_code, Integer, in: :http
end

class Seahorse::Model::Shapes::Shape
  property :location_name, String
  property :payload, Boolean
  property :streaming, Boolean
end

class DummySenderPlugin < Seahorse::Client::Plugin
  option(:response_body) { '' }

  handler :Handler, step: :send do |context|
    response = Seahorse::Client::Response.new(context: context)
    response.http_response.body = StringIO.new(context.config.response_body)
    response.signal_complete
  end
end

def options_for_client_class(endpoint, versions, plugins)
  plugins = [
    Aws::Plugins::GlobalConfiguration,
    Aws::Plugins::VersionedApiLoader,
    Aws::Plugins::RegionalEndpoint,
    Aws::Plugins::EnvironmentCredentials,
    Aws::Plugins::RestProtocol,
    Aws::Plugins::ContentLength
    #DummySenderPlugin
  ] + plugins.map {|plugin| "Aws::Plugins::#{plugin}" }

  {
    plugins: plugins,
    api: {
      'metadata' => {
        'aws_api_versions' => versions.inject({}) {|hsh, version|
          hsh[version] = "models/#{endpoint}-#{version}.json"; hsh
        }
      }
    }
  }
end

def client_class(endpoint, versions, plugins)
  opts = options_for_client_class(endpoint, versions, plugins)
  Seahorse::Client.define(opts)
end

SWF = client_class 'swf', %w(2012-01-25), %w(RpcProtocol Signers::Version3 JsonSerializer)
EMR = client_class 'elasticmapreduce', %w(2009-03-31), %w(RpcProtocol Signers::Version4 JsonSerializer)
CloudFront = client_class 'cloudfront', %w(2013-05-12), %w(Signers::Version4 XmlSerializer)
S3 = client_class 's3', %w(2006-03-01), %w(Signers::Version4)

emr = EMR.new
cloudfront = CloudFront.new
s3 = S3.new

s3.put_object Bucket: 'lorenfoo', Key: 'foo', Body: 'hello', ContentType: 'text/plain'
resp = s3.get_object Bucket: 'lorenfoo', Key: 'foo'
pp resp.data
