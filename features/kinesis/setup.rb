Before("@kinesis") do
  @kinesis = Aws.kinesis
end

After("@kinesis") do
end
