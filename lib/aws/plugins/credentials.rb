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


module Aws
  module Plugins
    class Credentials < Seahorse::Client::Plugin

      option(:credentials) do |config|
        Aws::Credentials.new(
          ENV['AWS_ACCESS_KEY_ID'] || ENV['AMAZON_ACCESS_KEY_ID'],
          ENV['AWS_SECRET_ACCESS_KEY'] || ENV['AMAZON_SECRET_ACCESS_KEY'],
          ENV['AWS_SESSION_TOKEN'] || ENV['AMAZON_SESSION_TOKEN']
        )
      end

      class MissingCredentialsError < RuntimeError; end

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          credentials = context.config.credentials
          raise MissingCredentialsError if credentials.nil? or !credentials.set?
          @handler.call(context)
        end

      end

      handler(Handler, step: :validate)

    end
  end
end
