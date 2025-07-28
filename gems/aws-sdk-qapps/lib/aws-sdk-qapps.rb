# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:qapps)

# This module provides support for QApps. This module is available in the
# `aws-sdk-qapps` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     q_apps = Aws::QApps::Client.new
#     resp = q_apps.associate_library_item_review(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from QApps are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::QApps::Errors::ServiceError
#       # rescues all QApps API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::QApps
  autoload :Types, 'aws-sdk-qapps/types'
  autoload :ClientApi, 'aws-sdk-qapps/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-qapps/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-qapps/client'
  autoload :Errors, 'aws-sdk-qapps/errors'
  autoload :Waiters, 'aws-sdk-qapps/waiters'
  autoload :Resource, 'aws-sdk-qapps/resource'
  autoload :EndpointParameters, 'aws-sdk-qapps/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-qapps/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-qapps/endpoints'

  GEM_VERSION = '1.18.0'

end

require_relative 'aws-sdk-qapps/customizations'
