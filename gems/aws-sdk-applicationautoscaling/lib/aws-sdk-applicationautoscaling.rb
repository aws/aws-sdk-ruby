# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-applicationautoscaling/types'
require_relative 'aws-sdk-applicationautoscaling/client_api'
require_relative 'aws-sdk-applicationautoscaling/client'
require_relative 'aws-sdk-applicationautoscaling/errors'
require_relative 'aws-sdk-applicationautoscaling/resource'
require_relative 'aws-sdk-applicationautoscaling/customizations'

# This module provides support for Application Auto Scaling. This module is available in the
# `aws-sdk-applicationautoscaling` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     application_auto_scaling = Aws::ApplicationAutoScaling::Client.new
#     resp = application_auto_scaling.delete_scaling_policy(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Application Auto Scaling are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ApplicationAutoScaling::Errors::ServiceError
#       # rescues all Application Auto Scaling API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ApplicationAutoScaling

  GEM_VERSION = '1.48.0'

end
