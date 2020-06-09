# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-guardduty/types'
require_relative 'aws-sdk-guardduty/client_api'
require_relative 'aws-sdk-guardduty/client'
require_relative 'aws-sdk-guardduty/errors'
require_relative 'aws-sdk-guardduty/resource'
require_relative 'aws-sdk-guardduty/customizations'

# This module provides support for Amazon GuardDuty. This module is available in the
# `aws-sdk-guardduty` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     guard_duty = Aws::GuardDuty::Client.new
#     resp = guard_duty.accept_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon GuardDuty are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GuardDuty::Errors::ServiceError
#       # rescues all Amazon GuardDuty API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::GuardDuty

  GEM_VERSION = '1.34.0'

end
