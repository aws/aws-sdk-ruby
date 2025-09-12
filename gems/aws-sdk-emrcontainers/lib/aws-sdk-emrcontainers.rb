# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:emrcontainers)

# This module provides support for Amazon EMR Containers. This module is available in the
# `aws-sdk-emrcontainers` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     emr_containers = Aws::EMRContainers::Client.new
#     resp = emr_containers.cancel_job_run(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EMR Containers are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EMRContainers::Errors::ServiceError
#       # rescues all Amazon EMR Containers API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EMRContainers
  autoload :Types, 'aws-sdk-emrcontainers/types'
  autoload :ClientApi, 'aws-sdk-emrcontainers/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-emrcontainers/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-emrcontainers/client'
  autoload :Errors, 'aws-sdk-emrcontainers/errors'
  autoload :Resource, 'aws-sdk-emrcontainers/resource'
  autoload :EndpointParameters, 'aws-sdk-emrcontainers/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-emrcontainers/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-emrcontainers/endpoints'

  GEM_VERSION = '1.61.0'

end

require_relative 'aws-sdk-emrcontainers/customizations'
