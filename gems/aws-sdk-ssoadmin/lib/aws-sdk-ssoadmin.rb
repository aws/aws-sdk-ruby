# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SSOAdmin', Module.new) unless Aws.const_defined?('SSOAdmin')

# @title AWS Single Sign-On Admin
# <p>IAM Identity Center is the Amazon Web Services solution for connecting your workforce users to Amazon Web Services managed applications and other Amazon Web Services resources. You can connect your existing identity provider and synchronize users and groups from your directory, or create and manage your users directly in IAM Identity Center. You can then use IAM Identity Center for either or both of the following:</p> <ul> <li> <p>User access to applications</p> </li> <li> <p>User access to Amazon Web Services accounts</p> </li> </ul> <p>This guide provides information about single sign-on operations that you can use for access to applications and Amazon Web Services accounts. For information about IAM Identity Center features, see the <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html">IAM Identity Center User Guide</a>.</p> <note> <p>IAM Identity Center uses the <code>sso</code> and <code>identitystore</code> API namespaces.</p> </note> <p>Many API operations for IAM Identity Center rely on identifiers for users and groups, known as principals. For more information about how to work with principals and principal IDs in IAM Identity Center, see the <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html">Identity Store API Reference</a>.</p> <note> <p>Amazon Web Services provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, iOS, Android, and more). The SDKs provide a convenient way to create programmatic access to IAM Identity Center and other Amazon Web Services services. For more information about the Amazon Web Services SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p> </note>
module Aws::SSOAdmin
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ssoadmin/types'
require_relative 'aws-sdk-ssoadmin/paginators'
require_relative 'aws-sdk-ssoadmin/schema'
require_relative 'aws-sdk-ssoadmin/auth_parameters'
require_relative 'aws-sdk-ssoadmin/auth_resolver'
require_relative 'aws-sdk-ssoadmin/client'
require_relative 'aws-sdk-ssoadmin/customizations'
require_relative 'aws-sdk-ssoadmin/errors'
require_relative 'aws-sdk-ssoadmin/endpoint_parameters'
require_relative 'aws-sdk-ssoadmin/endpoint_provider'
require_relative 'aws-sdk-ssoadmin/waiters'
