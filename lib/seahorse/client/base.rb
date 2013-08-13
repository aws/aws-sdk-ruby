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

      # @api private
      REQUIRED_PLUGINS = [
        Plugins::Api,
        Plugins::Endpoint,
      ]

      # default plugins
      @plugins = PluginList.new([
        Plugins::NetHttp,
        Plugins::OperationMethods,
      ])

      # @overload initialize(options = {})
      #
      #   @option options [String] :endpoint
      #     Endpoints specify the http scheme, hostname and port to connect
      #     to.  You must specify at a minimum the hostname.  Endpoints without
      #     a uri scheme will default to https on port 443.
      #
      #         # defaults to https on port 443
      #         hostname: 'domain.com'
      #
      #         # defaults to http on port 80
      #         hostname: 'domain.com', ssl_default: false
      #
      #         # defaults are ignored, as scheme and port are present
      #         hostname: 'http://domain.com:123'
      #
      #   @option options [Boolean] :ssl_default (true) Specifies the default
      #     scheme for the #endpoint when not specified.  Defaults to `true`
      #     which creates https endpoints.
      #
      def initialize(config)
        plugins = self.class.build_plugins
        @config = config
        @handlers = handler_list(plugins)
        initialize_client(plugins)
      end

      # @return [Configuration]
      attr_reader :config

      # Builds and returns a {Request} for the named operation.  The request
      # will not have been sent.
      # @param [Symbol, String] operation_name
      # @return [Request]
      def build_request(operation_name, params = {})
        Request.new(@handlers, context_for(operation_name, params))
      end

      private

      # @param [Array<Plugin>] plugins
      # @return [void]
      def initialize_client(plugins)
        plugins.each do |plugin|
          if plugin.respond_to?(:initialize_client)
            plugin.initialize_client(self)
          end
        end
      end

      # @param [Array<Plugin>] plugins
      # @return [HandlerList]
      def handler_list(plugins)
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
        # @see .clear_plugins
        # @see .set_plugins
        # @see .remove_plugin
        # @see .plugins
        # @return [void]
        def add_plugin(plugin)
          @plugins.add(plugin)
        end

        # @see .clear_plugins
        # @see .set_plugins
        # @see .add_plugin
        # @see .plugins
        # @return [void]
        def remove_plugin(plugin)
          @plugins.remove(plugin)
        end

        # @see .set_plugins
        # @see .add_plugin
        # @see .remove_plugin
        # @see .plugins
        # @return [void]
        def clear_plugins
          @plugins.set([])
        end

        # @param [Array<Plugin>] plugins
        # @see .clear_plugins
        # @see .add_plugin
        # @see .remove_plugin
        # @see .plugins
        # @return [void]
        def set_plugins(plugins)
          @plugins.set(plugins)
        end

        # Returns the list of registered plugins for this Client.  Plugins are
        # inherited from the client super class when the client is defined.
        # @see .clear_plugins
        # @see .set_plugins
        # @see .add_plugin
        # @see .remove_plugin
        # @return [Array<Plugin>]
        def plugins
          (REQUIRED_PLUGINS + Array(@plugins)).freeze
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
          subclass = Class.new(self)
          subclass.set_api(options[:api]) if options.key?(:api)
          subclass
        end

        # @api private
        def new(options = {})
          plugins = build_plugins
          config = build_config(options, plugins)
          client = client_class(config, plugins).allocate
          client.send(:initialize, config)
          client
        end

        # @overload client_class(options = {})
        #   @option (see #initialize)
        #   @return [Class<Client::Base>]
        def client_class(options = {}, plugins = build_plugins)
          config = options.is_a?(Hash) ? build_config(options, plugins) : options
          klass = self
          plugins.each do |plugin|
            if plugin.respond_to?(:construct_client)
              new_klass = plugin.construct_client(klass, config)
              klass = new_klass if Class === new_klass
            end
          end
          klass
        end

        # @return [Array<Plugin>]
        # @api private
        def build_plugins
          plugins.map do |plugin|
            plugin.is_a?(Class) ? plugin.new : plugin
          end
        end

        # @param [Hash] options
        # @param [Array<Plugin>] plugins
        # @return [Configuration]
        # @api private
        def build_config(options, plugins)
          options = options.merge(api: api) unless options[:api]
          config = Configuration.new(options)
          plugins.each do |plugin|
            plugin.add_options(config) if plugin.respond_to?(:add_options)
          end
          config
        end

        private

        def inherited(subclass)
          subclass.instance_variable_set('@plugins', PluginList.new(@plugins))
        end

      end
    end
  end
end
