# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-elasticloadbalancingv2/types'
require_relative 'aws-sdk-elasticloadbalancingv2/client_api'
require_relative 'aws-sdk-elasticloadbalancingv2/client'
require_relative 'aws-sdk-elasticloadbalancingv2/errors'
require_relative 'aws-sdk-elasticloadbalancingv2/resource'

module Aws
  # @service
  # This module provides support for Elastic Load Balancing, which shipped in `aws-sdk-elasticloadbalancingv2` gem.
  #
  # # Aws::ElasticLoadBalancingV2::Client
  #
  # The {Aws::ElasticLoadBalancingV2::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     elasticloadbalancingv2 = Aws::ElasticLoadBalancingV2::Client.new
  #     resp = elasticloadbalancingv2.add_tags(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ElasticLoadBalancingV2::Errors
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
  module ElasticLoadBalancingV2

    GEM_VERSION = '1.0.0.rc1'

  end
end
