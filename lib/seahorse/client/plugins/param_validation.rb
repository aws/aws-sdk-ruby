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

module Seahorse
  module Client
    module Plugins
      class ParamValidation

        def add_options(config)
          config.add_option(:validate_params, true)
        end

        def add_handlers(handlers, config)
          handlers.add(Handler, step: :validate) if config.validate_params
        end

        class Handler < Client::Handler

          def call(context)
            ParamValidator.validate!(context.operation.input, context.params)
            @handler.call(context)
          end

        end

      end
    end
  end
end
