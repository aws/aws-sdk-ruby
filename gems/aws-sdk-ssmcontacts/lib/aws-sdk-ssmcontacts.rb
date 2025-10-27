# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ssmcontacts)

# This module provides support for AWS Systems Manager Incident Manager Contacts. This module is available in the
# `aws-sdk-ssmcontacts` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ssm_contacts = Aws::SSMContacts::Client.new
#     resp = ssm_contacts.accept_page(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Systems Manager Incident Manager Contacts are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SSMContacts::Errors::ServiceError
#       # rescues all AWS Systems Manager Incident Manager Contacts API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SSMContacts
  autoload :Types, 'aws-sdk-ssmcontacts/types'
  autoload :ClientApi, 'aws-sdk-ssmcontacts/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ssmcontacts/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ssmcontacts/client'
  autoload :Errors, 'aws-sdk-ssmcontacts/errors'
  autoload :Resource, 'aws-sdk-ssmcontacts/resource'
  autoload :EndpointParameters, 'aws-sdk-ssmcontacts/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ssmcontacts/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ssmcontacts/endpoints'

  GEM_VERSION = '1.54.0'

end

require_relative 'aws-sdk-ssmcontacts/customizations'
