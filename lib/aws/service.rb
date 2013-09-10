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
  class Service

    def initialize(options = {})
      @client = self.class.const_get(:Client).new(options)
    end

    # @return [Seahorse::Base::Client]
    attr_reader :client

    # @api private
    def inspect
      "#<#{self.class.name}>"
    end

    class << self

      # @api private
      attr_accessor :method_name

      # @api private
      def define(method_name, apis = [])
        klass = Class.new(self)
        klass.method_name = method_name
        klass.const_set(:Client, ClientFactory.define(method_name, apis))
        klass
      end

    end
  end
end
