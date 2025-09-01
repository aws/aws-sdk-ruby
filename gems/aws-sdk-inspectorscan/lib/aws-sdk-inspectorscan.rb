# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('InspectorScan', Module.new) unless Aws.const_defined?('InspectorScan')

# @title Inspector Scan
# <p>Amazon Inspector Scan is a vulnerability discovery service that scans a provided Software Bill of Materials (SBOM) for security vulnerabilities.</p>
module Aws::InspectorScan
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-inspectorscan/types'
require_relative 'aws-sdk-inspectorscan/paginators'
require_relative 'aws-sdk-inspectorscan/schema'
require_relative 'aws-sdk-inspectorscan/auth_parameters'
require_relative 'aws-sdk-inspectorscan/auth_resolver'
require_relative 'aws-sdk-inspectorscan/client'
require_relative 'aws-sdk-inspectorscan/customizations'
require_relative 'aws-sdk-inspectorscan/errors'
require_relative 'aws-sdk-inspectorscan/endpoint_parameters'
require_relative 'aws-sdk-inspectorscan/endpoint_provider'
require_relative 'aws-sdk-inspectorscan/waiters'
