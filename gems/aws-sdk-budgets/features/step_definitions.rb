# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Before("@budgets") do
  @service = Aws::Budgets::Resource.new
  @client = @service.client
end

After("@budgets") do
  # shared cleanup logic
end
