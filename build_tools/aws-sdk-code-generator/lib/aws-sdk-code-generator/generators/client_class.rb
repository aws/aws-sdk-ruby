require 'set'
require 'pp'
require 'seahorse/client/plugin'

module AwsSdkCodeGenerator
  module Generators
    class ClientClass < Dsl::Class

      include Helper

      # @option options [required, Main, Module] :parent
      # @option options [required, String] :identifier
      # @option options [required, Hash] :api
      # @option options [required, Hash, nil] :waiters
      # @option options [required, Hash, nil] :examples
      # @option options [Hash] :add_plugins ({})
      # @option options [Array<String>] :remove_plugins ([])
      def initialize(options)
        @identifier = options.fetch(:identifier)
        @api = options.fetch(:api)
        @waiters = options.fetch(:waiters)
        @examples = options.fetch(:examples)
        @add_plugins = options.fetch(:add_plugins, {})
        @remove_plugins = options.fetch(:remove_plugins, [])
        super('Client', extends: 'Seahorse::Client::Base', parent: options.fetch(:parent))
        apply_modules(self)
        apply_identifier(self)
        apply_api(self)
        apply_plugins(self)
        apply_initialize_method(self)
        top("\nAws::Plugins::GlobalConfiguration::IDENTIFIERS << :#{@identifier}")
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
          plugins = {}
          plugins.update(default_plugins)
          plugins.update(signature_plugins)
          plugins.update(protocol_plugins(@api['metadata']['protocol']))
          plugins.update(@add_plugins)
          @remove_plugins.each do |plugin_name|
            plugins.delete(plugin_name)
          end
          plugins.map do |class_name, path|
            path = "./#{path}" unless path[0] == '/'
            Kernel.require(path)
            ClientPlugin.new(
              class_name: class_name,
              options: const_get(class_name).options,
              path: path)
          end
        end
      end

      def const_get(class_name)
        const_names = class_name.split('::')
        const_names.inject(Kernel) do |const, const_name|
          const.const_get(const_name)
        end
      end

      def documented_plugin_options
        client_plugins.map(&:options).flatten.select(&:documented?).sort_by do |opt|
          [opt.required ? 'a' : 'b', opt.name]
        end
      end

      def apply_modules(klass)
        klass.include('Aws::ClientStubs')
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
              required: option.required,
              default: option.doc_default,
              docstring: option.docstring
            )
          end
          m.param('*args')
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
            m.param('options', type: Hash, default: {}, documented: false)
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
        waiter_methods = {}
        ((@waiters || {})['waiters'] || {}).each_pair do |name, definition|
          class_name = "Waiters::#{name}"
          name = underscore(name).to_sym
          waiter_methods[name] = Underscore.underscore(definition['operation'])
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
          m.docstring(<<-DOCS)
Polls an API operation until a resource enters a desired state.

## Basic Usage

A waiter will call an API operation until:

* It is successful
* It enters a terminal state
* It makes the maximum number of attempts

In between attempts, the waiter will sleep.

   # polls in a loop, sleeping between attempts
   client.waiter_until(waiter_name, params)

## Configuration

You can configure the maximum number of polling attempts, and the
delay (in seconds) between each polling attempt. You can pass
configuration as the final arguments hash.

    # poll for ~25 seconds
    client.wait_until(waiter_name, params, {
      max_attempts: 5,
      delay: 5,
    })

## Callbacks

You can be notified before each polling attempt and before each
delay. If you throw `:success` or `:failure` from these callbacks,
it will terminate the waiter.

    started_at = Time.now
    client.wait_until(waiter_name, params, {

      # disable max attempts
      max_attempts: nil,

      # poll for 1 hour, instead of a number of attempts
      before_wait: -> (attempts, response) do
        throw :failure if Time.now - started_at > 3600
      end
    })

## Handling Errors

When a waiter is unsuccessful, it will raise an error.
All of the failure errors extend from
{Aws::Waiters::Errors::WaiterFailed}**.

    begin
      client.wait_until(...)
    rescue Aws::Waiters::Errors::WaiterFailed
      # resource did not enter the desired state in time
    end

@param [Symbol] waiter_name The name of the waiter.
  Must be one of the following:

#{waiter_methods.keys.map { |name| "  * `:#{name}`" }.join("\n")}

@param [Hash] params A hash of request parameters to send to the
  operation. The following list links to the operation called by
  the named waiter.

#{waiter_methods.map { |name,method| "  * `:#{name}` => {##{method}}" }.join("\n")}

@yieldparam [Waiters::Waiter] waiter Yields a {Waiters::Waiter Waiter}
  object that can be configured prior to waiting.

@raise [Errors::FailureStateError] Raised when the waiter terminates
  because the waiter has entered a state that it will not transition
  out of, preventing success.

@raise [Errors::TooManyAttemptsError] Raised when the configured
  maximum number of attempts have been made, and the waiter is not
  yet successful.

@raise [Errors::UnexpectedError] Raised when an error is encounted
  while polling for a resource that is not expected.

@raise [Errors::NoSuchWaiterError] Raised when you request to wait
  for an unknown state.

@return [Boolean] Returns `true` if the waiter was successful.
          DOCS

          m.code(<<-CODE)
w = waiter(waiter_name, options)
yield(w.waiter) if block_given? # deprecated
w.wait(params)
          CODE
        end)

        # waiter_names
        klass.add(Dsl::Method.new('waiter_names') do |m|
          m.docstring("@api private")
          m.docstring("@deprecated")
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

      def default_plugins
        {
          'Seahorse::Client::Plugins::ContentLength' => 'gems/aws-sdk-core/lib/seahorse/client/plugins/content_length.rb',
          'Aws::Plugins::CredentialsConfiguration' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/credentials_configuration.rb',
          'Aws::Plugins::Logging' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/logging.rb',
          'Aws::Plugins::ParamConverter' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/param_converter.rb',
          'Aws::Plugins::ParamValidator' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/param_validator.rb',
          'Aws::Plugins::UserAgent' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/user_agent.rb',
          'Aws::Plugins::HelpfulSocketErrors' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/helpful_socket_errors.rb',
          'Aws::Plugins::RetryErrors' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/retry_errors.rb',
          'Aws::Plugins::GlobalConfiguration' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/global_configuration.rb',
          'Aws::Plugins::RegionalEndpoint' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/regional_endpoint.rb',
          'Aws::Plugins::ResponsePaging' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/response_paging.rb',
          'Aws::Plugins::StubResponses' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/stub_responses.rb',
        }
      end

      def protocol_plugins(protocol)
        {
          'json'      => { 'Aws::Plugins::Protocols::JsonRpc' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/protocols/json_rpc.rb' },
          'rest-json' => { 'Aws::Plugins::Protocols::RestJson' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/protocols/rest_json.rb' },
          'rest-xml'  => { 'Aws::Plugins::Protocols::RestXml' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/protocols/rest_xml.rb' },
          'query'     => { 'Aws::Plugins::Protocols::Query' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/protocols/query.rb' },
          'ec2'       => { 'Aws::Plugins::Protocols::EC2' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/protocols/ec2.rb' },
          nil         => {}
        }[protocol]
      end

      def signature_plugins
        case @api['metadata']['signatureVersion']
        when 'v4'
          { 'Aws::Plugins::SignatureV4' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/signature_v4.rb' }
        when 'v2'
          { 'Aws::Plugins::SignatureV2' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/signature_v2.rb' }
        else
          {}
        end
      end

      # @api private
      class ClientPlugin

        def initialize(options)
          @class_name = options.fetch(:class_name)
          @options = options.fetch(:options)
          @require_path = options.fetch(:path).split('/lib/').last
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
