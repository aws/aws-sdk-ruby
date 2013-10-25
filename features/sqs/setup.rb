Before("@sqs") do
  @sqs = Aws.sqs
end

After("@sqs") do
end
