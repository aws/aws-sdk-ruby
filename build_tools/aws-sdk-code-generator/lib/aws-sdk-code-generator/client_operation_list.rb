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

      @operations = api['operations'].inject([]) do |ops, (name, operation)|
        method_name = Underscore.underscore(name)
        waiters = operation_waiters[method_name]

        async_client = options[:async_client] || false
        es_output = AwsSdkCodeGenerator::Helper.eventstream_output?(operation, api)
        es_input = AwsSdkCodeGenerator::Helper.eventstream_input?(operation, api)
        if es_input || es_output
          # eventstreaming operations
          if protocol_settings['h2'] == 'eventstream'
            # h2 supported, only generate for async client
            if async_client
              if es_input == es_output
                # input & output eventstream sharing
                # same eventstream shape
                # see EventStreamModule
                es_input = "Input" + es_input
                es_output = "Output" + es_output
              end
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
          elsif !es_input && es_output && !async_client
            # http1.1 only support eventstream at output
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
          end
        elsif !async_client
          # non streaming operations
          # generate at sync client only
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
        @output_eventstream_member = @eventstream_output ?
          options.fetch(:eventstream_output) : nil
        @input_eventstream_member = @eventstream_input ?
          options.fetch(:eventstream_input) : nil
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
