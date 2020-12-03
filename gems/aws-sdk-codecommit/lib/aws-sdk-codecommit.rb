# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-codecommit/types'
require_relative 'aws-sdk-codecommit/client_api'
require_relative 'aws-sdk-codecommit/client'
require_relative 'aws-sdk-codecommit/errors'
require_relative 'aws-sdk-codecommit/resource'
require_relative 'aws-sdk-codecommit/customizations'

# This module provides support for AWS CodeCommit. This module is available in the
# `aws-sdk-codecommit` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_commit = Aws::CodeCommit::Client.new
#     resp = code_commit.associate_approval_rule_template_with_repository(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CodeCommit are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeCommit::Errors::ServiceError
#       # rescues all AWS CodeCommit API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeCommit

  GEM_VERSION = '1.40.0'

end
