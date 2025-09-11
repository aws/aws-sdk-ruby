# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PcaConnectorAd', Module.new) unless Aws.const_defined?('PcaConnectorAd')

# @title PcaConnectorAd
# <p>Amazon Web Services Private CA Connector for Active Directory creates a connector between Amazon Web Services Private CA and Active Directory (AD) that enables you to
#          provision security certificates for AD signed by a private CA that you own. For more
#          information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/ad-connector.html">Amazon Web Services Private CA Connector for Active Directory</a>.</p>
module Aws::PcaConnectorAd
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-pcaconnectorad/types'
require_relative 'aws-sdk-pcaconnectorad/paginators'
require_relative 'aws-sdk-pcaconnectorad/schema'
require_relative 'aws-sdk-pcaconnectorad/auth_parameters'
require_relative 'aws-sdk-pcaconnectorad/auth_resolver'
require_relative 'aws-sdk-pcaconnectorad/client'
require_relative 'aws-sdk-pcaconnectorad/customizations'
require_relative 'aws-sdk-pcaconnectorad/errors'
require_relative 'aws-sdk-pcaconnectorad/endpoint_parameters'
require_relative 'aws-sdk-pcaconnectorad/endpoint_provider'
require_relative 'aws-sdk-pcaconnectorad/waiters'
