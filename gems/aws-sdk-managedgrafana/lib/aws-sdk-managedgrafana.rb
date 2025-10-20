# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:managedgrafana)

# This module provides support for Amazon Managed Grafana. This module is available in the
# `aws-sdk-managedgrafana` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     managed_grafana = Aws::ManagedGrafana::Client.new
#     resp = managed_grafana.associate_license(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Managed Grafana are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ManagedGrafana::Errors::ServiceError
#       # rescues all Amazon Managed Grafana API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ManagedGrafana
  autoload :Types, 'aws-sdk-managedgrafana/types'
  autoload :ClientApi, 'aws-sdk-managedgrafana/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-managedgrafana/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-managedgrafana/client'
  autoload :Errors, 'aws-sdk-managedgrafana/errors'
  autoload :Resource, 'aws-sdk-managedgrafana/resource'
  autoload :EndpointParameters, 'aws-sdk-managedgrafana/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-managedgrafana/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-managedgrafana/endpoints'

  GEM_VERSION = '1.53.0'

end

require_relative 'aws-sdk-managedgrafana/customizations'
