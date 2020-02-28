module AwsSdkCodeGenerator
  class ErrorList

    include Enumerable

    def initialize(options)
      @api = options[:api]
      @module_name = options[:module_name]
      @errors = @api['shapes'].inject([]) do |es, (name, shape)|
        # only generate error shapes which require customizations
        if error_needs_definition?(shape)
          members = shape['members'].inject([]) do |arr, (k, v)|
            arr << {
              name: Underscore.underscore(k),
              type: Docstring.ucfirst(v['type'] ||'String'),
              shared: k.downcase == 'message' || k.downcase == 'code'
            }
            arr
          end
          es << Error.new(
            name: name,
            members: members,
            data_type: "#{@module_name}::Types::#{name}",
            retryable: !!shape['retryable'],
            throttling: throttling?(shape)
          )
        end
        es
      end
    end

    def each(&block)
      @errors.each(&block)
    end

    private

    def error_needs_definition?(shape)
      error_struct?(shape) && needs_definition?(shape)
    end

    def error_struct?(shape)
      shape['type'] == 'structure' && !!!shape['event'] &&
          (shape['error'] || shape['exception'])
    end

    def needs_definition?(shape)
      (shape['members'] && shape['members'].size > 0) ||
          (shape['retryable'])
    end

    def throttling?(shape)
      shape['retryable'] && shape['retryable'].kind_of?(Hash) && shape['retryable']['throttling']
    end


    class Error

      def initialize(options)
        @name = options.fetch(:name)
        @data_type = options[:data_type]
        @members = options[:members]
        @retryable = options[:retryable]
        @throttling = options[:throttling]
      end

      # @return [String]
      attr_reader :name

      # @return [String]
      attr_reader :data_type

      # @return [Array<Hash>]
      attr_reader :members

      # @return [Boolean]
      attr_reader :retryable

      # @return [Boolean]
      attr_reader :throttling

    end

  end
end
