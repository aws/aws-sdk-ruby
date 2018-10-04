# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-elasticloadbalancingv2/types'
require_relative 'aws-sdk-elasticloadbalancingv2/client_api'
require_relative 'aws-sdk-elasticloadbalancingv2/client'
require_relative 'aws-sdk-elasticloadbalancingv2/errors'
require_relative 'aws-sdk-elasticloadbalancingv2/waiters'
require_relative 'aws-sdk-elasticloadbalancingv2/resource'
require_relative 'aws-sdk-elasticloadbalancingv2/customizations'

# This module provides support for Elastic Load Balancing. This module is available in the
# `aws-sdk-elasticloadbalancingv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Elastic Load Balancing all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ElasticLoadBalancingV2::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::ElasticLoadBalancingV2

  GEM_VERSION = '1.14.0'

end
