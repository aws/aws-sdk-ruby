Before("@ses") do
  @ses = @client = Aws.ses
end

After("@ses") do
end
