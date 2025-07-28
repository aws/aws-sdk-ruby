# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:codeartifact)

# This module provides support for CodeArtifact. This module is available in the
# `aws-sdk-codeartifact` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_artifact = Aws::CodeArtifact::Client.new
#     resp = code_artifact.associate_external_connection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from CodeArtifact are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeArtifact::Errors::ServiceError
#       # rescues all CodeArtifact API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeArtifact
  autoload :Types, 'aws-sdk-codeartifact/types'
  autoload :ClientApi, 'aws-sdk-codeartifact/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codeartifact/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codeartifact/client'
  autoload :Errors, 'aws-sdk-codeartifact/errors'
  autoload :Resource, 'aws-sdk-codeartifact/resource'
  autoload :EndpointParameters, 'aws-sdk-codeartifact/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codeartifact/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codeartifact/endpoints'

  GEM_VERSION = '1.63.0'

end

require_relative 'aws-sdk-codeartifact/customizations'
