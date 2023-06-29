Before("@paymentcryptographydata") do
  @service = Aws::PaymentCryptographyData::Resource.new
  @client = @service.client
end

After("@paymentcryptographydata") do
  # shared cleanup logic
end
