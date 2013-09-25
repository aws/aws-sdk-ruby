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
    class SignatureV4 < Seahorse::Client::Plugin

      option(:signing_name) do |config|
        config.api.metadata['signing_name'] ||
          config.endpoint.split(/[.-]/)[0]
      end

      option(:signing_region) do |config|
        config.respond_to?(:region) ? config.region : 'us-east-1'
      end

      handle(:Handler, step: :sign) do |context|
        Signers::V4.new(
          context.config.credentials,
          context.config.signing_name,
          context.config.signing_region
        ).sign(context.http_request)
        @handler.call(context)
      end

    end
  end
end
