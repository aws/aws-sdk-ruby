# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mediatailor/types'
require_relative 'aws-sdk-mediatailor/client_api'
require_relative 'aws-sdk-mediatailor/client'
require_relative 'aws-sdk-mediatailor/errors'
require_relative 'aws-sdk-mediatailor/resource'
require_relative 'aws-sdk-mediatailor/customizations'

# This module provides support for AWS MediaTailor. This module is available in the
# `aws-sdk-mediatailor` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_tailor = Aws::MediaTailor::Client.new
#     resp = media_tailor.configure_logs_for_playback_configuration(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS MediaTailor are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaTailor::Errors::ServiceError
#       # rescues all AWS MediaTailor API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaTailor

  GEM_VERSION = '1.55.0'

end
