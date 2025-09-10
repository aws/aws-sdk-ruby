# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:autoscaling)

# This module provides support for Auto Scaling. This module is available in the
# `aws-sdk-autoscaling` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     auto_scaling = Aws::AutoScaling::Client.new
#     resp = auto_scaling.attach_instances(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Auto Scaling are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AutoScaling::Errors::ServiceError
#       # rescues all Auto Scaling API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AutoScaling
  autoload :Types, 'aws-sdk-autoscaling/types'
  autoload :ClientApi, 'aws-sdk-autoscaling/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-autoscaling/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-autoscaling/client'
  autoload :Errors, 'aws-sdk-autoscaling/errors'
  autoload :Waiters, 'aws-sdk-autoscaling/waiters'
  autoload :Resource, 'aws-sdk-autoscaling/resource'
  autoload :EndpointParameters, 'aws-sdk-autoscaling/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-autoscaling/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-autoscaling/endpoints'
  autoload :Activity, 'aws-sdk-autoscaling/activity'
  autoload :AutoScalingGroup, 'aws-sdk-autoscaling/auto_scaling_group'
  autoload :Instance, 'aws-sdk-autoscaling/instance'
  autoload :LaunchConfiguration, 'aws-sdk-autoscaling/launch_configuration'
  autoload :LifecycleHook, 'aws-sdk-autoscaling/lifecycle_hook'
  autoload :LoadBalancer, 'aws-sdk-autoscaling/load_balancer'
  autoload :NotificationConfiguration, 'aws-sdk-autoscaling/notification_configuration'
  autoload :ScalingPolicy, 'aws-sdk-autoscaling/scaling_policy'
  autoload :ScheduledAction, 'aws-sdk-autoscaling/scheduled_action'
  autoload :Tag, 'aws-sdk-autoscaling/tag'

  GEM_VERSION = '1.144.0'

end

require_relative 'aws-sdk-autoscaling/customizations'
