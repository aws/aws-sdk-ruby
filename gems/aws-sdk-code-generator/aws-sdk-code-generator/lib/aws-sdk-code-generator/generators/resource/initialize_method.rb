module AwsSdkCodeGenerator
  module Generators
    module Resource
      class InitializeMethod < Dsl::Method

        include Helper

        def initialize(resource:)
          @identifiers = resource["identifiers"] || []
          @shape_name = resource["shape"]
          super('initialize')
          param('*args')
          positional_docstring unless @identifiers.empty?
          options_docstring
          code('options = Hash === args.last ? args.pop.dup : {}')
          extract_identifiers
          if @shape_name
            code('@data = options.delete(:data)')
          else
            code('@data = Aws::EmptyStructure.new')
          end
          code('@client = options.delete(:client) || Client.new(options)')
        end

        private

        def positional_docstring
          names = @identifiers.map { |i| underscore(i['name']) }.join(', ')
          docstring("@overload def initialize(#{names}, options = {})")
          identifiers.each do |name, type, n|
            docstring("  @param [#{type}] #{name}")
          end
          apply_client_option
        end

        def options_docstring
          docstring("@overload def initialize(options = {})")
          identifiers.each do |name, type, n|
            docstring("  @option options [required, #{type}] :#{name}")
          end
          apply_client_option
        end

        def apply_client_option
          docstring("  @option options [Client] :client")
        end

        def extract_identifiers
          identifiers.each do |name, type, n|
            code("@#{name} = extract_#{name}(args, options)")
          end
        end

        def identifiers
          Enumerator.new(@identifiers.length) do |y|
            @identifiers.each.with_index do |i, n|
              y.yield(underscore(i['name']), identifier_type(i), n)
            end
          end
        end

      end
    end
  end
end
