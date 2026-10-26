# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Identitystore', Module.new) unless Aws.const_defined?('Identitystore')

# @title AWS SSO Identity Store
# <note> <p> IAM Identity Center uses the <code>sso</code>, <code>sso-directory</code>, and <code>identitystore</code> API namespaces. The <code>sso-directory</code> and <code>identitystore</code> namespaces authorize access to data in the Identity Store. Make sure your policies with IAM actions from these two namespaces are consistent to avoid conflicting authorization to the same data.</p> </note> <p>The Identity Store service used by IAM Identity Center provides a single place to retrieve all of your identities (users and groups). You can use the identity store API operations in this guide to manage your identity data programmatically. The scope of these APIs allows you to create, read, update, delete, and list users, groups, and memberships.</p> <p>This guide also describes identity store operations that you can call and includes detailed information about data types and errors.</p> <important> <p>If you use an external identity provider or Active Directory as your identity source, we recommend that you use the <code>Create</code>, <code>Update</code>, and <code>Delete</code> APIs with caution. Because IAM Identity Center doesn't support outbound synchronization, your identity source won't automatically update with the changes that you make to users or groups using these APIs.</p> </important> <p>Amazon Web Services provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, iOS, Android, and more). The SDKs provide a convenient way to programmatically access the identity store and other Amazon Web Services services. For more information about the Amazon Web Services SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Amazon Web Services Builder Center Toolbox</a>.</p>
module Aws::Identitystore
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-identitystore/types'
require_relative 'aws-sdk-identitystore/paginators'
require_relative 'aws-sdk-identitystore/schema'
require_relative 'aws-sdk-identitystore/auth_parameters'
require_relative 'aws-sdk-identitystore/auth_resolver'
require_relative 'aws-sdk-identitystore/client'
require_relative 'aws-sdk-identitystore/errors'
require_relative 'aws-sdk-identitystore/endpoint_parameters'
require_relative 'aws-sdk-identitystore/endpoint_provider'
require_relative 'aws-sdk-identitystore/waiters'
require_relative 'aws-sdk-identitystore/customizations'
