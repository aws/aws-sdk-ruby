# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-accessanalyzer/types'
require_relative 'aws-sdk-accessanalyzer/client_api'
require_relative 'aws-sdk-accessanalyzer/client'
require_relative 'aws-sdk-accessanalyzer/errors'
require_relative 'aws-sdk-accessanalyzer/resource'
require_relative 'aws-sdk-accessanalyzer/customizations'

# This module provides support for Access Analyzer. This module is available in the
# `aws-sdk-accessanalyzer` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     access_analyzer = Aws::AccessAnalyzer::Client.new
#     resp = access_analyzer.apply_archive_rule(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Access Analyzer are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AccessAnalyzer::Errors::ServiceError
#       # rescues all Access Analyzer API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AccessAnalyzer

  GEM_VERSION = '1.13.0'

end
