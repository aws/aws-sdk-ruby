# frozen_string_literal: true

Before("@costexplorer") do
  @service = Aws::CostExplorer::Resource.new
  @client = @service.client
end

After("@costexplorer") do
  # shared cleanup logic
end
