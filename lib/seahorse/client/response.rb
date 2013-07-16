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
  class Client
    class Response

      # @option options [Context] :context (nil)
      def initialize(options = {})
        @context = options[:context]
        @status_code = options[:status_code]
      end

      # @return [Context, nil]
      attr_accessor :context

      # @return [Integer, nil]
      attr_accessor :status_code

    end
  end
end
