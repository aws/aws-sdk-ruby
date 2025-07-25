# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:gluedatabrew)

# This module provides support for AWS Glue DataBrew. This module is available in the
# `aws-sdk-gluedatabrew` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     glue_data_brew = Aws::GlueDataBrew::Client.new
#     resp = glue_data_brew.batch_delete_recipe_version(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Glue DataBrew are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GlueDataBrew::Errors::ServiceError
#       # rescues all AWS Glue DataBrew API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GlueDataBrew
  autoload :Types, 'aws-sdk-gluedatabrew/types'
  autoload :ClientApi, 'aws-sdk-gluedatabrew/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-gluedatabrew/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-gluedatabrew/client'
  autoload :Errors, 'aws-sdk-gluedatabrew/errors'
  autoload :Resource, 'aws-sdk-gluedatabrew/resource'
  autoload :EndpointParameters, 'aws-sdk-gluedatabrew/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-gluedatabrew/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-gluedatabrew/endpoints'

  GEM_VERSION = '1.56.0'

end

require_relative 'aws-sdk-gluedatabrew/customizations'
