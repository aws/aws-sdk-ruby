# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:codegurusecurity)

# This module provides support for Amazon CodeGuru Security. This module is available in the
# `aws-sdk-codegurusecurity` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_guru_security = Aws::CodeGuruSecurity::Client.new
#     resp = code_guru_security.batch_get_findings(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CodeGuru Security are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeGuruSecurity::Errors::ServiceError
#       # rescues all Amazon CodeGuru Security API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeGuruSecurity
  autoload :Types, 'aws-sdk-codegurusecurity/types'
  autoload :ClientApi, 'aws-sdk-codegurusecurity/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codegurusecurity/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codegurusecurity/client'
  autoload :Errors, 'aws-sdk-codegurusecurity/errors'
  autoload :Waiters, 'aws-sdk-codegurusecurity/waiters'
  autoload :Resource, 'aws-sdk-codegurusecurity/resource'
  autoload :EndpointParameters, 'aws-sdk-codegurusecurity/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codegurusecurity/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codegurusecurity/endpoints'

  GEM_VERSION = '1.38.0'

end

require_relative 'aws-sdk-codegurusecurity/customizations'
