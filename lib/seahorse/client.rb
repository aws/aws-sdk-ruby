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

require_relative 'client/endpoint'

module Seahorse
  class Client

    def initialize options = {}
      @endpoint = build_endpoint(options)
    end

    # @return [Endpoint]
    attr_reader :endpoint

    private

    # @return [Endpoint]
    def build_endpoint options
      Endpoint.new(options[:endpoint] || api['endpoint'])
    end

    # @return [Hash]
    def api
      self.class.api
    end

    class << self

      # @param [Hash] api
      # @return [Class]
      def define(api)
        client_class = Class.new(Client)
        client_class.send(:set_api, api)
        client_class
      end

      # @return [Hash]
      def api
        @api
      end

      private

      # @param [Hash] api
      def set_api(api)
        @api = api
      end

    end

  end
end
