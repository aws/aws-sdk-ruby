# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-elasticloadbalancing/types'
require_relative 'aws-sdk-elasticloadbalancing/client_api'
require_relative 'aws-sdk-elasticloadbalancing/client'
require_relative 'aws-sdk-elasticloadbalancing/errors'
require_relative 'aws-sdk-elasticloadbalancing/waiters'
require_relative 'aws-sdk-elasticloadbalancing/resource'
require_relative 'aws-sdk-elasticloadbalancing/customizations'

# This module provides support for Elastic Load Balancing. This module is available in the
# `aws-sdk-elasticloadbalancing` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     elastic_load_balancing = Aws::ElasticLoadBalancing::Client.new
#     resp = elastic_load_balancing.add_tags(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Elastic Load Balancing are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ElasticLoadBalancing::Errors::ServiceError
#       # rescues all Elastic Load Balancing API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ElasticLoadBalancing

  GEM_VERSION = '1.29.0'

end
