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
    class Client < Core::Client

      API_VERSION = '2011-06-15'

      extend Core::Client::QueryXML

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

      # Calls the GetFederationToken API operation.
      # @method get_federation_token(options = {})
      #
      # === Options:
      #
      # * +:name+ - *required* - (String) The name of the federated user
      #   associated with the session.
      # * +:policy+ - (String) A policy specifying the permissions associated
      #   with the session. The caller can delegate their own permissions by
      #   specifying a policy for the session, and both policies will be
      #   checked when a service call is made. In other words, permissions of
      #   the session credentials are the intersection of the policy specified
      #   in the API and the policies associated with the user who issued the
      #   session.
      # * +:duration_seconds+ - (Integer) The duration, in seconds, that the
      #   session should last. Acceptable durations for federation sessions
      #   range from 3600s (1 hour) to 129600s (36 hours), with 43200 as the
      #   default.
      #
      # === Response Structure:
      #
      # * +:credentials+ - (Hash)
      #   * +:access_key_id+ - (String)
      #   * +:secret_access_key+ - (String)
      #   * +:session_token+ - (String)
      #   * +:expiration+ - (Time)
      # * +:federated_user+ - (Hash)
      #   * +:federated_user_id+ - (String)
      #   * +:arn+ - (String)
      # * +:packed_policy_size+ - (Integer)
      #
      # @return [Core::Response]
      #
      define_client_method :get_federation_token, 'GetFederationToken'

      # Calls the GetSessionToken API operation.
      # @method get_session_token(options = {})
      #
      # === Options:
      #
      # * +:duration_seconds+ - (Integer) The duration, in seconds, that the
      #   session should last. Acceptable durations for IAM user sessions range
      #   from 3600s (1 hour) to 129600s (36 hours), with 43200 as the default.
      #   Sessions started for AWS Account owners are restricted to a maximum
      #   3600s.
      #
      # === Response Structure:
      #
      # * +:credentials+ - (Hash)
      #   * +:access_key_id+ - (String)
      #   * +:secret_access_key+ - (String)
      #   * +:session_token+ - (String)
      #   * +:expiration+ - (Time)
      #
      # @return [Core::Response]
      #
      define_client_method :get_session_token, 'GetSessionToken'

      ## end client methods ##

    end
  end
end
