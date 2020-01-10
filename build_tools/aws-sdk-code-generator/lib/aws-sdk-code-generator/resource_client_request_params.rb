module AwsSdkCodeGenerator
  class ResourceClientRequestParams < String

    include Helper

    # @option options [Array] :params ([])
    def initialize(options = {})
      @params = options.fetch(:params, nil) || []
      super(format_params)
    end

    def simple?
      @params.all? { |p| p['target'].match(/^\w+$/) }
    end

    def empty?
      @params.empty?
    end

    def size
      @params.size
    end

    private

    def format_params
      hash = {}
      @params.each do |param|
        ParamTarget.new(param).apply(hash, ResourceValueSource.new(param))
      end
      formatter = HashFormatter.new(wrap:false, inline: @params.count == 1)
      params = formatter.format(hash)
      @params.size == 1 ? params.strip : params
    end

    class ParamTarget

      def initialize(param)
        @target = param['target']
        @steps = []
        @target.scan(/\w+|\[\]|\[\*\]|\[[0-9]+\]/) do |step|
          case step
          when /\[\d+\]/ then @steps += [:array, step[1..-2].to_i]
          when /\[\*\]/ then @steps += [:array, :n]
          when '[]' then @steps += [:array, -1]
          else @steps += [:hash, Underscore.underscore(step).to_sym]
          end
        end
        @steps.shift
        @final = @steps.pop
      end

      # @return [String] target
      attr_reader :target

      def apply(hash, value, options = {})
        resource_index = options.fetch(:resource_index, 0)
        if @final == -1
          build_context(hash, resource_index) << value
        else
          build_context(hash, resource_index)[@final] = value
        end
        hash
      end

      private

      def build_context(params, n)
        @steps.each_slice(2).inject(params) do |context, (key, type)|
          entry = type == :array ? [] : {}
          if key == -1
            context << entry
            entry
          elsif key == :n
            context[n] ||= entry
          else
            context[key] ||= entry
          end
        end
      end

    end
  end
end
