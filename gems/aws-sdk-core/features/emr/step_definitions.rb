Before("@emr") do
  @client = Aws::EMR::Client.new
end

After("@emr") do
end
