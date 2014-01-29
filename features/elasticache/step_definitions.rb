Before("@elasticache") do
  @elasticache = @client = Aws.elasticache
end

After("@elasticache") do
end
