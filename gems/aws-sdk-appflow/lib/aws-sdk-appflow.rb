# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-appflow/types'
require_relative 'aws-sdk-appflow/client_api'
require_relative 'aws-sdk-appflow/client'
require_relative 'aws-sdk-appflow/errors'
require_relative 'aws-sdk-appflow/resource'
require_relative 'aws-sdk-appflow/customizations'

# This module provides support for Amazon Appflow. This module is available in the
# `aws-sdk-appflow` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     appflow = Aws::Appflow::Client.new
#     resp = appflow.create_connector_profile(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Appflow are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Appflow::Errors::ServiceError
#       # rescues all Amazon Appflow API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Appflow

  GEM_VERSION = '1.2.0'

end
