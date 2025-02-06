# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:route53recoverycontrolconfig)

# This module provides support for AWS Route53 Recovery Control Config. This module is available in the
# `aws-sdk-route53recoverycontrolconfig` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     route_53_recovery_control_config = Aws::Route53RecoveryControlConfig::Client.new
#     resp = route_53_recovery_control_config.create_cluster(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Route53 Recovery Control Config are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Route53RecoveryControlConfig::Errors::ServiceError
#       # rescues all AWS Route53 Recovery Control Config API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Route53RecoveryControlConfig
  autoload :Types, 'aws-sdk-route53recoverycontrolconfig/types'
  autoload :ClientApi, 'aws-sdk-route53recoverycontrolconfig/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-route53recoverycontrolconfig/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-route53recoverycontrolconfig/client'
  autoload :Errors, 'aws-sdk-route53recoverycontrolconfig/errors'
  autoload :Waiters, 'aws-sdk-route53recoverycontrolconfig/waiters'
  autoload :Resource, 'aws-sdk-route53recoverycontrolconfig/resource'
  autoload :EndpointParameters, 'aws-sdk-route53recoverycontrolconfig/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-route53recoverycontrolconfig/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-route53recoverycontrolconfig/endpoints'

  GEM_VERSION = '1.39.0'

end

require_relative 'aws-sdk-route53recoverycontrolconfig/customizations'
