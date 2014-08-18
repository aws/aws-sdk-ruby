module Aws
  module Paging
    class Pager

      def initialize(rules)
        if rules['more_results']
          @more_results = underscore(rules['more_results'])
        end
        if rules['limit_key']
          @limit_key = underscore(rules['limit_key']).to_sym
        end
        map_tokens(rules)
      end

      # @return [Symbol, nil]
      attr_reader :limit_key

      # @param [Seahorse::Client::Response] response
      # @return [Hash]
      def next_tokens(response)
        @tokens.each.with_object({}) do |(source, target), next_tokens|
          value = Jamespath.search(source, response.data)
          next_tokens[target.to_sym] = value unless value.nil?
        end
      end

      # @param [Seahorse::Client::Response] response
      # @return [Boolean]
      def truncated?(response)
        if @more_results
          Jamespath.search(@more_results, response.data)
        else
          !next_tokens(response).empty?
        end
      end

      private

      def map_tokens(rules)
        input = Array(rules['input_token'])
        output = Array(rules['output_token'])
        @tokens = {}
        input.each.with_index do |key, n|
          @tokens[underscore(output[n])] = underscore(key)
        end
      end

      def underscore(str)
        str.
          gsub(' or ', '||').
          gsub(/\w+/) { |part| Seahorse::Util.underscore(part) }
      end

    end
  end
end
