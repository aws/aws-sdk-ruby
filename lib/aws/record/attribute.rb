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
  module Record

    # Base class for all of the AWS::Record attributes.
    # @private
    class Attribute

      # @param [Symbol] Name of this attribute.  It should be a name that
      #   is safe to use as a method.
      # @param [Hash] options
      # @option options [Boolean] :set (false) When true this attribute can
      #   accept multiple unique values.  
      def initialize name, options = {}
        @name = name.to_s
        @options = options.dup
        if options[:set] and !self.class.allow_set?
          raise ArgumentError, "invalid option :set for #{self.class}"
        end
      end

      # @return [String] The name of this attribute
      attr_reader :name

      # @return [Hash] The hash of options this attribute was constructed with
      attr_reader :options

      # @return [Boolean] Returns true if this attribute can have 
      #   multiple values.
      def set?
        options[:set] ? true : false
      end

      # @return Returns the default value for this attribute.  Defaults to nil.
      def default_value
        options[:default_value]
      end

      # @param [Mixed] A single value to type cast.
      # @return [Mixed] Returns the type casted value.
      def type_cast raw_value
        self.class.type_cast(raw_value, options)
      end

      # @param [String] The serialized string value.
      # @return [Mixed] Returns a deserialized type-casted value.
      def deserialize serialized_value
        self.class.deserialize(serialized_value, options)
      end

      # Takes the type casted value and serializes it
      # @param [Mixed] A single value to serialize.
      # @return [Mixed] Returns the serialized value.
      def serialize type_casted_value
        self.class.serialize(type_casted_value, options)
      end
      
      # @param [String] serialized_value The string value as returned from AWS.
      # @return [Mixed] Returns the type-casted deserialized value.
      def self.deserialize serialized_value, options = {}
        self.type_cast(serialized_value, options)
      end

      # @return [Boolean] Returns true if this attribute type can be used
      #   with the +:set => true+ option.  Certain attirbutes can not 
      #   be represented with multiple values (like BooleanAttribute).
      def self.allow_set?
        raise 'allow_set? must be defined in subclasses'
      end

      # @private
      protected
      def self.expect klass, value, &block
        unless value.is_a?(klass)
          raise ArgumentError, "expected a #{klass} value, got #{value.class}"
        end
        yield
      end

    end
  end
end
