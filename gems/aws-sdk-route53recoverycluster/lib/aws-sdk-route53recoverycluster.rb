# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-route53recoverycluster/types'
require_relative 'aws-sdk-route53recoverycluster/client_api'
require_relative 'aws-sdk-route53recoverycluster/plugins/endpoints.rb'
require_relative 'aws-sdk-route53recoverycluster/client'
require_relative 'aws-sdk-route53recoverycluster/errors'
require_relative 'aws-sdk-route53recoverycluster/resource'
require_relative 'aws-sdk-route53recoverycluster/endpoint_parameters'
require_relative 'aws-sdk-route53recoverycluster/endpoint_provider'
require_relative 'aws-sdk-route53recoverycluster/endpoints'
require_relative 'aws-sdk-route53recoverycluster/customizations'

# This module provides support for Route53 Recovery Cluster. This module is available in the
# `aws-sdk-route53recoverycluster` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     route_53_recovery_cluster = Aws::Route53RecoveryCluster::Client.new
#     resp = route_53_recovery_cluster.get_routing_control_state(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Route53 Recovery Cluster are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Route53RecoveryCluster::Errors::ServiceError
#       # rescues all Route53 Recovery Cluster API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Route53RecoveryCluster

  GEM_VERSION = '1.18.0'

end
