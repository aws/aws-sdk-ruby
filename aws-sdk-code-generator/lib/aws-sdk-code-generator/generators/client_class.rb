require 'set'

module AwsSdkCodeGenerator
  module Generators
    class ClientClass < Dsl::Class

      include Helper

      # @api private
      DEFAULT_PLUGINS = [
        'Seahorse::Client::Plugins::ContentLength',
        'Aws::Plugins::Logging',
        'Aws::Plugins::ParamConverter',
        'Aws::Plugins::ParamValidator',
        'Aws::Plugins::UserAgent',
        'Aws::Plugins::RetryErrors',
        'Aws::Plugins::GlobalConfiguration',
        'Aws::Plugins::RegionalEndpoint',
        'Aws::Plugins::RequestSigner',
        'Aws::Plugins::ResponsePaging',
        'Aws::Plugins::StubResponses',
      ]

      # @api private
      PROTOCOL_PLUGINS = Hash.new(DEFAULT_PLUGINS).merge({
        'json'      => DEFAULT_PLUGINS + %w(Aws::Plugins::Protocols::JsonRpc),
        'rest-json' => DEFAULT_PLUGINS + %w(Aws::Plugins::Protocols::RestJson),
        'rest-xml'  => DEFAULT_PLUGINS + %w(Aws::Plugins::Protocols::RestXml),
        'query'     => DEFAULT_PLUGINS + %w(Aws::Plugins::Protocols::Query),
        'ec2'       => DEFAULT_PLUGINS + %w(Aws::Plugins::Protocols::EC2),
        nil         => DEFAULT_PLUGINS,
      })

      def initialize(identifier:, api:, waiters:)
        @identifier = identifier
        @api = api
        @waiters = waiters
        super('Client', extends: 'Seahorse::Client::Base')
        apply_modules(self)
        apply_identifier(self)
        apply_api(self)
        apply_plugins(self)
        apply_operations(self)
        apply_waiter_methods(self)
        eigenclass do |eigenclass|
          eigenclass.method('errors_module') do |m|
            m.docstring('@api private')
            m.code('Errors')
          end
        end
      end

      private

      def apply_modules(klass)
        klass.include('Aws::ClientStubs')
        klass.include('Aws::ClientWaiters')
      end

      def apply_identifier(klass)
        klass.code do |c|
          c << "# @api private"
          c << "IDENTIFIER = :#{@identifier}"
        end
      end

      def apply_api(klass)
        klass.code("set_api(ClientApi::API)")
      end

      def apply_plugins(klass)
        protocol = (@api['metadata'] || {})['protocol']
        klass.code do |c|
          PROTOCOL_PLUGINS[protocol].each do |plugin|
            c << "add_plugin(#{plugin})"
          end
        end
      end

      def apply_operations(klass)
        (@api['operations'] || {}).each do |operation_name, operation|
          method_name = underscore(operation_name)
          klass.method(method_name) do |m|
            m.docstring(markdown(operation['documentation']))
            m.param('params', type: Hash, default: {})
            m.param('options', type: Hash, default: {})
            m.code do |c|
              c << "req = build_request(:#{method_name}, params)"
              c << "req.send_request(options)"
            end
          end
        end
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
yield(w) if block_given?
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
  waiter_class.new(self, options)
else
  raise Aws::Waiters::Errors::NoSuchWaiter.new(waiter_name, waiters.keys)
end
          CODE
        end)

        # private: waiters
        klass.add(Dsl::Method.new('waiters', access: :private) do |m|
          m.code(waiters)
        end)

      end
    end
  end
end
