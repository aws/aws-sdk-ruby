# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-qldbsession/types'
require_relative 'aws-sdk-qldbsession/client_api'
require_relative 'aws-sdk-qldbsession/client'
require_relative 'aws-sdk-qldbsession/errors'
require_relative 'aws-sdk-qldbsession/resource'
require_relative 'aws-sdk-qldbsession/customizations'

# This module provides support for Amazon QLDB Session. This module is available in the
# `aws-sdk-qldbsession` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     qldb_session = Aws::QLDBSession::Client.new
#     resp = qldb_session.send_command(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon QLDB Session are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::QLDBSession::Errors::ServiceError
#       # rescues all Amazon QLDB Session API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::QLDBSession

  GEM_VERSION = '1.9.0'

end
