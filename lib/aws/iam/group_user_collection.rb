# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  class IAM

    # A collection that provides access to IAM users belonging to a
    # particular group.
    #
    #   group = AWS::IAM.new.groups.first
    #   users = group.users
    #   users.each { |u| puts u.name }
    class GroupUserCollection

      include Core::Collections::Basic

      # @attr_reader [Group] The group.
      attr_reader :group

      # @private
      def initialize(group, opts = {})
        @group = group
        super
      end

      # Adds a user to the group.
      #
      # @param [User] user The user to add.
      # @return [nil]
      def add(user)
        client.add_user_to_group(:group_name => group.name,
                                 :user_name => user.name)
        nil
      end

      # Remove a user from the group.
      #
      # @param [User] user The user to remove.
      # @return [nil]
      def remove(user)
        client.remove_user_from_group(:group_name => group.name,
                                      :user_name => user.name)
        nil
      end

      # Removes all users from this group.
      # @return [nil]
      def clear
        each do |user|
          remove(user)
        end
      end

      # Yields once for each user in the group.
      #
      # @param [Hash] options
      # @yieldparam [User] user
      # @return [nil]
      def each(options = {}, &block)
        super(options.merge(:group_name => group.name), &block)
      end

      # @private
      protected
      def request_method
        :get_group
      end

      # @private
      protected
      def each_item response
        response.users.each do |u|
          user = User.new_from(:get_group, u, u.user_name, :config => config)
          yield(user)
        end
      end

    end

  end
end
