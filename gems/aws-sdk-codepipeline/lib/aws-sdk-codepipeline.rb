# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-codepipeline/types'
require_relative 'aws-sdk-codepipeline/client_api'
require_relative 'aws-sdk-codepipeline/client'
require_relative 'aws-sdk-codepipeline/errors'
require_relative 'aws-sdk-codepipeline/resource'
require_relative 'aws-sdk-codepipeline/customizations'

# This module provides support for AWS CodePipeline. This module is available in the
# `aws-sdk-codepipeline` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_pipeline = Aws::CodePipeline::Client.new
#     resp = code_pipeline.acknowledge_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CodePipeline are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodePipeline::Errors::ServiceError
#       # rescues all AWS CodePipeline API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodePipeline

  GEM_VERSION = '1.37.0'

end
