# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PcaConnectorScep', Module.new) unless Aws.const_defined?('PcaConnectorScep')

# @title Private CA Connector for SCEP
# <p>Connector for SCEP creates a connector between Amazon Web Services Private CA and your SCEP-enabled clients and devices. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep.html">Connector for SCEP</a> in the <i>Amazon Web Services Private CA User Guide</i>.</p>
module Aws::PcaConnectorScep
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-pcaconnectorscep/types'
require_relative 'aws-sdk-pcaconnectorscep/paginators'
require_relative 'aws-sdk-pcaconnectorscep/schema'
require_relative 'aws-sdk-pcaconnectorscep/auth_parameters'
require_relative 'aws-sdk-pcaconnectorscep/auth_resolver'
require_relative 'aws-sdk-pcaconnectorscep/client'
require_relative 'aws-sdk-pcaconnectorscep/errors'
require_relative 'aws-sdk-pcaconnectorscep/endpoint_parameters'
require_relative 'aws-sdk-pcaconnectorscep/endpoint_provider'
require_relative 'aws-sdk-pcaconnectorscep/waiters'
require_relative 'aws-sdk-pcaconnectorscep/customizations'
