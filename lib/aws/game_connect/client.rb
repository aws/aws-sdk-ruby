# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  class GameConnect

    # Client class for Amazon GameConnect.
    class Client < Core::JSONClient
      # @private
      CACHEABLE_REQUESTS = Set[]
      
      # client methods #

      # @!method link_account(options = {})
      # Calls the LinkAccount API operation.
      # @param [Hash] options
      #   * +:account_token+ - *required* - (String) The account token of the user
      #   * +:kind+ - *required* - (String) The type of the linking can be either LOGIN or REGISTRATION
      #   * +:addresses+ - *required* - (Array<Hash>) An array of address pairs
      #     * +:address+ - (String) The Address value
      #     * +:address_description+ - (String) The address description
      #   * +:request_token+ - *required* - (String) The request token supplied by amazon
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2013-02-11')

    end
  end
end