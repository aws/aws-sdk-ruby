# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SES', Module.new) unless Aws.const_defined?('SES')

# @title Amazon Simple Email Service
# <fullname>Amazon Simple Email Service</fullname>
#          <p> This document contains reference information for the <a href="https://aws.amazon.com/ses/">Amazon Simple Email Service</a> (Amazon SES) API, version
#             2010-12-01. This document is best used in conjunction with the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer
#                 Guide</a>. </p>
#          <note>
#             <p> For a list of Amazon SES endpoints to use in service requests, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html">Regions and
#                     Amazon SES</a> in the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer
#                 Guide</a>.</p>
#          </note>
#          <p>This documentation contains reference information related to the following:</p>
#          <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/ses/latest/APIReference/API_Operations.html">Amazon SES API Actions</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/ses/latest/APIReference/API_Types.html">Amazon SES
#                         API Data Types</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/ses/latest/APIReference/CommonParameters.html">Common
#                         Parameters</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/ses/latest/APIReference/CommonErrors.html">Common Errors</a>
#                </p>
#             </li>
#          </ul>
module Aws::SES
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ses/types'
require_relative 'aws-sdk-ses/paginators'
require_relative 'aws-sdk-ses/schema'
require_relative 'aws-sdk-ses/auth_parameters'
require_relative 'aws-sdk-ses/auth_resolver'
require_relative 'aws-sdk-ses/client'
require_relative 'aws-sdk-ses/customizations'
require_relative 'aws-sdk-ses/errors'
require_relative 'aws-sdk-ses/endpoint_parameters'
require_relative 'aws-sdk-ses/endpoint_provider'
require_relative 'aws-sdk-ses/waiters'
