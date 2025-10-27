# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:route53recoverycluster)

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
  autoload :Types, 'aws-sdk-route53recoverycluster/types'
  autoload :ClientApi, 'aws-sdk-route53recoverycluster/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-route53recoverycluster/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-route53recoverycluster/client'
  autoload :Errors, 'aws-sdk-route53recoverycluster/errors'
  autoload :Resource, 'aws-sdk-route53recoverycluster/resource'
  autoload :EndpointParameters, 'aws-sdk-route53recoverycluster/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-route53recoverycluster/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-route53recoverycluster/endpoints'

  GEM_VERSION = '1.50.0'

end

require_relative 'aws-sdk-route53recoverycluster/customizations'
