# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-swf/types'
require_relative 'aws-sdk-swf/client_api'
require_relative 'aws-sdk-swf/client'
require_relative 'aws-sdk-swf/errors'
require_relative 'aws-sdk-swf/resource'
require_relative 'aws-sdk-swf/customizations'

# This module provides support for Amazon Simple Workflow Service. This module is available in the
# `aws-sdk-swf` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     swf = Aws::SWF::Client.new
#     resp = swf.count_closed_workflow_executions(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Simple Workflow Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SWF::Errors::ServiceError
#       # rescues all Amazon Simple Workflow Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SWF

  GEM_VERSION = '1.25.0'

end
