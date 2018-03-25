# frozen_string_literal: true

Before("@codecommit") do
  @service = Aws::CodeCommit::Resource.new
  @client = @service.client
end

After("@codecommit") do
  # shared cleanup logic
end
