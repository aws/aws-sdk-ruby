# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-sagemakerruntime/types'
require_relative 'aws-sdk-sagemakerruntime/client_api'
require_relative 'aws-sdk-sagemakerruntime/client'
require_relative 'aws-sdk-sagemakerruntime/errors'
require_relative 'aws-sdk-sagemakerruntime/resource'
require_relative 'aws-sdk-sagemakerruntime/customizations'

# This module provides support for Amazon SageMaker Runtime. This module is available in the
# `aws-sdk-sagemakerruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sage_maker_runtime = Aws::SageMakerRuntime::Client.new
#     resp = sage_maker_runtime.invoke_endpoint(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon SageMaker Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SageMakerRuntime::Errors::ServiceError
#       # rescues all Amazon SageMaker Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::SageMakerRuntime

  GEM_VERSION = '1.22.0'

end
