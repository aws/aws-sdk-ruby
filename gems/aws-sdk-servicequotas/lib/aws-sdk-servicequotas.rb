# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:servicequotas)

# This module provides support for Service Quotas. This module is available in the
# `aws-sdk-servicequotas` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     service_quotas = Aws::ServiceQuotas::Client.new
#     resp = service_quotas.associate_service_quota_template(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Service Quotas are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ServiceQuotas::Errors::ServiceError
#       # rescues all Service Quotas API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ServiceQuotas
  autoload :Types, 'aws-sdk-servicequotas/types'
  autoload :ClientApi, 'aws-sdk-servicequotas/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-servicequotas/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-servicequotas/client'
  autoload :Errors, 'aws-sdk-servicequotas/errors'
  autoload :Resource, 'aws-sdk-servicequotas/resource'
  autoload :EndpointParameters, 'aws-sdk-servicequotas/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-servicequotas/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-servicequotas/endpoints'

  GEM_VERSION = '1.62.0'

end

require_relative 'aws-sdk-servicequotas/customizations'
