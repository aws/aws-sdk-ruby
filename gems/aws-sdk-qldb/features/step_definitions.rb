# frozen_string_literal: true

Before("@qldb") do
  @service = Aws::QLDB::Resource.new
  @client = @service.client
end

After("@qldb") do
  # shared cleanup logic
end
