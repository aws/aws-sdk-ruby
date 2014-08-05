Before("@opsworks") do
  @client = Aws::OpsWorks::Client.new
end

After("@opsworks") do
end
