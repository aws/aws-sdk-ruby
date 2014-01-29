Before("@cloudformation") do
  @cloudformation = @client = Aws.cloudformation
end

After("@cloudformation") do
end
