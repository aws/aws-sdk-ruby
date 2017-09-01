module AwsSdkCodeGenerator
  class ClientOperationList

    include Enumerable

    def initialize(options)
      api = options.fetch(:api)
      examples = options.fetch(:examples, {})
      client_examples = options.fetch(:client_examples, {})
      @operations = api['operations'].map do |name, operation|
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
          streaming: streaming(operation, api)
        )
      end
    end

    # @return [Enumerable<Operation>]
    def each(&block)
      @operations.each(&block)
    end

    def streaming(operation, api)
      return unless operation.key? 'output'
      output = operation['output']['shape']
      if api['shapes'][output].key? 'payload'
        output_shape = api['shapes'][output]
        payload = output_shape['payload']
        if output_shape.key? 'members'
          payload_ref = output_shape['members'][payload]
        elsif output_shape.key? 'member'
          payload_ref = output_shape['member'][payload]
        end
        Api.streaming?(payload_ref, api)
      end
    end

    class Operation

      def initialize(options)
        @name = options.fetch(:name)
        @documentation = options.fetch(:documentation)
        @streaming = options.fetch(:streaming)
      end

      # @return [String]
      attr_reader :name

      # @return [String, nil]
      attr_reader :documentation

      def block_option
        if @streaming
          ", &block"
        end
      end
    end
  end
end
