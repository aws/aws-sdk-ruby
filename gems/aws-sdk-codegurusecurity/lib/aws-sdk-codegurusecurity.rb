# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-codegurusecurity/types'
require_relative 'aws-sdk-codegurusecurity/client_api'
require_relative 'aws-sdk-codegurusecurity/plugins/endpoints.rb'
require_relative 'aws-sdk-codegurusecurity/client'
require_relative 'aws-sdk-codegurusecurity/errors'
require_relative 'aws-sdk-codegurusecurity/resource'
require_relative 'aws-sdk-codegurusecurity/endpoint_parameters'
require_relative 'aws-sdk-codegurusecurity/endpoint_provider'
require_relative 'aws-sdk-codegurusecurity/endpoints'
require_relative 'aws-sdk-codegurusecurity/customizations'

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

  GEM_VERSION = '1.4.0'

end
