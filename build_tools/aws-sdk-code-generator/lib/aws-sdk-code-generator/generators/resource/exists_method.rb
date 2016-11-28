module AwsSdkCodeGenerator
  module Generators
    module Resource
      class ExistsMethod < Dsl::Method

        include Helper

        # @option options [required, String] :resource_name
        def initialize(options)
          resource_name = options.fetch(:resource_name)
          super('exists?')
          param(:options, type: 'Hash', default: {})
          returns('Boolean', docstring: "Returns `true` if the #{resource_name} exists.")
          code <<-CODE
begin
  wait_until_exists(options.merge(max_attempts: 1))
  true
rescue Aws::Waiters::Errors::UnexpectedError => e
  raise e.error
rescue Aws::Waiters::Errors::WaiterFailed
  false
end
          CODE
        end

      end
    end
  end
end
