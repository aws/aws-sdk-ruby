# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Invoicing', Module.new) unless Aws.const_defined?('Invoicing')

# @title AWS Invoicing
# <p> <b>Amazon Web Services Invoice Configuration</b> </p> <p>You can use Amazon Web Services Invoice Configuration APIs to programmatically create, update, delete, get, and list invoice units. You can also programmatically fetch the information of the invoice receiver. For example, business legal name, address, and invoicing contacts. </p> <p>You can use Amazon Web Services Invoice Configuration to receive separate Amazon Web Services invoices based your organizational needs. By using Amazon Web Services Invoice Configuration, you can configure invoice units that are groups of Amazon Web Services accounts that represent your business entities, and receive separate invoices for each business entity. You can also assign a unique member or payer account as the invoice receiver for each invoice unit. As you create new accounts within your Organizations using Amazon Web Services Invoice Configuration APIs, you can automate the creation of new invoice units and subsequently automate the addition of new accounts to your invoice units.</p> <p>Service endpoint</p> <p>You can use the following endpoints for Amazon Web Services Invoice Configuration:</p> <ul> <li> <p> <code>https://invoicing.us-east-1.api.aws</code> </p> </li> </ul>
module Aws::Invoicing
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-invoicing/types'
require_relative 'aws-sdk-invoicing/paginators'
require_relative 'aws-sdk-invoicing/schema'
require_relative 'aws-sdk-invoicing/auth_parameters'
require_relative 'aws-sdk-invoicing/auth_resolver'
require_relative 'aws-sdk-invoicing/client'
require_relative 'aws-sdk-invoicing/errors'
require_relative 'aws-sdk-invoicing/endpoint_parameters'
require_relative 'aws-sdk-invoicing/endpoint_provider'
require_relative 'aws-sdk-invoicing/waiters'
require_relative 'aws-sdk-invoicing/customizations'
