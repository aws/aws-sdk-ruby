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
      @config = @client.config
    end

    # @return [Seahorse::Client::Base]
    attr_reader :client

    # @return [Seahorse::Client::Configuration]
    attr_reader :config

    # @api private
    def inspect
      "#<#{self.class.name}>"
    end

    class << self

      # @return [Symbol]
      # @api private
      attr_accessor :identifier

      # @param [Symbol] identifier The downcased short name for this service.
      # @param [Array<Api, String>] An array of client APIs for this service.
      #   Values may be string paths to API files or instances of
      #   `Seahorse::Model::Api`.
      # @return [Class<Service>]
      # @api private
      def define(identifier, apis = [])
        klass = Class.new(self)
        klass.identifier = identifier
        klass.const_set(:Client, ClientFactory.define(identifier, apis))
        klass
      end

    end
  end
end
