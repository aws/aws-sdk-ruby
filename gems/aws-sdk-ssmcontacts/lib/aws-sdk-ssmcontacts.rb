# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SSMContacts', Module.new) unless Aws.const_defined?('SSMContacts')

# @title AWS Systems Manager Incident Manager Contacts
# <p>Systems Manager Incident Manager is an incident management console designed to help users
#          mitigate and recover from incidents affecting their Amazon Web Services-hosted applications.
#          An incident is any unplanned interruption or reduction in quality of services.</p>
#          <p>Incident Manager increases incident resolution by notifying responders of
#          impact, highlighting relevant troubleshooting data, and providing collaboration tools to
#          get services back up and running. To achieve the primary goal of reducing the
#          time-to-resolution of critical incidents, Incident Manager automates response plans
#          and enables responder team escalation.</p>
module Aws::SSMContacts
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ssmcontacts/types'
require_relative 'aws-sdk-ssmcontacts/paginators'
require_relative 'aws-sdk-ssmcontacts/schema'
require_relative 'aws-sdk-ssmcontacts/auth_parameters'
require_relative 'aws-sdk-ssmcontacts/auth_resolver'
require_relative 'aws-sdk-ssmcontacts/client'
require_relative 'aws-sdk-ssmcontacts/errors'
require_relative 'aws-sdk-ssmcontacts/endpoint_parameters'
require_relative 'aws-sdk-ssmcontacts/endpoint_provider'
require_relative 'aws-sdk-ssmcontacts/waiters'
require_relative 'aws-sdk-ssmcontacts/customizations'
