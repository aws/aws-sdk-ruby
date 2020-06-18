# frozen_string_literal: true

Before("@mediapackagevod") do
  @service = Aws::MediaPackageVod::Resource.new
  @client = @service.client
end

After("@mediapackagevod") do
  # shared cleanup logic
end
