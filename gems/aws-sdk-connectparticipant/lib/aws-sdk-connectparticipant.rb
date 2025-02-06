# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:connectparticipant)

# This module provides support for Amazon Connect Participant Service. This module is available in the
# `aws-sdk-connectparticipant` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect_participant = Aws::ConnectParticipant::Client.new
#     resp = connect_participant.cancel_participant_authentication(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Connect Participant Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConnectParticipant::Errors::ServiceError
#       # rescues all Amazon Connect Participant Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConnectParticipant
  autoload :Types, 'aws-sdk-connectparticipant/types'
  autoload :ClientApi, 'aws-sdk-connectparticipant/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-connectparticipant/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-connectparticipant/client'
  autoload :Errors, 'aws-sdk-connectparticipant/errors'
  autoload :Resource, 'aws-sdk-connectparticipant/resource'
  autoload :EndpointParameters, 'aws-sdk-connectparticipant/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-connectparticipant/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-connectparticipant/endpoints'

  GEM_VERSION = '1.60.0'

end

require_relative 'aws-sdk-connectparticipant/customizations'
