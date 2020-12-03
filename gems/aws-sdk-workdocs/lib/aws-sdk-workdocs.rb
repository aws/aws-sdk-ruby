# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-workdocs/types'
require_relative 'aws-sdk-workdocs/client_api'
require_relative 'aws-sdk-workdocs/client'
require_relative 'aws-sdk-workdocs/errors'
require_relative 'aws-sdk-workdocs/resource'
require_relative 'aws-sdk-workdocs/customizations'

# This module provides support for Amazon WorkDocs. This module is available in the
# `aws-sdk-workdocs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     work_docs = Aws::WorkDocs::Client.new
#     resp = work_docs.abort_document_version_upload(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon WorkDocs are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WorkDocs::Errors::ServiceError
#       # rescues all Amazon WorkDocs API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WorkDocs

  GEM_VERSION = '1.28.0'

end
