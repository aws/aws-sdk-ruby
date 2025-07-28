# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ecrpublic)

# This module provides support for Amazon Elastic Container Registry Public. This module is available in the
# `aws-sdk-ecrpublic` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ecr_public = Aws::ECRPublic::Client.new
#     resp = ecr_public.batch_check_layer_availability(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elastic Container Registry Public are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ECRPublic::Errors::ServiceError
#       # rescues all Amazon Elastic Container Registry Public API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ECRPublic
  autoload :Types, 'aws-sdk-ecrpublic/types'
  autoload :ClientApi, 'aws-sdk-ecrpublic/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ecrpublic/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ecrpublic/client'
  autoload :Errors, 'aws-sdk-ecrpublic/errors'
  autoload :Resource, 'aws-sdk-ecrpublic/resource'
  autoload :EndpointParameters, 'aws-sdk-ecrpublic/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ecrpublic/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ecrpublic/endpoints'

  GEM_VERSION = '1.52.0'

end

require_relative 'aws-sdk-ecrpublic/customizations'
