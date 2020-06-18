# frozen_string_literal: true

Before("@kinesisvideoarchivedmedia") do
  @service = Aws::KinesisVideoArchivedMedia::Resource.new
  @client = @service.client
end

After("@kinesisvideoarchivedmedia") do
  # shared cleanup logic
end
