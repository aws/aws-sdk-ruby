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
    class Signer < Seahorse::Client::Plugin

      # @api private
      class SignatureHandler

        def initialize(signer)
          @signer = signer
        end

        def new(handler)
          @handler = handler
          self
        end

        def call(context)
          @signer.sign(context)
          @handler.call(context)
        end

      end

      def add_handlers(handlers, config)
        version = config.api.metadata['aws_signer']
        signer = Signers.const_get(version)
        handlers.add(SignatureHandler.new(signer), step: :sign)
      end
    end
  end
end
