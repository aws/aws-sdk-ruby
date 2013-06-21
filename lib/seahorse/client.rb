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

require 'seahorse/client/version'
require 'seahorse/client/configuration'
require 'seahorse/client/endpoint'

module Seahorse
  class Client

    # @option options [Endpoint, URI::HTTP, URI::HTTPS, String] :endpoint
    #   Endpoints specify the http scheme, hostname and port to connect
    #   to.  You must specify at a minimum the hostname.  Endpoints without
    #   a uri scheme will default to https on port 443.
    #
    #       # defaults to https on port 443
    #       :hostname => 'domain.com'
    #
    #       # defaults to http on port 80
    #       :hostname => 'domain.com', :use_ssl => false
    #
    #       # defaults are ignored, as scheme and port are present
    #       :hostname => http://domain.com:123
    #
    def initialize(options = {})
      @config = Configuration.new(options)
      @endpoint = build_endpoint(options)
    end

    # @return [Endpoint]
    attr_reader :endpoint

    # @return [Configuration]
    attr_reader :config

    private

    # @option options [:endpoint] The preferred endpoint.  When not set,
    #   the endpoint will default to the value set in the API.
    # @return [Endpoint]
    def build_endpoint(options = {})
      Endpoint.new(options[:endpoint] || api['endpoint'], options)
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
