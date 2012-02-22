# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  class SimpleWorkflow

    # @private
    module Errors

      module ModeledError

        def initialize(request = nil, response = nil)
          message = extract_message(response)
          include_error_type(response) if response
          super(request, response, message)
        end

        def extract_message(response)
          if response and
              response.body
            JSON.load(response.body)["message"] || code
          else
            code
          end
        end

        def include_error_type(response)
          if response.status >= 500
            extend Errors::ServerError
          else
            extend Errors::ClientError
          end
        end

        def code
          self.class.name =~ /(::)?([^:]+)$/
          $2
        end

      end

      include Core::LazyErrorClasses

    end

  end
end
