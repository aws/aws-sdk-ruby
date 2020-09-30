# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-codedeploy/types'
require_relative 'aws-sdk-codedeploy/client_api'
require_relative 'aws-sdk-codedeploy/client'
require_relative 'aws-sdk-codedeploy/errors'
require_relative 'aws-sdk-codedeploy/waiters'
require_relative 'aws-sdk-codedeploy/resource'
require_relative 'aws-sdk-codedeploy/customizations'

# This module provides support for AWS CodeDeploy. This module is available in the
# `aws-sdk-codedeploy` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_deploy = Aws::CodeDeploy::Client.new
#     resp = code_deploy.add_tags_to_on_premises_instances(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CodeDeploy are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeDeploy::Errors::ServiceError
#       # rescues all AWS CodeDeploy API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeDeploy

  GEM_VERSION = '1.37.0'

end
