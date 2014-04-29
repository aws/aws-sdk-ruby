Before("@cloudtrail") do
  @cloudtrail = @client = Aws.cloudtrail
end

After("@cloudtrail") do
end
