# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-connectparticipant/types'
require_relative 'aws-sdk-connectparticipant/client_api'
require_relative 'aws-sdk-connectparticipant/client'
require_relative 'aws-sdk-connectparticipant/errors'
require_relative 'aws-sdk-connectparticipant/resource'
require_relative 'aws-sdk-connectparticipant/customizations'

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
#     resp = connect_participant.create_participant_connection(params)
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

  GEM_VERSION = '1.8.0'

end
