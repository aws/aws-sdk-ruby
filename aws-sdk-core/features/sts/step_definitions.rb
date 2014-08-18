Before("@sts") do
  @client = Aws::STS::Client.new
end

After("@sts") do
end
