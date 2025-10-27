# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:workmailmessageflow)

# This module provides support for Amazon WorkMail Message Flow. This module is available in the
# `aws-sdk-workmailmessageflow` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     work_mail_message_flow = Aws::WorkMailMessageFlow::Client.new
#     resp = work_mail_message_flow.get_raw_message_content(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon WorkMail Message Flow are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WorkMailMessageFlow::Errors::ServiceError
#       # rescues all Amazon WorkMail Message Flow API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WorkMailMessageFlow
  autoload :Types, 'aws-sdk-workmailmessageflow/types'
  autoload :ClientApi, 'aws-sdk-workmailmessageflow/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-workmailmessageflow/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-workmailmessageflow/client'
  autoload :Errors, 'aws-sdk-workmailmessageflow/errors'
  autoload :Resource, 'aws-sdk-workmailmessageflow/resource'
  autoload :EndpointParameters, 'aws-sdk-workmailmessageflow/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-workmailmessageflow/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-workmailmessageflow/endpoints'

  GEM_VERSION = '1.59.0'

end

require_relative 'aws-sdk-workmailmessageflow/customizations'
