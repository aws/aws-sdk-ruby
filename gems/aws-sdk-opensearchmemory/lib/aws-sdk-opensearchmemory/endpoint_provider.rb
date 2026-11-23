# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpenSearchMemory
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
        raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
      end
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        return Aws::Endpoints::Endpoint.new(url: "#{parameters.endpoint}")
      end
      if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
        raise ArgumentError, "Invalid Configuration: FIPS is not supported with OpenSearch Memory."
      end
      if Aws::Endpoints::Matchers.not(Aws::Endpoints::Matchers.valid_host_label?(parameters.region, true))
        raise ArgumentError, "Invalid Configuration: Region must be a valid host label"
      end
      if Aws::Endpoints::Matchers.set?(parameters.space_id) && Aws::Endpoints::Matchers.valid_host_label?(parameters.space_id, false)
        return Aws::Endpoints::Endpoint.new(url: "https://#{parameters.space_id}.osm.#{parameters.region}.on.aws")
      end
      if Aws::Endpoints::Matchers.set?(parameters.space_id)
        raise ArgumentError, "Invalid SpaceId: must be a valid host label"
      end
      return Aws::Endpoints::Endpoint.new(url: "https://osm.#{parameters.region}.api.aws")
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
