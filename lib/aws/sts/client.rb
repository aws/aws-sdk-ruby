# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class STS

    # Client class for AWS Security Token Service (STS).
    class Client < Core::QueryClient

      define_client_methods('2011-06-15')

      REGION_US_E1 = 'sts.amazonaws.com'

      # @private
      CACHEABLE_REQUESTS = Set[]

      def initialize *args
        super
        unless config.use_ssl?
          msg = 'AWS Security Token Service (STS) requires ssl but the ' + 
            ':use_ssl option is set to false.  Try passing :use_ssl => true'
          raise ArgumentError, msg
        end
      end

      ## client methods ##

      # @!method get_federation_token(options = {})
      # Calls the GetFederationToken API operation.
      # @param [Hash] options
      #   * +:name+ - *required* - (String) The name of the federated user
      #     associated with the credentials. For information about limitations
      #     on user names, go to Limitations on IAM Entities in Using AWS
      #     Identity and Access Management.
      #   * +:policy+ - (String) A policy specifying the permissions to
      #     associate with the credentials. The caller can delegate their own
      #     permissions by specifying a policy, and both policies will be
      #     checked when a service call is made. For more information about how
      #     permissions work in the context of temporary credentials, see
      #     Controlling Permissions in Temporary Credentials in Using AWS
      #     Identity and Access Management.
      #   * +:duration_seconds+ - (Integer) The duration, in seconds, that the
      #     session should last. Acceptable durations for federation sessions
      #     range from 3600s (one hour) to 129600s (36 hours), with 43200s (12
      #     hours) as the default.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:credentials+ - (Hash)
      #     * +:access_key_id+ - (String)
      #     * +:secret_access_key+ - (String)
      #     * +:session_token+ - (String)
      #     * +:expiration+ - (Time)
      #   * +:federated_user+ - (Hash)
      #     * +:federated_user_id+ - (String)
      #     * +:arn+ - (String)
      #   * +:packed_policy_size+ - (Integer)

      # @!method get_session_token(options = {})
      # Calls the GetSessionToken API operation.
      # @param [Hash] options
      #   * +:duration_seconds+ - (Integer) The duration, in seconds, that the
      #     credentials should remain valid. Acceptable durations for IAM user
      #     sessions range from 3600s (one hour) to 129600s (36 hours), with
      #     43200s (12 hours) as the default. Sessions for AWS account owners
      #     are restricted to a maximum of 3600s (one hour).
      #   * +:serial_number+ - (String) The identification number of the
      #     Multi-Factor Authentication (MFA) device for the user. If the user
      #     has an access policy requiring MFA to access resources, provide the
      #     value here. The number is in the Security Credentials tab of the
      #     user's details pane in the IAM console. If the user has an active
      #     MFA device, the details pane displays a Multi-Factor Authentication
      #     Device value such as arn:aws:iam::123456789012:mfa/user for a
      #     virtual device or the device serial number for a hardware device.
      #   * +:token_code+ - (String) The value provided by the MFA device. If
      #     the user has an access policy requiring an MFA code, provide the
      #     value here to get permission to resources as specified in the
      #     access policy. If MFA is required, and a code not provided while
      #     requesting a set of temporary security credentials, the user will
      #     receive an "access denied" response when requesting resources that
      #     require MFA. For more information, see Using Multi-Factor
      #     Authentication (MFA) Devices with AWS in Using IAM.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:credentials+ - (Hash)
      #     * +:access_key_id+ - (String)
      #     * +:secret_access_key+ - (String)
      #     * +:session_token+ - (String)
      #     * +:expiration+ - (Time)

      ## end client methods ##

    end
  end
end
