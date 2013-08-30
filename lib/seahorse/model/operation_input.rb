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
  module Model
    class OperationInput < Node
      property :params, Symbol => Shape, always_serialize: true
      property :raw_payload, Boolean

      def initialize(*)
        super
        @param_map = nil
      end

      def header_params; params_for('header') end
      def body_params; params_for('body') end
      def uri_params; params_for('uri') end

      def params_for(location)
        build_params[location]
      end

      private

      def build_params
        @param_map ||= params.inject({}) do |hsh, (member_name, shape)|
          (hsh[shape.location] ||= {})[member_name] = shape; hsh
        end
      end
    end
  end
end
