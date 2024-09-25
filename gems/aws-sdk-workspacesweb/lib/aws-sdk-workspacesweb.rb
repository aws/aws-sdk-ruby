# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:workspacesweb)

# This module provides support for Amazon WorkSpaces Web. This module is available in the
# `aws-sdk-workspacesweb` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     work_spaces_web = Aws::WorkSpacesWeb::Client.new
#     resp = work_spaces_web.associate_browser_settings(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon WorkSpaces Web are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WorkSpacesWeb::Errors::ServiceError
#       # rescues all Amazon WorkSpaces Web API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WorkSpacesWeb
  autoload :Types, 'aws-sdk-workspacesweb/types'
  autoload :ClientApi, 'aws-sdk-workspacesweb/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-workspacesweb/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-workspacesweb/client'
  autoload :Errors, 'aws-sdk-workspacesweb/errors'
  autoload :Resource, 'aws-sdk-workspacesweb/resource'
  autoload :EndpointParameters, 'aws-sdk-workspacesweb/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-workspacesweb/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-workspacesweb/endpoints'

  GEM_VERSION = '1.33.0'

end

require_relative 'aws-sdk-workspacesweb/customizations'
