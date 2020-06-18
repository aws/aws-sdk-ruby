# frozen_string_literal: true

Before("@mediastoredata") do
  @service = Aws::MediaStoreData::Resource.new
  @client = @service.client
end

After("@mediastoredata") do
  # shared cleanup logic
end
