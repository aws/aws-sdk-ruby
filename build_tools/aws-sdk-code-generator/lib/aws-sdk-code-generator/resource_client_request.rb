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
        parts << "Aws::Plugins::UserAgent.feature('resource') do\n"
        parts << "  @client."
        parts << operation_name(request)
        parts << arguments(merge, params, streaming)
        parts << "\nend"
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
        if merge
          streaming ? '(options, &block)' : '(options)'
        elsif params.empty?
          ''
        else
          streaming ? "(#{params}, &block)" : "(#{params})"
        end
      end

    end
  end
end
