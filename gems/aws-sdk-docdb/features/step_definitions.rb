# frozen_string_literal: true

Before("@docdb") do
  @service = Aws::DocDB::Resource.new
  @client = @service.client
end

After("@docdb") do
  # shared cleanup logic
end
