module AwsSdkCodeGenerator
  class YardOptionTag

    # @option options [required, String] :name
    # @option options [Boolean] :required (false)
    # @option options [required, String] :ruby_type
    # @option options [String, nil] :docstring (nil)
    # @option options [Object] :default_value
    # @option options [String] :option_hash_name ('options')
    def initialize(options)
      @name = options.fetch(:name)
      @ruby_type = options.fetch(:ruby_type)
      @required = options.fetch(:required, false) ? 'required, ' : ''
      @docstring = options.fetch(:docstring).to_s
      @default_value = options[:default_value]
      @option_hash_name = options.fetch(:option_hash_name, 'options')
      @indent = options.fetch(:indent, "")
    end

    def build
      if @docstring.empty?
        first_line.rstrip
      else
        first_line + Docstring.block_comment(@docstring, gap: "   #{@indent}")
      end
    end
    alias to_str build
    alias to_s build

    private

    def first_line
      "# #{@indent}@option #{@option_hash_name} [#{@required}#{@ruby_type}] :#{@name}#{default_value}\n"
    end

    def default_value
      @default_value.nil? ? '' : " (#{@default_value.inspect})"
    end

  end
end
