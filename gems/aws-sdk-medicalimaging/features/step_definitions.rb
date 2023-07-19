Before("@medicalimaging") do
  @service = Aws::MedicalImaging::Resource.new
  @client = @service.client
end

After("@medicalimaging") do
  # shared cleanup logic
end
