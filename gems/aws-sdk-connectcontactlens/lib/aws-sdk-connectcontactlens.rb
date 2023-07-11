# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-connectcontactlens/types'
require_relative 'aws-sdk-connectcontactlens/client_api'
require_relative 'aws-sdk-connectcontactlens/plugins/endpoints.rb'
require_relative 'aws-sdk-connectcontactlens/client'
require_relative 'aws-sdk-connectcontactlens/errors'
require_relative 'aws-sdk-connectcontactlens/resource'
require_relative 'aws-sdk-connectcontactlens/endpoint_parameters'
require_relative 'aws-sdk-connectcontactlens/endpoint_provider'
require_relative 'aws-sdk-connectcontactlens/endpoints'
require_relative 'aws-sdk-connectcontactlens/customizations'

# This module provides support for Amazon Connect Contact Lens. This module is available in the
# `aws-sdk-connectcontactlens` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect_contact_lens = Aws::ConnectContactLens::Client.new
#     resp = connect_contact_lens.list_realtime_contact_analysis_segments(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Connect Contact Lens are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConnectContactLens::Errors::ServiceError
#       # rescues all Amazon Connect Contact Lens API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConnectContactLens

  GEM_VERSION = '1.18.0'

end
