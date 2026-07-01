# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      # Registers hand-written paginators for operations that cannot be
      # modeled with Smithy's @paginated trait (compound cursors, expression
      # tokens, or boolean truncation signals).
      class CustomPaginators < Smithy::Client::Plugin
        def after_initialize(client)
          schema = client.config.service

          schema.operation(:list_objects)[:paginator] = Paginators::ListObjects.new
          schema.operation(:list_object_versions)[:paginator] = Paginators::ListObjectVersions.new
          schema.operation(:list_multipart_uploads)[:paginator] = Paginators::ListMultipartUploads.new
        end
      end
    end
  end
end
