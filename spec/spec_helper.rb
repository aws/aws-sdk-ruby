# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

if ENV['COVERAGE']
  require 'simplecov'
end

require 'rspec'
require 'webmock/rspec'
require 'seahorse'

# A helper :send_handler that does not send the request, it simply
# returns an empty response.
class DummySendHandler < Seahorse::Client::Handler
  def call(context)
    options = { context: context, data: context.config.response_data }
    Seahorse::Client::Response.new(options).signal_complete
  end
end

class DummySendPlugin < Seahorse::Client::Plugin
  option(:response_data) { { result: 'success' } }
  handler DummySendHandler, priority: :send
end

class Seahorse::Client::Base
  attr_reader :handlers
end

def client_class_with_plugin(&block)
  client = Seahorse::Client::Base.define
  client.set_plugins([Class.new(Seahorse::Client::Plugin, &block)])
  client
end

def client_with_plugin(options = {}, &block)
  client_class_with_plugin(&block).new(options)
end
