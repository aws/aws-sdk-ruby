# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:accessanalyzer)

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
  autoload :Types, 'aws-sdk-accessanalyzer/types'
  autoload :ClientApi, 'aws-sdk-accessanalyzer/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-accessanalyzer/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-accessanalyzer/client'
  autoload :Errors, 'aws-sdk-accessanalyzer/errors'
  autoload :Resource, 'aws-sdk-accessanalyzer/resource'
  autoload :EndpointParameters, 'aws-sdk-accessanalyzer/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-accessanalyzer/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-accessanalyzer/endpoints'

  GEM_VERSION = '1.82.0'

end

require_relative 'aws-sdk-accessanalyzer/customizations'
