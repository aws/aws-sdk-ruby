# frozen_string_literal: true

module Aws
  module Kinesis
    module Plugins
      # Registers hand-written paginator for DescribeStream which cannot
      # be modeled with Smithy's @paginated trait (expression token with
      # nested boolean termination signal).
      class CustomPaginators < Smithy::Client::Plugin
        def after_initialize(client)
          schema = client.config.service
          schema.operation(:describe_stream)[:paginator] = Paginators::DescribeStream.new
        end
      end
    end
  end
end
