require 'set'
require 'pp'
require 'seahorse/client/plugin'

module AwsSdkCodeGenerator
  module Generators
    class ClientClass < Dsl::Class

      include Helper

      def initialize(parent:, identifier:, api:, waiters:, examples:, plugins:)
        @identifier = identifier
        @api = api
        @waiters = waiters
        @examples = examples
        @plugins = plugins
        super('Client', extends: 'Seahorse::Client::Base', parent: parent)
        apply_modules(self)
        apply_identifier(self)
        apply_api(self)
        apply_plugins(self)
        apply_initialize_method(self)
        apply_operations(self)
        apply_waiter_methods(self)
        eigenclass do |eigenclass|
          eigenclass.docstring('@api private')
          eigenclass.attr_reader('identifier', api_private: true)
          eigenclass.method('errors_module') do |m|
            m.code('Errors')
          end
        end
      end

      private

      def client_plugins
        @client_plugins ||= begin
          @plugins.map do |class_name, path|
            path = "./#{path}" unless path[0] == '/'
            Kernel.require(path)
            ClientPlugin.new(
              class_name: class_name,
              options: Kernel.const_get(class_name).options,
              path: path)
          end
        end
      end

      def documented_plugin_options
        client_plugins.map(&:options).flatten.select(&:documented?)
      end

      def apply_modules(klass)
        klass.include('Aws::ClientStubs')
        klass.include('Aws::ClientWaiters')
      end

      def apply_identifier(klass)
        klass.code do |c|
          c << "@identifier = :#{@identifier}"
        end
      end

      def apply_api(klass)
        klass.code("set_api(ClientApi::API)")
      end

      def apply_plugins(klass)
        klass.code do |c|
          client_plugins.each do |plugin|
            klass.top("require '#{plugin.require_path}'")
            c << "add_plugin(#{plugin.class_name})"
          end
        end
      end

      def apply_initialize_method(klass)
        klass.method(:initialize) do |m|
          documented_plugin_options.each do |option|
            m.option(
              name: option.name,
              type: option.doc_type,
              required: option.doc_required,
              default: option.doc_default,
              docstring: option.docstring
            )
          end
          m.param('**args')
          m.code('super')
        end
      end

      def apply_operations(klass)
        code('# @!group API Operations')
        (@api['operations'] || {}).each do |operation_name, operation|
          method_name = underscore(operation_name)
          klass.method(method_name) do |m|
            ClientOperationDocumentation.apply(
              api: @api,
              service_identifier: @identifier,
              operation_name: operation_name,
              operation: operation,
              examples: @examples,
              method: m
            )
            m.param('params', type: Hash, default: {})
            m.param('options', type: Hash, default: {})
            m.code do |c|
              c << "req = build_request(:#{method_name}, params)"
              c << "req.send_request(options)"
            end
          end
        end
        code('# @!endgroup')
      end

      def apply_waiter_methods(klass)

        waiters = {}
        waiter_names = []
        ((@waiters || {})['waiters'] || {}).keys.each do |name|
          class_name = "Waiters::#{name}"
          name = underscore(name).to_sym
          waiter_names << name
          waiters[name] = class_name
        end
        waiters = HashFormatter.new.format(waiters)

        # wait_until(waiter_name, params = {}, options = {}, &block)
        klass.add(Dsl::Method.new('wait_until') do |m|
          m.param('waiter_name', type: Symbol)
          m.param('params', type: Hash, default: {})
          m.param('options', type: Hash, default: {})
          m.option(name: 'max_attempts', type: Integer)
          m.option(name: 'delay', type: Integer)
          m.option(name: 'before_attempt', type: Proc)
          m.option(name: 'before_wait', type: Proc)
          m.code(<<-CODE)
w = waiter(waiter_name, options)
yield(w.waiter) if block_given? # deprecated
w.wait(params)
          CODE
        end)

        # waiter_names
        klass.add(Dsl::Method.new('waiter_names') do |m|
          m.code("waiters.keys")
        end)

        # private: waiter(waiter_name)
        klass.add(Dsl::Method.new('waiter', access: :private) do |m|
          m.param('waiter_name', type: Symbol)
          m.param('options', type: Hash, default: {})
          m.code(<<-CODE)
waiter_class = waiters[waiter_name]
if waiter_class
  waiter_class.new(options.merge(client: self))
else
  raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
end
          CODE
        end)

        # private: waiters
        klass.add(Dsl::Method.new('waiters', access: :private) do |m|
          m.code(waiters)
        end)

      end

      # @api private
      class ClientPlugin

        def initialize(class_name:, options:, path:)
          @class_name = class_name
          @options = options
          @require_path = path.split('/lib/').last
        end

        # @return [String]
        attr_reader :class_name

        # @return [Array<Seahorse::Client::Plugin::PluginOption>]
        attr_reader :options

        # @return [String]
        attr_reader :require_path

      end
    end
  end
end
