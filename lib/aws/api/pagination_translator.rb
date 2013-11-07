require 'multi_json'

module Aws
  module Api
    class PaginationTranslator

      include Util

      def initialize(api)
        @api = api
      end

      def apply(pagination)
        pagination.each_pair do |operation_name, config|
          if operation = @api.operations[underscore(operation_name)]
            apply_paging(operation, config)
          end
        end
      end

      private

      def apply_paging(operation, config)
        if config && config['input_token']
          paging = {}
          apply_tokens(paging, config)
          apply_truncated(paging, config)
          operation.metadata['paging'] = paging
        end
      end

      def apply_tokens(paging, config)
        paging['tokens'] = extract_tokens(config)
      end

      def apply_truncated(paging, config)
        if truncated_if = config['more_results']
          paging['truncated_if'] = underscore(truncated_if)
        end
      end

      def extract_tokens(config)
        input = Array(config['input_token'])
        output = Array(config['output_token'])
        (0..(input.size-1)).inject({}) do |tokens, n|
          tokens[underscore(input[n])] = underscore_jamespath(output[n])
          tokens
        end
      end

      def underscore_jamespath(expression)
        expression.gsub(/\w+/) { |w| underscore(w) }.gsub(/or/, '||')
      end

      class << self

        def translate(api)
          filename = api.metadata['service_class_name'].downcase
          filename += "-#{api.version}.paginators.json"
          path = File.join(Aws::GEM_ROOT, 'apis', 'source',filename)
          if File.exists?(path)
            new(api).apply(MultiJson.load(File.read(path))['pagination'])
          else
            puts "Missing pagination config for #{path}"
          end
        end

      end
    end
  end
end
