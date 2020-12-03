# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-augmentedairuntime/types'
require_relative 'aws-sdk-augmentedairuntime/client_api'
require_relative 'aws-sdk-augmentedairuntime/client'
require_relative 'aws-sdk-augmentedairuntime/errors'
require_relative 'aws-sdk-augmentedairuntime/resource'
require_relative 'aws-sdk-augmentedairuntime/customizations'

# This module provides support for Amazon Augmented AI Runtime. This module is available in the
# `aws-sdk-augmentedairuntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     augmented_ai_runtime = Aws::AugmentedAIRuntime::Client.new
#     resp = augmented_ai_runtime.delete_human_loop(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Augmented AI Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AugmentedAIRuntime::Errors::ServiceError
#       # rescues all Amazon Augmented AI Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AugmentedAIRuntime

  GEM_VERSION = '1.10.0'

end
