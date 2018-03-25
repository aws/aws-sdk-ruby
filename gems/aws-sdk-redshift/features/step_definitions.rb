# frozen_string_literal: true

Before("@redshift") do
  @service = Aws::Redshift::Resource.new
  @client = @service.client
end

After("@redshift") do
  # shared cleanup logic
end
