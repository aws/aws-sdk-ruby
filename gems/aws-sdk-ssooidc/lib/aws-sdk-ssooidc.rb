# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SSOOIDC', Module.new) unless Aws.const_defined?('SSOOIDC')

# @title AWS SSO OIDC
# <p>IAM Identity Center OpenID Connect (OIDC) is a web service that enables a client (such as CLI or a
#       native application) to register with IAM Identity Center. The service also enables the client to fetch the
#       user’s access token upon successful authentication and authorization with IAM Identity Center.</p>
#          <p>
#             <b>API namespaces</b>
#          </p>
#          <p>IAM Identity Center uses the <code>sso</code> and <code>identitystore</code> API namespaces. IAM Identity Center
#       OpenID Connect uses the <code>sso-oidc</code> namespace.</p>
#          <p>
#             <b>Considerations for using this guide</b>
#          </p>
#          <p>Before you begin using this guide, we recommend that you first review the following
#       important information about how the IAM Identity Center OIDC service works.</p>
#          <ul>
#             <li>
#                <p>The IAM Identity Center OIDC service currently implements only the portions of the OAuth 2.0 Device
#           Authorization Grant standard (<a href="https://tools.ietf.org/html/rfc8628">https://tools.ietf.org/html/rfc8628</a>) that are necessary to enable single
#           sign-on authentication with the CLI. </p>
#             </li>
#             <li>
#                <p>With older versions of the CLI, the service only emits OIDC access tokens, so to
#           obtain a new token, users must explicitly re-authenticate. To access the OIDC flow that
#           supports token refresh and doesn’t require re-authentication, update to the latest CLI
#           version (1.27.10 for CLI V1 and 2.9.0 for CLI V2) with support for OIDC token refresh
#           and configurable IAM Identity Center session durations. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/configure-user-session.html">Configure Amazon Web Services access portal session duration </a>. </p>
#             </li>
#             <li>
#                <p>The access tokens provided by this service grant access to all Amazon Web Services account
#           entitlements assigned to an IAM Identity Center user, not just a particular application.</p>
#             </li>
#             <li>
#                <p>The documentation in this guide does not describe the mechanism to convert the access
#           token into Amazon Web Services Auth (“sigv4”) credentials for use with IAM-protected Amazon Web Services service
#           endpoints. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/PortalAPIReference/API_GetRoleCredentials.html">GetRoleCredentials</a> in the <i>IAM Identity Center Portal API Reference
#           Guide</i>.</p>
#             </li>
#          </ul>
#          <p>For general information about IAM Identity Center, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html">What is
#         IAM Identity Center?</a> in the <i>IAM Identity Center User Guide</i>.</p>
module Aws::SSOOIDC
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ssooidc/types'
require_relative 'aws-sdk-ssooidc/paginators'
require_relative 'aws-sdk-ssooidc/schema'
require_relative 'aws-sdk-ssooidc/auth_parameters'
require_relative 'aws-sdk-ssooidc/auth_resolver'
require_relative 'aws-sdk-ssooidc/client'
require_relative 'aws-sdk-ssooidc/customizations'
require_relative 'aws-sdk-ssooidc/errors'
require_relative 'aws-sdk-ssooidc/endpoint_parameters'
require_relative 'aws-sdk-ssooidc/endpoint_provider'
require_relative 'aws-sdk-ssooidc/waiters'
