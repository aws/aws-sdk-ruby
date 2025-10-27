# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ssmincidents)

# This module provides support for AWS Systems Manager Incident Manager. This module is available in the
# `aws-sdk-ssmincidents` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ssm_incidents = Aws::SSMIncidents::Client.new
#     resp = ssm_incidents.batch_get_incident_findings(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Systems Manager Incident Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SSMIncidents::Errors::ServiceError
#       # rescues all AWS Systems Manager Incident Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SSMIncidents
  autoload :Types, 'aws-sdk-ssmincidents/types'
  autoload :ClientApi, 'aws-sdk-ssmincidents/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ssmincidents/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ssmincidents/client'
  autoload :Errors, 'aws-sdk-ssmincidents/errors'
  autoload :Waiters, 'aws-sdk-ssmincidents/waiters'
  autoload :Resource, 'aws-sdk-ssmincidents/resource'
  autoload :EndpointParameters, 'aws-sdk-ssmincidents/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ssmincidents/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ssmincidents/endpoints'

  GEM_VERSION = '1.59.0'

end

require_relative 'aws-sdk-ssmincidents/customizations'
