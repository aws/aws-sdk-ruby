Before("@opsworks") do
  @opsworks = @client = Aws.opsworks
end

After("@opsworks") do
end
