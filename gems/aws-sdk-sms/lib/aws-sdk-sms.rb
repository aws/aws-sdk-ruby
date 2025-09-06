# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SMS', Module.new) unless Aws.const_defined?('SMS')

# @title AWS Server Migration Service
# <important>
#             <p>
#                <b>Product update</b>
#             </p>
#             <p>We recommend <a href="http://aws.amazon.com/application-migration-service">Amazon Web Services Application Migration Service</a> (Amazon Web Services
#                 MGN) as the primary migration service for lift-and-shift migrations. If Amazon Web Services MGN is
#                 unavailable in a specific Amazon Web Services Region, you can use the Server Migration Service APIs through March
#                 2023.</p>
#          </important>
#          <p>Server Migration Service (Server Migration Service) makes it easier and faster for you to migrate your
#             on-premises workloads to Amazon Web Services. To learn more about Server Migration Service, see the following 
#             resources:</p>
#          <ul>
#             <li>
#                <p>
#                   <a href="http://aws.amazon.com/server-migration-service/">Server Migration Service
#                     product page</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/server-migration-service/latest/userguide/">Server Migration Service User Guide</a>
#                </p>
#             </li>
#          </ul>
# @deprecated
#   AWS Server Migration Service is Deprecated.
module Aws::SMS
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sms/types'
require_relative 'aws-sdk-sms/paginators'
require_relative 'aws-sdk-sms/schema'
require_relative 'aws-sdk-sms/auth_parameters'
require_relative 'aws-sdk-sms/auth_resolver'
require_relative 'aws-sdk-sms/client'
require_relative 'aws-sdk-sms/customizations'
require_relative 'aws-sdk-sms/errors'
require_relative 'aws-sdk-sms/endpoint_parameters'
require_relative 'aws-sdk-sms/endpoint_provider'
require_relative 'aws-sdk-sms/waiters'
