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
  class ImportExport

    # Client class for AWS Import/Export.
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method cancel_job(options = {})
      # Calls the CancelJob API operation.
      # @param [Hash] options
      #   * `:job_id` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:success` - (Boolean)

      # @!method create_job(options = {})
      # Calls the CreateJob API operation.
      # @param [Hash] options
      #   * `:job_type` - *required* - (String) Valid values include:
      #     * `Import`
      #     * `Export`
      #   * `:manifest` - *required* - (String)
      #   * `:manifest_addendum` - (String)
      #   * `:validate_only` - *required* - (Boolean)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:job_id` - (String)
      #   * `:job_type` - (String)
      #   * `:aws_shipping_address` - (String)
      #   * `:signature` - (String)
      #   * `:signature_file_contents` - (String)
      #   * `:warning_message` - (String)

      # @!method get_status(options = {})
      # Calls the GetStatus API operation.
      # @param [Hash] options
      #   * `:job_id` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:job_id` - (String)
      #   * `:job_type` - (String)
      #   * `:aws_shipping_address` - (String)
      #   * `:location_code` - (String)
      #   * `:location_message` - (String)
      #   * `:progress_code` - (String)
      #   * `:progress_message` - (String)
      #   * `:carrier` - (String)
      #   * `:tracking_number` - (String)
      #   * `:log_bucket` - (String)
      #   * `:log_key` - (String)
      #   * `:error_count` - (Integer)
      #   * `:signature` - (String)
      #   * `:signature_file_contents` - (String)
      #   * `:current_manifest` - (String)
      #   * `:creation_date` - (Time)

      # @!method list_jobs(options = {})
      # Calls the ListJobs API operation.
      # @param [Hash] options
      #   * `:max_jobs` - (Integer)
      #   * `:marker` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:jobs` - (Array<Hash>)
      #     * `:job_id` - (String)
      #     * `:creation_date` - (Time)
      #     * `:is_canceled` - (Boolean)
      #     * `:job_type` - (String)
      #   * `:is_truncated` - (Boolean)

      # @!method update_job(options = {})
      # Calls the UpdateJob API operation.
      # @param [Hash] options
      #   * `:job_id` - *required* - (String)
      #   * `:manifest` - *required* - (String)
      #   * `:job_type` - *required* - (String) Valid values include:
      #     * `Import`
      #     * `Export`
      #   * `:validate_only` - *required* - (Boolean)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:success` - (Boolean)
      #   * `:warning_message` - (String)

      # end client methods #

      define_client_methods('2010-06-01')

    end
  end
end
