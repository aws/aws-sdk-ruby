# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-route53recoverycontrolconfig/types'
require_relative 'aws-sdk-route53recoverycontrolconfig/client_api'
require_relative 'aws-sdk-route53recoverycontrolconfig/plugins/endpoints.rb'
require_relative 'aws-sdk-route53recoverycontrolconfig/client'
require_relative 'aws-sdk-route53recoverycontrolconfig/errors'
require_relative 'aws-sdk-route53recoverycontrolconfig/waiters'
require_relative 'aws-sdk-route53recoverycontrolconfig/resource'
require_relative 'aws-sdk-route53recoverycontrolconfig/endpoint_parameters'
require_relative 'aws-sdk-route53recoverycontrolconfig/endpoint_provider'
require_relative 'aws-sdk-route53recoverycontrolconfig/endpoints'
require_relative 'aws-sdk-route53recoverycontrolconfig/customizations'

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

  GEM_VERSION = '1.18.0'

end
