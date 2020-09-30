# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-codestarconnections/types'
require_relative 'aws-sdk-codestarconnections/client_api'
require_relative 'aws-sdk-codestarconnections/client'
require_relative 'aws-sdk-codestarconnections/errors'
require_relative 'aws-sdk-codestarconnections/resource'
require_relative 'aws-sdk-codestarconnections/customizations'

# This module provides support for AWS CodeStar connections. This module is available in the
# `aws-sdk-codestarconnections` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_starconnections = Aws::CodeStarconnections::Client.new
#     resp = code_starconnections.create_connection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CodeStar connections are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeStarconnections::Errors::ServiceError
#       # rescues all AWS CodeStar connections API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeStarconnections

  GEM_VERSION = '1.11.0'

end
