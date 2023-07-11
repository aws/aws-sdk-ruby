# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-workspacesweb/types'
require_relative 'aws-sdk-workspacesweb/client_api'
require_relative 'aws-sdk-workspacesweb/plugins/endpoints.rb'
require_relative 'aws-sdk-workspacesweb/client'
require_relative 'aws-sdk-workspacesweb/errors'
require_relative 'aws-sdk-workspacesweb/resource'
require_relative 'aws-sdk-workspacesweb/endpoint_parameters'
require_relative 'aws-sdk-workspacesweb/endpoint_provider'
require_relative 'aws-sdk-workspacesweb/endpoints'
require_relative 'aws-sdk-workspacesweb/customizations'

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

  GEM_VERSION = '1.13.0'

end
