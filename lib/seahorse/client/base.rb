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
      def initialize(options = {})
        @plugins = self.class.build_plugins
        @config = build_config(options)
        @handlers = build_handlers
        initialize_client
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

      # Constructs a {Configuration} object and gives each plugin the
      # opportunity to register options with default values.
      def build_config(options)
        options = options.merge(api: self.class.api) unless options[:api]
        config = Configuration.new(options)
        @plugins.each do |plugin|
          plugin.add_options(config) if plugin.respond_to?(:add_options)
        end
        config
      end

      # Gives each plugin the opportunity to modify this client.
      def initialize_client
        @plugins.each do |plugin|
          if plugin.respond_to?(:initialize_client)
            plugin.initialize_client(self)
          end
        end
      end

      # Gives each plugin the opportunity to register handlers for this client.
      def build_handlers
        handlers = HandlerList.new
        @plugins.each do |plugin|
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
        # @option options [Array<Plugin>] :plugins ([]) A list of plugins to
        #   add to the client class created.
        # @return [Class<Client::Base>]
        def define(options = {})
          subclass = Class.new(self)
          subclass.set_api(options[:api]) if options.key?(:api)
          Array(options[:plugins]).each do |plugin|
            subclass.add_plugin(plugin)
          end
          subclass
        end

        # @api private
        def new(options = {})
          client = client_class(options).allocate
          client.send(:initialize, options)
          client
        end

        # @param [Hash] options ({})
        # @return [Class<Client::Base>]
        def client_class(options = {})
          klass = self
          build_plugins.each do |plugin|
            if plugin.respond_to?(:client_class_for)
              new_klass = plugin.client_class_for(klass, options)
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

        private

        def inherited(subclass)
          subclass.instance_variable_set('@plugins', PluginList.new(@plugins))
        end

      end
    end
  end
end
