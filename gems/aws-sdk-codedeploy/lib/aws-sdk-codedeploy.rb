# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:codedeploy)

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
  autoload :Types, 'aws-sdk-codedeploy/types'
  autoload :ClientApi, 'aws-sdk-codedeploy/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codedeploy/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codedeploy/client'
  autoload :Errors, 'aws-sdk-codedeploy/errors'
  autoload :Waiters, 'aws-sdk-codedeploy/waiters'
  autoload :Resource, 'aws-sdk-codedeploy/resource'
  autoload :EndpointParameters, 'aws-sdk-codedeploy/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codedeploy/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codedeploy/endpoints'

  GEM_VERSION = '1.93.0'

end

require_relative 'aws-sdk-codedeploy/customizations'
