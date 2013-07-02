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

require 'seahorse/client/configuration'
require 'seahorse/client/endpoint'
require 'seahorse/client/request'
require 'seahorse/client/version'
require 'set'

module Seahorse
  class Client

    @plugin_list = Set.new

    # @option options [String, URI::HTTP, URI::HTTPS, Endpoint] :endpoint
    #   Endpoints specify the http scheme, hostname and port to connect
    #   to.  You must specify at a minimum the hostname.  Endpoints without
    #   a uri scheme will default to https on port 443.
    #
    #       # defaults to https on port 443
    #       :hostname => 'domain.com'
    #
    #       # defaults to http on port 80
    #       :hostname => 'domain.com', :ssl_default => false
    #
    #       # defaults are ignored, as scheme and port are present
    #       :hostname => http://domain.com:123
    #
    # @option options [Boolean] :ssl_default (true) Specifies the default
    #   scheme for the #endpoint when not specified.  Defaults to `true`
    #   which creates https endpoints.
    #
    def initialize(options = {})
      @config = build_config(options)
      @endpoint = build_endpoint(options)
    end

    # @return [Endpoint]
    attr_reader :endpoint

    # @return [Configuration]
    attr_reader :config

    # Builds and returns a {Request} for the named operation.  The request
    # will not have been sent.
    # @param [Symbol, String] operation_name
    # @return [Request]
    def build_request(operation_name, params = {})
      req = Request.new(params)
      req.on(:build) {|http_request, params| http_request.endpoint = endpoint }
      req
    end

    private

    # @param [Hash] options
    def build_config(options)
      Configuration.new(options)
    end

    # @option options [:endpoint] The preferred endpoint.  When not set,
    #   the endpoint will default to the value set in the API.
    # @return [Endpoint]
    def build_endpoint(options)
      endpoint = options[:endpoint] || default_endpoint
      Endpoint.new(endpoint, :ssl_default => config.ssl_default)
    end

    # @return [String] Returns the default endpoint for the client.
    def default_endpoint
      api['endpoint']
    end

    # @return [Hash]
    def api
      self.class.api
    end

    class << self

      # Registers a plugin with this client.
      #
      # @example Register a plugin
      #
      #   ClientClass.add_plugin(PluginClass)
      #
      # @example Register a plugin by name
      #
      #   ClientClass.add_plugin('gem-name.PluginClass')
      #
      # @example Register a plugin with an object
      #
      #   plugin = MyPluginClass.new(options)
      #   ClientClass.add_plugin(plugin)
      #
      # @param [Class, Symbol, String, Object]
      # @see .remove_plugin
      # @see .plugins
      # @return [nil]
      def add_plugin(plugin)
        plugin_list << plugin
        nil
      end

      # @see .add_plugin
      # @see .plugins
      # @return [nil]
      def remove_plugin(plugin)
        plugin_list.delete(plugin)
        nil
      end

      # Returns the list of registered plugins for this Client.  Plugins are
      # inherited from the client super class when the client is defined.
      # @see .add_plugin
      # @see .remove_plugin
      # @return [Array]
      def plugins
        plugin_list.to_a.freeze
      end

      # @param [Hash] api
      # @return [Class]
      def define(api)
        client_class = Class.new(Client)
        client_class.set_api(api)
        client_class
      end

      # @return [Hash]
      def api
        @api
      end

      # @param [Hash] api
      def set_api(api)
        @api = api
      end

      private

      def plugin_list
        @plugin_list
      end

      def inherited(subclass)
        subclass.instance_variable_set('@plugin_list', Set.new(plugin_list))
      end

    end

  end
end
