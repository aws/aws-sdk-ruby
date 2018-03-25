# frozen_string_literal: true

Before("@sagemakerruntime") do
  @service = Aws::SageMakerRuntime::Resource.new
  @client = @service.client
end

After("@sagemakerruntime") do
  # shared cleanup logic
end
