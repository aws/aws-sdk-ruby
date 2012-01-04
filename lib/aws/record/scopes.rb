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

require 'aws/simple_db'
require 'aws/record/scope'

module AWS
  module Record

    module Scopes

      # Adds a scoped finder method to this class.  Given a call
      # to scope like:
      #
      #   scope :top_10, order(:popularity, :desc).limit(10) 
      #
      # Then you can call the method +top_10+ on the class and it will
      # return an enumerable scope object with the given find conditions.
      #
      # @param [Symbol] name The name of the scope.  Scope names should be
      #   method-safe and should not conflict with any other class methods.
      #
      def scope name, scope = nil, &block
        
        raise ArgumentError, "only a scope or block may be passed, not both" if
          scope and block_given?

        method_definition = scope ? 
          lambda{ scope } :
          block

        extend(Module.new { define_method(name, &method_definition) })

      end

      # @return [Scope] Returns a new scope object for this class.
      # @private
      private
      def _new_scope
        Scope.new(self)
      end

    end
  end
end
