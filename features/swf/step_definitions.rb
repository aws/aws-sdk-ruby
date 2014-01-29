Before("@swf") do
  @swf = @client = Aws.swf
end

After("@swf") do
end
