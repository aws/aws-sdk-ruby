# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ClientOperationList

    include Enumerable

    def initialize(options)
      api = options.fetch(:api)
      examples = options.fetch(:examples, {})
      module_name = options.fetch(:module_name)
      protocol = options.fetch(:protocol)
      protocol_settings = options.fetch(:protocol_settings, {})
      client_examples = options.fetch(:client_examples, {})
      paginators = options.fetch(:paginators, {})
      operation_waiters = Waiter.build_operations_map(options[:waiters])
      @operations = api['operations'].each_with_object([]) do |(name, operation), ops|
        method_name = Underscore.underscore(name)
        waiters = operation_waiters[method_name]
        async_client = options[:async_client] || false
        es_output = AwsSdkCodeGenerator::Helper.eventstream_output?(operation, api)
        es_input = AwsSdkCodeGenerator::Helper.eventstream_input?(operation, api)

        if async_client
          if es_input || es_output
            if es_input == es_output
              # handle input & output eventstream sharing the same eventstream shape
              es_input = "Input" + es_input
              es_output = "Output" + es_output
            end

            case protocol_settings['h2']
            when 'required'
              # We only support eventstream operations for h2 required
              ops << Operation.new(
                name: method_name,
                documentation: ClientOperationDocumentation.new(
                  name: name,
                  module_name: module_name,
                  method_name: method_name,
                  operation: operation,
                  api: api,
                  protocol: protocol,
                  examples: examples,
                  client_examples: client_examples[method_name] || [],
                  async_client: true
                ).to_s,
                streaming: AwsSdkCodeGenerator::Helper.operation_streaming?(operation, api),
                eventstream_output: es_output,
                eventstream_input: es_input
              )
            when 'optional'
              # When h2 is optional, only bidirectional eventstreaming operations will be on the async client. Other
              # operations MAY be on the async client, but we currently do not do this. (They are disjoint).
              next unless es_input && es_output

              ops << Operation.new(
                name: method_name,
                documentation: ClientOperationDocumentation.new(
                  name: name,
                  module_name: module_name,
                  method_name: method_name,
                  operation: operation,
                  api: api,
                  protocol: protocol,
                  examples: examples,
                  client_examples: client_examples[method_name] || [],
                  async_client: true
                ).to_s,
                streaming: AwsSdkCodeGenerator::Helper.operation_streaming?(operation, api),
                eventstream_output: es_output,
                eventstream_input: es_input
              )
            when 'eventstream'
              # When h2 is eventstream, all eventstream operations must be sent over H2. This includes all operations that
              # have any input OR output structures targeted with event traits. Other operations MAY use h2, but we
              # currently do not do this.
              ops << Operation.new(
                name: method_name,
                documentation: ClientOperationDocumentation.new(
                  name: name,
                  module_name: module_name,
                  method_name: method_name,
                  operation: operation,
                  api: api,
                  protocol: protocol,
                  examples: examples,
                  client_examples: client_examples[method_name] || [],
                  async_client: true
                ).to_s,
                streaming: AwsSdkCodeGenerator::Helper.operation_streaming?(operation, api),
                eventstream_output: es_output,
                eventstream_input: es_input
              )
            end
          else
            next unless protocol_settings['h2'] == 'required'

            # Raised when h2 required contains non-eventstreaming operations.
            # H2 required means that service will only accept HTTP/2 connections.
            # Eventstreaming operations are supported and other operations may not work reliably on async client.
            # Full HTTP/2 support for all operations is planned for next MV.
            raise 'H2 required only support event streaming operations'
          end
        else
          # We only support eventstream output on the sync client (http 1.1)
          # We arguably should not have this here (put it on the async client instead) however we must
          # keep doing so for backwards compatibility.
          if !es_input && es_output && protocol_settings['h2'] != 'eventstream'
            ops << Operation.new(
              name: method_name,
              documentation: ClientOperationDocumentation.new(
                name: name,
                module_name: module_name,
                method_name: method_name,
                operation: operation,
                api: api,
                protocol: protocol,
                examples: examples,
                client_examples: client_examples[method_name] || [],
                async_client: false
              ).to_s,
              streaming: AwsSdkCodeGenerator::Helper.operation_streaming?(operation, api),
              eventstream_output: es_output,
              eventstream_input: false
            )
          # Bidirectional eventstreaming operations are not added to the sync client
          elsif !es_input && !es_output
            ops << Operation.new(
              name: method_name,
              documentation: ClientOperationDocumentation.new(
                name: name,
                module_name: module_name,
                method_name: method_name,
                operation: operation,
                api: api,
                protocol: protocol,
                examples: examples,
                client_examples: client_examples[method_name] || [],
                async_client: false,
                pager: paginators && paginators['pagination'][name],
                waiters: waiters
              ).to_s,
              streaming: AwsSdkCodeGenerator::Helper.operation_streaming?(operation, api),
              eventstream_output: false,
              eventstream_input: false
            )
          end
        end
        ops
      end
    end

    # @return [Enumerable<Operation>]
    def each(&block)
      @operations.each(&block)
    end

    class Operation

      def initialize(options)
        @name = options.fetch(:name)
        @documentation = options.fetch(:documentation)
        @streaming = options.fetch(:streaming)
        @eventstream_output = !!options.fetch(:eventstream_output)
        @eventstream_input = !!options.fetch(:eventstream_input)
        @output_eventstream_member =
          @eventstream_output ? options.fetch(:eventstream_output) : nil
        @input_eventstream_member =
          @eventstream_input ? options.fetch(:eventstream_input) : nil
        @bidirectional = @eventstream_output && @eventstream_input
      end

      # @return [String]
      attr_reader :name

      # @return [String, nil]
      attr_reader :documentation

      # @return [Boolean]
      attr_reader :eventstream_input

      # @return [Boolean]
      attr_reader :eventstream_output

      # @return [String]
      attr_reader :input_eventstream_member

      # @return [String]
      attr_reader :output_eventstream_member

      # @return [Boolean]
      attr_reader :bidirectional

      def block_option
        if @streaming
          ", &block"
        end
      end

    end
  end
end
