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

require 'simplecov' if ENV['COVERAGE']
require 'rspec'
require 'aws-sdk-core'

require 'seahorse'
require 'multi_json'
require 'yaml'

# A helper :send_handler that does not send the request, it simply
# returns an empty response.
class DummySendHandler < Seahorse::Client::Handler

  def call(context)
    headers = context.config.response_headers
    headers = Seahorse::Client::Http::Headers.new(headers)
    context.http_response.headers = headers
    context.http_response.status_code = context.config.response_status_code
    context.http_response.body = StringIO.new(context.config.response_body)
    Seahorse::Client::Response.new(context: context).signal_complete
  end

end

class DummySendPlugin < Seahorse::Client::Plugin
  option(:response_body) { '{}' }
  handler DummySendHandler, step: :send
end
def fixture(name, raw = false)
  @fixtures ||= {}
  if !@fixtures[[name, raw]]
    file = File.join(File.dirname(__FILE__), 'fixtures', name)
    contents = File.read(file)
    @fixtures[[name, raw]] = raw ? contents : MultiJson.load(contents)
  end

  @fixtures[[name, raw]]
end

def load_api(api)
  Aws::ApiTranslator.translate(fixture("api/#{api}.json"))
end

def new_client_class(api)
  api = load_api(api) if String === api
  Seahorse::Client::Base.define(api: api, plugins: [DummySendPlugin])
end

def new_client(api, opts = {})
  new_client_class(api).new(opts)
end

def call_handler(klass, opts = {}, &block)

  operation_name = opts.delete(:operation_name) || 'operation'
  params = opts.delete(:params) || {}

  config = opts.delete(:config) || Seahorse::Client::Configuration.new(opts)
  config.add_option(:response_status_code, 200)
  config.add_option(:response_headers, {})
  config.add_option(:response_body, '')
  opts.keys.each { |opt_name| config.add_option(opt_name) }

  context = Seahorse::Client::RequestContext.new(
    operation_name: operation_name,
    config: config,
    params: params)

  yield(context) if block_given?

  klass.new(DummySendHandler.new).call(context)

end
