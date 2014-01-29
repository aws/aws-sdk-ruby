Before("@rds") do
  @rds = @client = Aws.rds
end

After("@rds") do
end
