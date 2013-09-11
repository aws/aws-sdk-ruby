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
    class Node
      include Types
      include Shapes

      class IndifferentHash < Hash
        def [](k) super(k.to_s) end
        def []=(k, v) super(k.to_s, v) end
        def has_key?(k) super(k.to_s) end
      end

      class << self
        # @!macro [attach] model.property
        #   @!attribute $1
        #     @return [$2]
        def property(name, klass, opts = {})
          attr_accessor(name)
          @properties ||= IndifferentHash.new
          @inner_properties ||= IndifferentHash.new

          property = Property.new(name, klass, opts)
          if property.serialized_location
            @inner_properties[property.serialized_location] = true
          end

          @properties[property.serialized_name] = property
        end

        # @!attribute [r] properties
        def properties
          return @final_properties if @final_properties

          @final_properties = IndifferentHash.new

          klass = superclass
          while klass != Node
            @final_properties.update(klass.properties)
            klass = klass.superclass
          end

          @final_properties.update(@properties) if @properties
          @final_properties
        end

        # @!attribute [r] inner_properties
        def inner_properties
          return @final_inner_properties if @final_inner_properties

          @final_inner_properties = IndifferentHash.new

          klass = superclass
          while klass != Node
            @final_inner_properties.update(klass.inner_properties)
            klass = klass.superclass
          end

          if @inner_properties
            @final_inner_properties.update(@inner_properties)
          end

          @final_inner_properties
        end

        def from_hash_class(hash) self end

        def from_hash(hash)
          return unless hash

          unrecognized_properties = []
          klass = from_hash_class(hash)
          obj = klass.new
          hashes = [hash]
          while hashes.size > 0
            hashes.pop.each do |key, value|
              next hashes.unshift(value) if inner_properties[key.to_s]

              if prop = klass.properties[key.to_s]
                obj.send("#{prop.name}=", prop.load_from(hash))
              else
                unrecognized_properties << key
              end
            end
          end

          if unrecognized_properties.size > 0
            raise "Unrecognized properties: " +
                  "#{unrecognized_properties.join(', ')} on #{hash}"
          else
            obj
          end
        end
      end

      def to_hash
        self.class.properties.inject({}) do |hsh, (key, prop)|
          prop.write_to(hsh, send(prop.name)); hsh
        end
      end
    end
  end
end
