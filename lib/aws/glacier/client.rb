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
  class Glacier

    # All operations with Amazon Glacier require your AWS account ID.
    # You can specify the special value of '-' to specify your
    # AWS account ID.
    #
    #   glacier = AWS::Glacier.new
    #   resp = glacier.client.list_vaults(:account_id => '-')
    #
    class Client < Core::RESTJSONClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method abort_multipart_upload(options = {})
      # Calls the DELETE AbortMultipartUpload API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:upload_id` - *required* - (String)
      # @return [Core::Response]

      # @!method complete_multipart_upload(options = {})
      # Calls the POST CompleteMultipartUpload API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:upload_id` - *required* - (String)
      # * `:archive_size` - (Integer)
      # * `:checksum` - *required* - (String)
      # * `:content_sha256` - (String)
      # @return [Core::Response]

      # @!method create_vault(options = {})
      # Calls the PUT CreateVault API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # @return [Core::Response]

      # @!method delete_archive(options = {})
      # Calls the DELETE DeleteArchive API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:archive_id` - *required* - (String)
      # @return [Core::Response]

      # @!method delete_vault(options = {})
      # Calls the DELETE DeleteVault API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # @return [Core::Response]

      # @!method delete_vault_notifications(options = {})
      # Calls the DELETE DeleteVaultNotifications API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # @return [Core::Response]

      # @!method describe_job(options = {})
      # Calls the GET DescribeJob API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:job_id` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:job_id` - (String)
      #   * `:job_description` - (String)
      #   * `:action` - (String)
      #   * `:archive_id` - (String)
      #   * `:vault_arn` - (String)
      #   * `:creation_date` - (String)
      #   * `:completed` - (Boolean)
      #   * `:status_code` - (String)
      #   * `:status_message` - (String)
      #   * `:archive_size_in_bytes` - (Integer)
      #   * `:inventory_size_in_bytes` - (Integer)
      #   * `:sns_topic` - (String)
      #   * `:completion_date` - (String)
      #   * `:sha256_tree_hash` - (String)

      # @!method describe_vault(options = {})
      # Calls the GET DescribeVault API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:vault_arn` - (String)
      #   * `:vault_name` - (String)
      #   * `:creation_date` - (String)
      #   * `:last_inventory_date` - (String)
      #   * `:number_of_archives` - (Integer)
      #   * `:size_in_bytes` - (Integer)

      # @!method get_job_output(options = {})
      # Calls the GET GetJobOutput API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:job_id` - *required* - (String)
      # * `:range` - (String)
      # @return [Core::Response]

      # @!method get_vault_notifications(options = {})
      # Calls the GET GetVaultNotifications API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:sns_topic` - (String)
      #   * `:events` - (Array<String>)

      # @!method initiate_job(options = {})
      # Calls the POST InitiateJob API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:job_parameters` - *required* - (Hash)
      #   * `:format` - (String)
      #   * `:type` - (String)
      #   * `:archive_id` - (String)
      #   * `:description` - (String)
      #   * `:sns_topic` - (String)
      # @return [Core::Response]

      # @!method initiate_multipart_upload(options = {})
      # Calls the POST InitiateMultipartUpload API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:archive_description` - (String)
      # * `:part_size` - (Integer)
      # @return [Core::Response]

      # @!method list_jobs(options = {})
      # Calls the GET ListJobs API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:limit` - (Integer)
      # * `:marker` - (String)
      # * `:statuscode` - (String)
      # * `:completed` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:job_list` - (Array<Hash>)
      #     * `:job_id` - (String)
      #     * `:job_description` - (String)
      #     * `:action` - (String)
      #     * `:archive_id` - (String)
      #     * `:vault_arn` - (String)
      #     * `:creation_date` - (String)
      #     * `:completed` - (Boolean)
      #     * `:status_code` - (String)
      #     * `:status_message` - (String)
      #     * `:archive_size_in_bytes` - (Integer)
      #     * `:inventory_size_in_bytes` - (Integer)
      #     * `:sns_topic` - (String)
      #     * `:completion_date` - (String)
      #     * `:sha256_tree_hash` - (String)
      #   * `:marker` - (String)

      # @!method list_multipart_uploads(options = {})
      # Calls the GET ListMultipartUploads API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:upload_id_marker` - (String)
      # * `:limit` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:uploads_list` - (Array<Hash>)
      #     * `:multipart_upload_id` - (String)
      #     * `:vault_arn` - (String)
      #     * `:archive_description` - (String)
      #     * `:part_size_in_bytes` - (Integer)
      #     * `:creation_date` - (String)
      #   * `:marker` - (String)

      # @!method list_parts(options = {})
      # Calls the GET ListParts API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:upload_id` - *required* - (String)
      # * `:marker` - (String)
      # * `:limit` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:multipart_upload_id` - (String)
      #   * `:vault_arn` - (String)
      #   * `:archive_description` - (String)
      #   * `:part_size_in_bytes` - (Integer)
      #   * `:creation_date` - (String)
      #   * `:parts` - (Array<Hash>)
      #     * `:range_in_bytes` - (String)
      #     * `:sha256_tree_hash` - (String)
      #   * `:marker` - (String)

      # @!method list_vaults(options = {})
      # Calls the GET ListVaults API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:marker` - (String)
      # * `:limit` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:vault_list` - (Array<Hash>)
      #     * `:vault_arn` - (String)
      #     * `:vault_name` - (String)
      #     * `:creation_date` - (String)
      #     * `:last_inventory_date` - (String)
      #     * `:number_of_archives` - (Integer)
      #     * `:size_in_bytes` - (Integer)
      #   * `:marker` - (String)

      # @!method set_vault_notifications(options = {})
      # Calls the PUT SetVaultNotifications API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:vault_notification_config` - *required* - (Hash)
      #   * `:sns_topic` - (String)
      #   * `:events` - (Array<String>)
      # @return [Core::Response]

      # @!method upload_archive(options = {})
      # Calls the POST UploadArchive API operation.
      # @param [Hash] options
      # * `:vault_name` - *required* - (String)
      # * `:account_id` - *required* - (String)
      # * `:archive_description` - (String)
      # * `:checksum` - *required* - (String)
      # * `:body` - *required* - (IO)
      # * `:content_sha256` - (String)
      # @return [Core::Response]

      # @!method upload_multipart_part(options = {})
      # Calls the PUT UploadMultipartPart API operation.
      # @param [Hash] options
      # * `:account_id` - *required* - (String)
      # * `:vault_name` - *required* - (String)
      # * `:upload_id` - *required* - (String)
      # * `:checksum` - *required* - (String)
      # * `:range` - (String)
      # * `:body` - *required* - (IO)
      # * `:content_sha256` - (String)
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2012-06-01')

      private

      def build_request *args
        request = super(*args)
        request.headers['x-amz-glacier-version'] = API_VERSION
        request
      end

    end
  end
end
