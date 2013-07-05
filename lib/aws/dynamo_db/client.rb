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

    # Client class for Amazon DynamoDB.
    class Client < ClientBase

      autoload :V20111205, 'aws/dynamo_db/client/v20111205'
      autoload :V20120810, 'aws/dynamo_db/client/v20120810'

      DEFAULT_API_VERSION = '2011-12-05'

      # client methods #
      # end client methods #

      def inspect
        self.class.name
      end

      class << self

        def new(*args, &block)
          options = args.last.is_a?(Hash) ? args.last : {}
          client = client_class(options).allocate
          client.send(:initialize, *args, &block)
          client
        end

        private

        def client_class(options)
          api_version = options[:api_version] || const_get(:DEFAULT_API_VERSION)
          const_get("V#{api_version.gsub(/-/, '')}")
        end

      end
    end
  end
end
