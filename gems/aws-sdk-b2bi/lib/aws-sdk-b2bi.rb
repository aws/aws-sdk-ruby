# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('B2bi', Module.new) unless Aws.const_defined?('B2bi')

# @title AWS B2B Data Interchange
# <p>This is the <i>Amazon Web Services B2B Data Interchange API Reference</i>. It provides descriptions, API request parameters, and the XML response for each of the B2BI API actions.</p> <p>B2BI enables automated exchange of EDI (electronic data interchange) based business-critical transactions at cloud scale, with elasticity and pay-as-you-go pricing. Businesses use EDI documents to exchange transactional data with trading partners, such as suppliers and end customers, using standardized formats such as X12.</p> <note> <p>Rather than actually running a command, you can use the <code>--generate-cli-skeleton</code> parameter with any API call to generate and display a parameter template. You can then use the generated template to customize and use as input on a later command. For details, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-skeleton.html#cli-usage-skeleton-generate">Generate and use a parameter skeleton file</a>.</p> </note>
# @note This shape is unstable and may change in future releases.
module Aws::B2bi
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-b2bi/types'
require_relative 'aws-sdk-b2bi/paginators'
require_relative 'aws-sdk-b2bi/schema'
require_relative 'aws-sdk-b2bi/auth_parameters'
require_relative 'aws-sdk-b2bi/auth_resolver'
require_relative 'aws-sdk-b2bi/client'
require_relative 'aws-sdk-b2bi/customizations'
require_relative 'aws-sdk-b2bi/errors'
require_relative 'aws-sdk-b2bi/endpoint_parameters'
require_relative 'aws-sdk-b2bi/endpoint_provider'
require_relative 'aws-sdk-b2bi/waiters'
