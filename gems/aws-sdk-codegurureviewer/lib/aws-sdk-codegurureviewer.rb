# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:codegurureviewer)

# This module provides support for Amazon CodeGuru Reviewer. This module is available in the
# `aws-sdk-codegurureviewer` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_guru_reviewer = Aws::CodeGuruReviewer::Client.new
#     resp = code_guru_reviewer.associate_repository(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CodeGuru Reviewer are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeGuruReviewer::Errors::ServiceError
#       # rescues all Amazon CodeGuru Reviewer API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeGuruReviewer
  autoload :Types, 'aws-sdk-codegurureviewer/types'
  autoload :ClientApi, 'aws-sdk-codegurureviewer/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codegurureviewer/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codegurureviewer/client'
  autoload :Errors, 'aws-sdk-codegurureviewer/errors'
  autoload :Waiters, 'aws-sdk-codegurureviewer/waiters'
  autoload :Resource, 'aws-sdk-codegurureviewer/resource'
  autoload :EndpointParameters, 'aws-sdk-codegurureviewer/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codegurureviewer/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codegurureviewer/endpoints'

  GEM_VERSION = '1.67.0'

end

require_relative 'aws-sdk-codegurureviewer/customizations'
