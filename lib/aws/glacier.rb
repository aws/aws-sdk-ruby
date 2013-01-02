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

require 'aws/core'
require 'aws/glacier/config'

module AWS

  # This class is the starting point for working with Amazon Glacier.
  #
  # To use Amazon Glacier you must first
  # {sign up here}[http://aws.amazon.com/glacier/].
  #
  # For more information about AWS Data Pipeline:
  #
  # * {AWS Data Pipeline}[http://aws.amazon.com/glacier/]
  # * {AWS Data Pipeline Documentation}[http://aws.amazon.com/documentation/glacier/]
  #
  # = Credentials
  #
  # You can setup default credentials for all AWS services via
  # AWS.config:
  #
  #   AWS.config(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # Or you can set them directly on the AWS::Glacier interface:
  #
  #   glacier = AWS::Glacier.new(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # See {Client} for documentation on all of the supported API operations.
  #
  class Glacier

    AWS.register_autoloads(self, 'aws/glacier') do
      autoload :Archive, 'archive'
      autoload :ArchiveCollection, 'archive_collection'
      autoload :Client, 'client'
      autoload :Errors, 'errors'
      autoload :Request, 'request'
      autoload :Resource, 'resource'
      autoload :Vault, 'vault'
      autoload :VaultCollection, 'vault_collection'
      autoload :VaultNotificationConfiguration, 'vault_notification_configuration'
    end

    include Core::ServiceInterface

    # @option options[String] :account_id ('-')
    def intialize options = {}
      @account_id = options[:account_id] || '-'
      super
    end

    # @return [String]
    attr_accessor :account_id

    # @return [VaultCollection] Returns a collection for working with
    #   vaults that belong to this account.
    def vaults
      VaultCollection.new(:config => config, :account_id => account_id)
    end

  end
end
