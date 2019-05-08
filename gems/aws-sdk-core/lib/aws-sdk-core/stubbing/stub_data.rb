module Aws
  # @api private
  module Stubbing
    class StubData

      def initialize(operation)
        @rules = operation.output
        @pager = operation[:pager]
      end

      def stub(data = {})
        stub = EmptyStub.new(@rules).stub
        remove_paging_tokens(stub)
        apply_data(data, stub)
        stub
      end

      private

      def remove_paging_tokens(stub)
        if @pager
          @pager.instance_variable_get("@tokens").keys.each do |path|
            if path.include?(' || ') || path.include?(' or ')
              stub[path.split(/\b/)[0]] = nil
            else
              parts = path.split('.')
              if parts.size > 1
                # nested struct, EmptyStub auto-pop 'string'
                visit = stub
                parts[0..-2].each {|key| visit = visit[key]}
                visit[parts[-1]] = nil
              else
                stub[parts[0]] = nil
              end
            end
          end
          if more_results = @pager.instance_variable_get('@more_results')
            parts = more_results.split('.')
            # if nested struct, EmptyStub auto-pop false value
            stub[parts[0]] = false if parts.size == 1
          end
        end
      end

      def apply_data(data, stub)
        ParamValidator.new(@rules, validate_required: false, input: false).validate!(data)
        DataApplicator.new(@rules).apply_data(data, stub)
      end
    end
  end
end
