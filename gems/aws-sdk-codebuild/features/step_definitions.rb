# frozen_string_literal: true

Before("@codebuild") do
  @service = Aws::CodeBuild::Resource.new
  @client = @service.client
end

After("@codebuild") do
  # shared cleanup logic
end
