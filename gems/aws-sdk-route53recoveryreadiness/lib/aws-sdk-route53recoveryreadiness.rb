# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:route53recoveryreadiness)

# This module provides support for AWS Route53 Recovery Readiness. This module is available in the
# `aws-sdk-route53recoveryreadiness` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     route_53_recovery_readiness = Aws::Route53RecoveryReadiness::Client.new
#     resp = route_53_recovery_readiness.create_cell(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Route53 Recovery Readiness are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Route53RecoveryReadiness::Errors::ServiceError
#       # rescues all AWS Route53 Recovery Readiness API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Route53RecoveryReadiness
  autoload :Types, 'aws-sdk-route53recoveryreadiness/types'
  autoload :ClientApi, 'aws-sdk-route53recoveryreadiness/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-route53recoveryreadiness/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-route53recoveryreadiness/client'
  autoload :Errors, 'aws-sdk-route53recoveryreadiness/errors'
  autoload :Resource, 'aws-sdk-route53recoveryreadiness/resource'
  autoload :EndpointParameters, 'aws-sdk-route53recoveryreadiness/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-route53recoveryreadiness/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-route53recoveryreadiness/endpoints'

  GEM_VERSION = '1.42.0'

end

require_relative 'aws-sdk-route53recoveryreadiness/customizations'
