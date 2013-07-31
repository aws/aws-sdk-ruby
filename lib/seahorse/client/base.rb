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
  module Client
    class Base

      @plugins = PluginList.new([
        Plugins::Api,
        Plugins::Endpoint,
        Plugins::NetHttp,
      ])

      # @option options [String] :endpoint
      #   Endpoints specify the http scheme, hostname and port to connect
      #   to.  You must specify at a minimum the hostname.  Endpoints without
      #   a uri scheme will default to https on port 443.
      #
      #       # defaults to https on port 443
      #       hostname: 'domain.com'
      #
      #       # defaults to http on port 80
      #       hostname: 'domain.com', ssl_default: false
      #
      #       # defaults are ignored, as scheme and port are present
      #       hostname: 'http://domain.com:123'
      #
      # @option options [Boolean] :ssl_default (true) Specifies the default
      #   scheme for the #endpoint when not specified.  Defaults to `true`
      #   which creates https endpoints.
      #
      # @option options [Handler] :send_handler
      #
      def initialize(options = {})
        plugins = build_plugins
        @config = build_config(plugins, options)
        @handler = handler_list(plugins, options).to_stack(@config)
      end

      # @return [Configuration]
      attr_reader :config

      # Builds and returns a {Request} for the named operation.  The request
      # will not have been sent.
      # @param [Symbol, String] operation_name
      # @return [Request]
      def build_request(operation_name, params = {})
        Request.new(@handler, context_for(operation_name, params))
      end

      private

      # @return [Array<Plugin>]
      def build_plugins
        self.class.plugins.map do |plugin|
          plugin.is_a?(Class) ? plugin.new : plugin
        end
      end

      # @param [Array<Plugin>] plugins
      # @param [Hash] options
      # @return [Configuration]
      def build_config(plugins, options)
        options = options.merge(:api => self.class.api) unless options[:api]
        @config = Configuration.new(options)
        plugins.each do |plugin|
          plugin.add_options(@config) if plugin.respond_to?(:add_options)
        end
        @config
      end

      # @param [Array<Plugin>] plugins
      # @option options [HttpHandler] :send_handler (nil)
      # @return [HandlerList]
      def handler_list(plugins, options)
        list = plugin_handlers(plugins)
        if options[:send_handler]
          list.add(options[:send_handler], priority: :send)
        end
        list
      end

      # @param [Array<Plugin>] plugins
      # @return [HandlerList]
      def plugin_handlers(plugins)
        handlers = HandlerList.new
        plugins.each do |plugin|
          if plugin.respond_to?(:add_handlers)
            plugin.add_handlers(handlers, @config)
          end
        end
        handlers
      end

      # @return [RequestContext]
      def context_for(operation_name, params)
        RequestContext.new(
          operation_name: operation_name.to_s,
          params: params,
          config: config)
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
        # @param [Class, Symbol, String, Object] plugin
        # @see .set_plugins
        # @see .remove_plugin
        # @see .plugins
        # @return [void]
        def add_plugin(plugin)
          @plugins.add(plugin)
        end

        # @see .set_plugins
        # @see .add_plugin
        # @see .plugins
        # @return [void]
        def remove_plugin(plugin)
          @plugins.remove(plugin)
        end

        # @param [Array<Plugin>] plugins
        # @see .add_plugin
        # @see .remove_plugin
        # @see .plugins
        # @return [void]
        def set_plugins(plugins)
          @plugins.set(plugins)
        end

        # Returns the list of registered plugins for this Client.  Plugins are
        # inherited from the client super class when the client is defined.
        # @see .set_plugins
        # @see .add_plugin
        # @see .remove_plugin
        # @return [Array]
        def plugins
          Array(@plugins).freeze
        end

        # @return [Model::Api]
        def api
          @api ||= Model::Api.new
        end

        # @param [Model::Api, Hash] api
        # @return [Model::Api]
        def set_api(api)
          api = Model::Api.from_hash(api) if api.is_a?(Hash)
          Array(api.plugins).each do |plugin|
            add_plugin(plugin)
          end
          @api = api
        end

        # @option options [Model::Api, Hash] :api ({})
        # @return [Class]
        def define(options = {})
          client_class = Class.new(self)
          client_class.set_api(options[:api]) if options.key?(:api)
          client_class
        end

        private

        def inherited(subclass)
          subclass.instance_variable_set('@plugins', PluginList.new(@plugins))
        end

      end
    end
  end
end
