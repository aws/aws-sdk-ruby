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
    module Logging
      class Handler < Client::Handler

        # @param [RequestContext] context
        # @return [Response]
        def call(context)
          context[:started_at] = Time.now
          super.on_complete do |response|
            context[:completed_at] = Time.now
            log(response)
          end
        end

        private

        # @param [Response] response
        # @return [void]
        def log(response)
          @config.logger.send(@config.log_level, format(response))
        end

        # @param [Response] response
        # @return [String]
        def format(response)
          @config.log_formatter.format(response)
        end

      end
    end
  end
end
