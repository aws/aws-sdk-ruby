# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-artifact/types'
require_relative 'aws-sdk-artifact/client_api'
require_relative 'aws-sdk-artifact/plugins/endpoints.rb'
require_relative 'aws-sdk-artifact/client'
require_relative 'aws-sdk-artifact/errors'
require_relative 'aws-sdk-artifact/waiters'
require_relative 'aws-sdk-artifact/resource'
require_relative 'aws-sdk-artifact/endpoint_parameters'
require_relative 'aws-sdk-artifact/endpoint_provider'
require_relative 'aws-sdk-artifact/endpoints'
require_relative 'aws-sdk-artifact/customizations'

# This module provides support for AWS Artifact. This module is available in the
# `aws-sdk-artifact` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     artifact = Aws::Artifact::Client.new
#     resp = artifact.get_account_settings(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Artifact are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Artifact::Errors::ServiceError
#       # rescues all AWS Artifact API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Artifact

  GEM_VERSION = '1.6.0'

end
