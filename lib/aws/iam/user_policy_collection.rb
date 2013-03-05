# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  class IAM

    # A collection that provides access to the policies associated
    # with an IAM user.  The interface mimics a hash containing
    # string keys and values that are instances of {Policy}.  For
    # example:
    #
    #  # add or replace a policy named "ReadOnly"
    #  policy = AWS::IAM::Policy.new do |p|
    #    # ...
    #  end
    #  user.policies["ReadOnly"] = policy
    #  user.policies.has_key?("ReadOnly")  # => true
    #
    # All of the methods for this class are defined in the
    # {PolicyCollection} module.
    class UserPolicyCollection

      include PolicyCollection

      # @param [User] user The user that owns this collection.
      def initialize user, options = {}
        @user = user
        super
      end

      # @return [User] Returns the user that this collection belongs to.
      attr_reader :user

    end
  end
end
