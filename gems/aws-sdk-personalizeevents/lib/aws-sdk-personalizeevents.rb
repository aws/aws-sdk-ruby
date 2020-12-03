# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-personalizeevents/types'
require_relative 'aws-sdk-personalizeevents/client_api'
require_relative 'aws-sdk-personalizeevents/client'
require_relative 'aws-sdk-personalizeevents/errors'
require_relative 'aws-sdk-personalizeevents/resource'
require_relative 'aws-sdk-personalizeevents/customizations'

# This module provides support for Amazon Personalize Events. This module is available in the
# `aws-sdk-personalizeevents` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     personalize_events = Aws::PersonalizeEvents::Client.new
#     resp = personalize_events.put_events(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Personalize Events are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PersonalizeEvents::Errors::ServiceError
#       # rescues all Amazon Personalize Events API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PersonalizeEvents

  GEM_VERSION = '1.14.0'

end
