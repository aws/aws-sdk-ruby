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

class DummySenderPlugin < Seahorse::Client::Plugin
  option(:response_body) { '' }

  handler :Handler, step: :send do |context|
    response = Seahorse::Client::Response.new(context: context)
    response.http_response.body = context.config.response_body
    response.signal_complete
  end
end

def options_for_client_class(endpoint, versions, plugins)
  plugins = [
    Aws::Plugins::GlobalConfiguration,
    Aws::Plugins::VersionedApiLoader,
    Aws::Plugins::RegionalEndpoint,
    Aws::Plugins::EnvironmentCredentials,
    #Aws::Plugins::RestProtocol,
    Aws::Plugins::ContentLength
    #DummySenderPlugin
  ] + plugins.map {|plugin| "Aws::Plugins::#{plugin}" }

  {
    plugins: plugins,
    api: {
      'metadata' => {
        'aws_api_versions' => versions.inject({}) {|hsh, version|
          hsh[version] = "apis/#{endpoint}-#{version}.json"; hsh
        }
      }
    }
  }
end

def client_class(endpoint, versions, plugins)
  opts = options_for_client_class(endpoint, versions, plugins)
  Seahorse::Client.define(opts)
end

SWF = client_class 'swf', %w(2012-01-25), %w(Signers::Version3 JsonSerializer)
EMR = client_class 'elasticmapreduce', %w(2009-03-31), %w(Signers::Version4 JsonSerializer)
CloudFront = client_class 'cloudfront', %w(2013-05-12), %w(Signers::Version4 XmlSerializer)
S3 = client_class 's3', %w(2006-03-01), %w(Signers::Version4 XmlSerializer)
OpsWorks = client_class 'opsworks', %w(2013-02-18), %w(Signers::Version4 JsonSerializer)

swf = SWF.new
emr = EMR.new
cloudfront = CloudFront.new
s3 = S3.new
opsworks = OpsWorks.new

#resp = s3.put_object Bucket: 'lorenfoo', Key: 'foo', Body: 'hello', ContentType: 'text/plain'
#pp resp.http_request
# resp = s3.get_object Bucket: 'lorenfoo', Key: 'foo'
#pp resp.data

#pp s3.put_bucket_logging

# cloudfront.create_distribution2013_05_12(DistributionConfig: {
#   CallerReference: "Foo",
#   Enabled: true,
#   Aliases: {
#     Quantity: 1,
#     Items: [
#       "Foo", "Bar", "Baz"
#     ]
#   }
# }).data

pp swf.list_domains(registration_status: 'REGISTERED').data

# pp opsworks.describe_stacks.data
