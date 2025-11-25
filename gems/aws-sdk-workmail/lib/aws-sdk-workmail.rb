# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:workmail)

# This module provides support for Amazon WorkMail. This module is available in the
# `aws-sdk-workmail` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     work_mail = Aws::WorkMail::Client.new
#     resp = work_mail.associate_delegate_to_resource(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon WorkMail are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WorkMail::Errors::ServiceError
#       # rescues all Amazon WorkMail API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WorkMail
  autoload :Types, 'aws-sdk-workmail/types'
  autoload :ClientApi, 'aws-sdk-workmail/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-workmail/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-workmail/client'
  autoload :Errors, 'aws-sdk-workmail/errors'
  autoload :Resource, 'aws-sdk-workmail/resource'
  autoload :EndpointParameters, 'aws-sdk-workmail/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-workmail/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-workmail/endpoints'

  GEM_VERSION = '1.93.0'

end

require_relative 'aws-sdk-workmail/customizations'
