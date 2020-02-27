module AwsSdkCodeGenerator
  class ErrorList

    include Enumerable

    def initialize(options)
      @api = options[:api]
      @module_name = options[:module_name]
      @errors = @api['shapes'].inject([]) do |es, (name, shape)|
        # only generate error shape with non empty members
        # excluding event shapes marked as error
        if non_empty_error_struct?(shape)
          members = shape['members'].keys.map {|k| Underscore.underscore(k) }
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
            data_type: "#{@module_name}::Types::#{name}"
          )
        end
        es
      end
    end

    def non_empty_error_struct?(shape)
      shape['type'] == 'structure' && !!!shape['event'] &&
        (shape['error'] || shape['exception'])
    end

    def each(&block)
      @errors.each(&block)
    end

    class Error

      def initialize(options)
        @name = options.fetch(:name)
        @data_type = options[:data_type]
        @members = options[:members]
      end

      # @return [String]
      attr_reader :name

      # @return [String]
      attr_reader :data_type

      # @return [Array<Hash>]
      attr_reader :members

    end

  end
end
