module Aws

  # @note This class provides an interface over the API pagination definitions.
  #   The format and structure of these files should not be considered
  #   a public interface and should be considered unstable.
  # @stability Unstable
  class PagingProvider

    # @param [Hash] rules
    def initialize(rules = { 'pagination' => {}})
      @operations = rules['pagination'].select { |k,v| v.key?('input_token') }
    end

    # @param [String] operation_name
    # @return [Pager]
    def pager(operation_name)
      if rules = @operations[operation_name]
        Pager.new(rules)
      else
        NullPager.new
      end
    end

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

    # @stability Unstable
    class NullPager < Pager

      def initialize
      end

      # @return [{}]
      def next_tokens
        {}
      end

      # @return [false]
      def truncated?(response)
        false
      end

    end

  end
end
