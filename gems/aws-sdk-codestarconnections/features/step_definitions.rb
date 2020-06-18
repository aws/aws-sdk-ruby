# frozen_string_literal: true

Before("@codestarconnections") do
  @service = Aws::CodeStarconnections::Resource.new
  @client = @service.client
end

After("@codestarconnections") do
  # shared cleanup logic
end
