Before("@kinesis") do
  @kinesis = @client = Aws.kinesis
end

After("@kinesis") do
end
