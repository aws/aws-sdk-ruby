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


require 'seahorse'
require 'builder'

module Aws
  module Xml
    class Builder
      include Seahorse::Model::Shapes

      def initialize(builder = ::Builder::XmlMarkup.new)
        @builder = builder
      end

      def build(data, shape)
        build_shape(data, shape, shape.shape_name || "ROOT")
      end

      private

      def build_shape(data, shape, name)
        meth = case data
        when Hash; MapShape === shape ? :build_map : :build_structure
        when Array; :build_list
        else :build_scalar
        end

        send(meth, data, shape, name)
      end

      def build_structure(data, shape, name)
        @builder.send(name) do
          data.each do |key, value|
            build_shape(value, shape ? shape.members[key] : nil, key)
          end
        end
      end

      def build_list(data, shape, name)
        @builder.send(name) do
          data.each.with_index do |value, i|
            name = shape && shape.members.xmlname || 'Item'
            build_shape(value, shape ? shape.members : nil, name)
          end
        end
      end

      def build_map(data, shape, name)
      end

      def build_scalar(data, shape, name)
        @builder.send(name, data.to_s)
      end
    end
  end
end
