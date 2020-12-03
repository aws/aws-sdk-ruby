# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-codestar/types'
require_relative 'aws-sdk-codestar/client_api'
require_relative 'aws-sdk-codestar/client'
require_relative 'aws-sdk-codestar/errors'
require_relative 'aws-sdk-codestar/resource'
require_relative 'aws-sdk-codestar/customizations'

# This module provides support for AWS CodeStar. This module is available in the
# `aws-sdk-codestar` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_star = Aws::CodeStar::Client.new
#     resp = code_star.associate_team_member(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CodeStar are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeStar::Errors::ServiceError
#       # rescues all AWS CodeStar API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeStar

  GEM_VERSION = '1.27.0'

end
