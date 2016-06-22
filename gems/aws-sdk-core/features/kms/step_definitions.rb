Before("@kms") do
  @client = Aws::KMS::Client.new
end

After("@kms") do
end
