# frozen_string_literal: true

Before("@importexport") do
  @service = Aws::ImportExport::Resource.new
  @client = @service.client
end

After("@importexport") do
  # shared cleanup logic
end
