# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-route53recoveryreadiness/types'
require_relative 'aws-sdk-route53recoveryreadiness/client_api'
require_relative 'aws-sdk-route53recoveryreadiness/plugins/endpoints.rb'
require_relative 'aws-sdk-route53recoveryreadiness/client'
require_relative 'aws-sdk-route53recoveryreadiness/errors'
require_relative 'aws-sdk-route53recoveryreadiness/resource'
require_relative 'aws-sdk-route53recoveryreadiness/endpoint_parameters'
require_relative 'aws-sdk-route53recoveryreadiness/endpoint_provider'
require_relative 'aws-sdk-route53recoveryreadiness/endpoints'
require_relative 'aws-sdk-route53recoveryreadiness/customizations'

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

  GEM_VERSION = '1.17.0'

end
