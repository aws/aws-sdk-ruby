module AwsSdkCodeGenerator
  module Generators
    module Resource
      class ExistsMethod < Dsl::Method

        include Helper

        def initialize(resource_name:, resource:, waiters:)
          super('exists?')
          returns('Boolean', docstring: "Returns `true` if the #{resource_name} exists.")
          code <<-CODE
begin
  wait_until_exists(max_attempts: 1)
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
