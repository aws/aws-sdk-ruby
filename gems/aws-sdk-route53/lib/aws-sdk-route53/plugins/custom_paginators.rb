# frozen_string_literal: true

module Aws
  module Route53
    module Plugins
      # Registers hand-written paginators for operations that cannot be
      # modeled with Smithy's @paginated trait (compound cursors with
      # boolean truncation signals).
      class CustomPaginators < Smithy::Client::Plugin
        def after_initialize(client)
          schema = client.config.service
          schema.operation(:list_resource_record_sets)[:paginator] = Paginators::ListResourceRecordSets.new
        end
      end
    end
  end
end
