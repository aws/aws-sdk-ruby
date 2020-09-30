# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-workmailmessageflow/types'
require_relative 'aws-sdk-workmailmessageflow/client_api'
require_relative 'aws-sdk-workmailmessageflow/client'
require_relative 'aws-sdk-workmailmessageflow/errors'
require_relative 'aws-sdk-workmailmessageflow/resource'
require_relative 'aws-sdk-workmailmessageflow/customizations'

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

  GEM_VERSION = '1.9.0'

end
