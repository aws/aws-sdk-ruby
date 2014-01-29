Before("@sns") do
  @sns = @client = Aws.sns
end

After("@sns") do
end
