Before("@swf") do
  @client = Aws::SWF::Client.new
end

After("@swf") do
end
