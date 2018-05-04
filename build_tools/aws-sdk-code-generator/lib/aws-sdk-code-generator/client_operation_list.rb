module AwsSdkCodeGenerator
  class ClientOperationList

    include Enumerable

    def initialize(options)
      api = options.fetch(:api)
      examples = options.fetch(:examples, {})
      client_examples = options.fetch(:client_examples, {})
      @operations = api['operations'].map do |name, operation|
        if AwsSdkCodeGenerator::Helper.eventstream_input?(operation, api)
          raise 'eventstream at operation input is not supported'
        end
        method_name = Underscore.underscore(name)
        Operation.new(
          name: method_name,
          documentation: ClientOperationDocumentation.new(
            name: name,
            method_name: method_name,
            operation: operation,
            api: api,
            examples: examples,
            client_examples: client_examples[method_name] || []
          ).to_s,
          streaming: AwsSdkCodeGenerator::Helper.operation_streaming?(operation, api),
          eventstream_output: AwsSdkCodeGenerator::Helper.eventstream_output?(operation, api)
        )
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
        @eventstream_member = @eventstream_output ?
          options.fetch(:eventstream_output) : nil
      end

      # @return [String]
      attr_reader :name

      # @return [String, nil]
      attr_reader :documentation

      # @return [Boolean]
      attr_reader :eventstream_output

      # @return [String]
      attr_reader :eventstream_member

      def block_option
        if @streaming
          ", &block"
        end
      end

    end
  end
end
