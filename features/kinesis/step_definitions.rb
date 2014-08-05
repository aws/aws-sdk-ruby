Before("@kinesis") do
  @client = Aws::Kinesis::Client.new
end

After("@kinesis") do
end
