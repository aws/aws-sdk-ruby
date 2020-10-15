# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-workmail/types'
require_relative 'aws-sdk-workmail/client_api'
require_relative 'aws-sdk-workmail/client'
require_relative 'aws-sdk-workmail/errors'
require_relative 'aws-sdk-workmail/resource'
require_relative 'aws-sdk-workmail/customizations'

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

  GEM_VERSION = '1.32.0'

end
