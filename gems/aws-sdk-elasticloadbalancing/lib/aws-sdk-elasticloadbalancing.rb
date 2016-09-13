# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-elasticloadbalancing/types'
require_relative 'aws-sdk-elasticloadbalancing/client_api'
require_relative 'aws-sdk-elasticloadbalancing/client'
require_relative 'aws-sdk-elasticloadbalancing/errors'
require_relative 'aws-sdk-elasticloadbalancing/waiters'
require_relative 'aws-sdk-elasticloadbalancing/resource'

module Aws
  # This module provides support for Elastic Load Balancing.
  #
  # # Aws::ElasticLoadBalancing::Client
  #
  # The {Aws::ElasticLoadBalancing::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     elasticloadbalancing = Aws::ElasticLoadBalancing::Client.new
  #     resp = elasticloadbalancing.add_tags(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ElasticLoadBalancing::Errors
  #
  # Errors returned from Elastic Load Balancing all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElasticLoadBalancing::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ElasticLoadBalancing

    GEM_VERSION = '1.0.0'

  end
end
