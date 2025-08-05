# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:codecommit)

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
  autoload :Types, 'aws-sdk-codecommit/types'
  autoload :ClientApi, 'aws-sdk-codecommit/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codecommit/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codecommit/client'
  autoload :Errors, 'aws-sdk-codecommit/errors'
  autoload :Resource, 'aws-sdk-codecommit/resource'
  autoload :EndpointParameters, 'aws-sdk-codecommit/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codecommit/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codecommit/endpoints'

  GEM_VERSION = '1.89.0'

end

require_relative 'aws-sdk-codecommit/customizations'
