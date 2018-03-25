# frozen_string_literal: true

Before("@gamelift") do
  @service = Aws::GameLift::Resource.new
  @client = @service.client
end

After("@gamelift") do
  # shared cleanup logic
end
