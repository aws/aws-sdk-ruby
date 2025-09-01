# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Snowball', Module.new) unless Aws.const_defined?('Snowball')

# @title Amazon Import/Export Snowball
# <p>The Amazon Web Services Snow Family provides a petabyte-scale data transport solution that uses
#       secure devices to transfer large amounts of data between your on-premises data centers and
#       Amazon Simple Storage Service (Amazon S3). The Snow Family commands described here provide access to the same
#       functionality that is available in the Amazon Web Services Snow Family Management Console, which enables you to create
#       and manage jobs for a Snow Family device. To transfer data locally with a Snow Family device,
#       you'll need to use the Snowball Edge client or the Amazon S3 API Interface for Snowball or OpsHub for Snow Family. For more information, see the <a href="https://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html">User Guide</a>.</p>
module Aws::Snowball
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-snowball/types'
require_relative 'aws-sdk-snowball/paginators'
require_relative 'aws-sdk-snowball/schema'
require_relative 'aws-sdk-snowball/auth_parameters'
require_relative 'aws-sdk-snowball/auth_resolver'
require_relative 'aws-sdk-snowball/client'
require_relative 'aws-sdk-snowball/customizations'
require_relative 'aws-sdk-snowball/errors'
require_relative 'aws-sdk-snowball/endpoint_parameters'
require_relative 'aws-sdk-snowball/endpoint_provider'
require_relative 'aws-sdk-snowball/waiters'
