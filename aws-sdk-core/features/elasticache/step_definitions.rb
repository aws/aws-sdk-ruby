Before("@elasticache") do
  @client = Aws::ElastiCache::Client.new
end

After("@elasticache") do
end
