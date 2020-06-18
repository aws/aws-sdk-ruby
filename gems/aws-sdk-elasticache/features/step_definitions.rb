# frozen_string_literal: true

Before("@elasticache") do
  @service = Aws::ElastiCache::Resource.new
  @client = @service.client
end

After("@elasticache") do
  # shared cleanup logic
end
