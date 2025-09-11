# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ApplicationSignals', Module.new) unless Aws.const_defined?('ApplicationSignals')

# @title Amazon CloudWatch Application Signals
# <p>Use CloudWatch Application Signals for comprehensive observability of your cloud-based applications. 
#         It enables real-time service health dashboards and helps you track long-term performance trends against your business goals. 
#         The application-centric view provides you with unified visibility across your applications, services, and 
#         dependencies, so you can proactively monitor and efficiently triage any issues that may arise, 
#         ensuring optimal customer experience.</p>
#          <p>Application Signals provides the following benefits:</p>
#          <ul>
#             <li>
#                <p>Automatically collect metrics and traces from your applications, and display key metrics such as call volume, availability, latency, faults, and errors. </p>
#             </li>
#             <li>
#                <p>Create and monitor service level objectives (SLOs). </p>
#             </li>
#             <li>
#                <p>See a map of your application topology that Application Signals automatically discovers, that gives you a visual representation of your applications, dependencies, and their connectivity.</p>
#             </li>
#          </ul>
#          <p>Application Signals works with CloudWatch RUM, CloudWatch Synthetics canaries, and Amazon Web Services Service Catalog AppRegistry, to display your client pages, Synthetics canaries, 
#         and application names within dashboards and maps.</p>
module Aws::ApplicationSignals
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-applicationsignals/types'
require_relative 'aws-sdk-applicationsignals/paginators'
require_relative 'aws-sdk-applicationsignals/schema'
require_relative 'aws-sdk-applicationsignals/auth_parameters'
require_relative 'aws-sdk-applicationsignals/auth_resolver'
require_relative 'aws-sdk-applicationsignals/client'
require_relative 'aws-sdk-applicationsignals/customizations'
require_relative 'aws-sdk-applicationsignals/errors'
require_relative 'aws-sdk-applicationsignals/endpoint_parameters'
require_relative 'aws-sdk-applicationsignals/endpoint_provider'
require_relative 'aws-sdk-applicationsignals/waiters'
