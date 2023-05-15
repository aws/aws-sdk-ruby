# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceClientRequest
    class << self

      # @option options [required, Hash] :request
      # @option options [Boolean] :resp (false)
      # @option options [Boolean] :merge (true)
      def build(options)
        request = options.fetch(:request)
        merge = options.fetch(:merge, true)
        streaming = options.fetch(:streaming, false)
        params = ResourceClientRequestParams.new(params: request['params'])
        parts = []
        parts << request_options(params) if merge
        parts << assignment(options)
        parts << "@client."
        parts << operation_name(request)
        parts << arguments(merge, params, streaming)
        parts.join
      end

      private

      def request_options(params)
        if params.empty?
          ''
        elsif params.simple?
          "options = options.merge(#{params})\n"
        else
          hash = params
          hash = ' ' + hash unless hash[0] == "\n"
          "options = Aws::Util.deep_merge(options,#{hash})\n"
        end
      end

      def assignment(options)
        if options.fetch(:resp, false)
          'resp = '
        else
          ''
        end
      end

      def operation_name(request)
        Underscore.underscore(request['operation'])
      end

      def arguments(merge, params, streaming)
        context_str = "{ context: { user_agent_feature: 'ft/resource' } }"
        if merge
          if streaming
            "(options, #{context_str}, &block)"
          else
            "(options, #{context_str})"
          end
        elsif params.empty?
          "{}, #{context_str}"
        else
          if streaming
            "({#{params}}, #{context_str}, &block)"
          else
            "({#{params}}, #{context_str})"
          end
        end
      end

    end
  end
end
