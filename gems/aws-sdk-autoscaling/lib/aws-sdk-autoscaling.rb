# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-autoscaling/types'
require_relative 'aws-sdk-autoscaling/client_api'
require_relative 'aws-sdk-autoscaling/client'
require_relative 'aws-sdk-autoscaling/errors'
require_relative 'aws-sdk-autoscaling/waiters'
require_relative 'aws-sdk-autoscaling/resource'
require_relative 'aws-sdk-autoscaling/activity'
require_relative 'aws-sdk-autoscaling/auto_scaling_group'
require_relative 'aws-sdk-autoscaling/instance'
require_relative 'aws-sdk-autoscaling/launch_configuration'
require_relative 'aws-sdk-autoscaling/lifecycle_hook'
require_relative 'aws-sdk-autoscaling/load_balancer'
require_relative 'aws-sdk-autoscaling/notification_configuration'
require_relative 'aws-sdk-autoscaling/scaling_policy'
require_relative 'aws-sdk-autoscaling/scheduled_action'
require_relative 'aws-sdk-autoscaling/tag'
require_relative 'aws-sdk-autoscaling/customizations'

# This module provides support for Auto Scaling. This module is available in the
# `aws-sdk-autoscaling` gem.
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
# Errors returned from Auto Scaling all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AutoScaling::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::AutoScaling

  GEM_VERSION = '1.9.0'

end
