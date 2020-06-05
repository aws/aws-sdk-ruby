# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-personalizeruntime/types'
require_relative 'aws-sdk-personalizeruntime/client_api'
require_relative 'aws-sdk-personalizeruntime/client'
require_relative 'aws-sdk-personalizeruntime/errors'
require_relative 'aws-sdk-personalizeruntime/resource'
require_relative 'aws-sdk-personalizeruntime/customizations'

# This module provides support for Amazon Personalize Runtime. This module is available in the
# `aws-sdk-personalizeruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     personalize_runtime = Aws::PersonalizeRuntime::Client.new
#     resp = personalize_runtime.get_personalized_ranking(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Personalize Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PersonalizeRuntime::Errors::ServiceError
#       # rescues all Amazon Personalize Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::PersonalizeRuntime

  GEM_VERSION = '1.11.0'

end
