Before("@paymentcryptography") do
  @service = Aws::PaymentCryptography::Resource.new
  @client = @service.client
end

After("@paymentcryptography") do
  # shared cleanup logic
end
