# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-amplifybackend/types'
require_relative 'aws-sdk-amplifybackend/client_api'
require_relative 'aws-sdk-amplifybackend/plugins/endpoints.rb'
require_relative 'aws-sdk-amplifybackend/client'
require_relative 'aws-sdk-amplifybackend/errors'
require_relative 'aws-sdk-amplifybackend/resource'
require_relative 'aws-sdk-amplifybackend/endpoint_parameters'
require_relative 'aws-sdk-amplifybackend/endpoint_provider'
require_relative 'aws-sdk-amplifybackend/endpoints'
require_relative 'aws-sdk-amplifybackend/customizations'

# This module provides support for AmplifyBackend. This module is available in the
# `aws-sdk-amplifybackend` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     amplify_backend = Aws::AmplifyBackend::Client.new
#     resp = amplify_backend.clone_backend(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AmplifyBackend are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AmplifyBackend::Errors::ServiceError
#       # rescues all AmplifyBackend API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AmplifyBackend

  GEM_VERSION = '1.25.0'

end
