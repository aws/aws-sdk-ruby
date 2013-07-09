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

module AWS
  class DynamoDB

    # Builds a client for Amazon DynamoDB.
    #
    #     ddb = AWS::DynamoDB::Client.new
    #
    # ## API Versions
    #
    # Amazon DynamoDB has multiple API versions.  It is important to know
    # which API you are using.  Each API version accepts different parameters
    # and returns data in a different format.
    #
    # By default, the oldest API version is used.  This ensures customers
    # who started using DynamoDB early would not get broken by API updates.
    # You can construct a client of a specific version by passing the
    # `:api_version` option to the {#initialize constructor}.
    #
    #     # defaults to the 2011-12-05 API version
    #     ddb = AWS::DynamoDB::Client.new
    #
    #     # specify the API version
    #     ddb = AWS::DynamoDB::Client.new(:api_version => '2011-12-05')
    #     ddb = AWS::DynamoDB::Client.new(:api_version => '2012-08-10')
    #
    # You can specify a global default API version using AWS.config:
    #
    #     AWS.config(:dynamo_db => { :api_version => '2012-08-10' })
    #
    #     AWS::DynamoDB::Client.new
    #     #=> AWS::DynamoDB::Client::V20120810
    #
    # @see V20111205
    # @see V20120810
    #
    class Client < ClientBase

      autoload :V20111205, 'aws/dynamo_db/client/v20111205'
      autoload :V20120810, 'aws/dynamo_db/client/v20120810'

      API_VERSION = '2011-12-05'

      # @api private
      def inspect
        "#<#{self.class.name}>"
      end

      class << self

        # @api private
        def new(*args, &block)
          options = args.last.is_a?(Hash) ? args.last : {}
          client = client_class(options).allocate
          client.send(:initialize, *args, &block)
          client
        end

        private

        def client_class(options)
          if name =~ /Client::V\d+$/
            self
          else
            const_get("V#{client_api_version(options).gsub(/-/, '')}")
          end
        end

        def client_api_version(options)
          api_version = options[:api_version]
          api_version ||= configured_version
          api_version || API_VERSION
        end

        def configured_version
          svc_opt = AWS::SERVICES[name.split('::')[1]].method_name
          AWS.config.send(svc_opt)[:api_version]
        end

      end
    end
  end
end
