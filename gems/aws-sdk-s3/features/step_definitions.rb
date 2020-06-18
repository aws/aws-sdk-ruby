# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Before("@s3") do
  @service = Aws::S3::Resource.new
  @client = @service.client
end

After("@s3") do
  # shared cleanup logic
end
