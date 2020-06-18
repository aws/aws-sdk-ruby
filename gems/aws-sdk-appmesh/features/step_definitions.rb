# frozen_string_literal: true

Before("@appmesh") do
  @service = Aws::AppMesh::Resource.new
  @client = @service.client
end

After("@appmesh") do
  # shared cleanup logic
end
