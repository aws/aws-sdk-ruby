# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-codebuild/types'
require_relative 'aws-sdk-codebuild/client_api'
require_relative 'aws-sdk-codebuild/client'
require_relative 'aws-sdk-codebuild/errors'
require_relative 'aws-sdk-codebuild/resource'
require_relative 'aws-sdk-codebuild/customizations'

# This module provides support for AWS CodeBuild. This module is available in the
# `aws-sdk-codebuild` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_build = Aws::CodeBuild::Client.new
#     resp = code_build.batch_delete_builds(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CodeBuild are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeBuild::Errors::ServiceError
#       # rescues all AWS CodeBuild API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeBuild

  GEM_VERSION = '1.63.0'

end
