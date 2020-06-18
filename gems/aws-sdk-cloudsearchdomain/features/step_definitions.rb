# frozen_string_literal: true

Before("@cloudsearchdomain") do
  @service = Aws::CloudSearchDomain::Resource.new
  @client = @service.client
end

After("@cloudsearchdomain") do
  # shared cleanup logic
end
