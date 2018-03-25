# frozen_string_literal: true

Before("@wafregional") do
  @service = Aws::WAFRegional::Resource.new
  @client = @service.client
end

After("@wafregional") do
  # shared cleanup logic
end
