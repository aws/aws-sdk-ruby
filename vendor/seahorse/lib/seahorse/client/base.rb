require 'thread'

module Seahorse
  module Client
    class Base

      include HandlerBuilder

      # These plugins are applied to every client and can not be removed.
      # @api private
      REQUIRED_PLUGINS = [
        Plugins::Api,
        Plugins::Endpoint,
      ]

      # default plugins
      @plugins = PluginList.new([
        Plugins::NetHttp,
        Plugins::OperationMethods,
        Plugins::ParamConversion,
        Plugins::ParamValidation,
        Plugins::RaiseResponseErrors,
      ])

      # @api private
      def initialize(plugins, options)
        @config = build_config(plugins, options)
        @handlers = handler_list(plugins)
        after_initialize(plugins)
      end

      # @return [Configuration<Struct>]
      attr_reader :config

      # @return [HandlerList]
      attr_reader :handlers

      # Builds and returns a {Request} for the named operation.  The request
      # will not have been sent.
      # @param [Symbol, String] operation_name
      # @return [Request]
      def build_request(operation_name, params = {})
        Request.new(
          @handlers.for(operation_name),
          context_for(operation_name, params))
      end

      # @param [String] name
      # @return [Model::Operation]
      def operation(name)
        config.api.operations[name] || raise("unknown operation `#{name}'")
      end

      # @api private
      def inspect
        "#<#{self.class.name}>"
      end

      private

      # Constructs a {Configuration} object and gives each plugin the
      # opportunity to register options with default values.
      def build_config(plugins, options)
        options = options.merge(api: self.class.api) unless options[:api]
        config = Configuration.new
        plugins.each do |plugin|
          plugin.add_options(config) if plugin.respond_to?(:add_options)
        end
        config.build!(options)
      end

      # Gives each plugin the opportunity to register handlers for this client.
      def handler_list(plugins)
        handlers = HandlerList.new
        plugins.each do |plugin|
          if plugin.respond_to?(:add_handlers)
            plugin.add_handlers(handlers, @config)
          end
        end
        handlers
      end

      # Gives each plugin the opportunity to modify this client.
      def after_initialize(plugins)
        plugins.each do |plugin|
          plugin.after_initialize(self) if plugin.respond_to?(:after_initialize)
        end
      end

      # @return [RequestContext]
      def context_for(operation_name, params)
        RequestContext.new(
          operation_name: operation_name.to_s,
          operation: operation(operation_name),
          client: self,
          params: params,
          config: config)
      end

      class << self

        def new(options = {})
          plugins = build_plugins
          options = options.dup
          before_initialize(plugins, options)
          client = allocate
          client.send(:initialize, plugins, options)
          client
        end

        # Used by plugins that modify the client class.
        attr_reader :mutex

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
          subclass.set_api(options[:api] || api)
          Array(options[:plugins]).each do |plugin|
            subclass.add_plugin(plugin)
          end
          subclass
        end
        alias extend define

        private

        def build_plugins
          plugins.map { |plugin| plugin.is_a?(Class) ? plugin.new : plugin }
        end

        def before_initialize(plugins, options)
          plugins.each do |plugin|
            plugin.before_initialize(self, options) if plugin.respond_to?(:before_initialize)
          end
        end

        def inherited(subclass)
          subclass.instance_variable_set('@plugins', PluginList.new(@plugins))
          subclass.instance_variable_set("@mutex", Mutex.new)
        end

      end
    end
  end
end
