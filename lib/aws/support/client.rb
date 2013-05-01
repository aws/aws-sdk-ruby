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
  class Support

    # Client class for AWS Support.
    class Client < Core::JSONClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method add_communication_to_case(options = {})
      # Calls the AddCommunicationToCase API operation.
      # @param [Hash] options
      #   * `:case_id` - (String)
      #   * `:communication_body` - *required* - (String)
      #   * `:cc_email_addresses` - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:result` - (Boolean)

      # @!method create_case(options = {})
      # Calls the CreateCase API operation.
      # @param [Hash] options
      #   * `:subject` - *required* - (String)
      #   * `:service_code` - *required* - (String)
      #   * `:severity_code` - (String)
      #   * `:category_code` - *required* - (String)
      #   * `:communication_body` - *required* - (String)
      #   * `:cc_email_addresses` - (Array<String>)
      #   * `:language` - (String)
      #   * `:issue_type` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:case_id` - (String)

      # @!method describe_cases(options = {})
      # Calls the DescribeCases API operation.
      # @param [Hash] options
      #   * `:case_id_list` - (Array<String>)
      #   * `:display_id` - (String)
      #   * `:after_time` - (String)
      #   * `:before_time` - (String)
      #   * `:include_resolved_cases` - (Boolean)
      #   * `:next_token` - (String)
      #   * `:max_results` - (Integer)
      #   * `:language` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:cases` - (Array<Hash>)
      #     * `:case_id` - (String)
      #     * `:display_id` - (String)
      #     * `:subject` - (String)
      #     * `:status` - (String)
      #     * `:service_code` - (String)
      #     * `:category_code` - (String)
      #     * `:severity_code` - (String)
      #     * `:submitted_by` - (String)
      #     * `:time_created` - (String)
      #     * `:recent_communications` - (Hash)
      #       * `:communications` - (Array<Hash>)
      #         * `:case_id` - (String)
      #         * `:body` - (String)
      #         * `:submitted_by` - (String)
      #         * `:time_created` - (String)
      #       * `:next_token` - (String)
      #     * `:cc_email_addresses` - (Array<String>)
      #     * `:language` - (String)
      #   * `:next_token` - (String)

      # @!method describe_communications(options = {})
      # Calls the DescribeCommunications API operation.
      # @param [Hash] options
      #   * `:case_id` - *required* - (String)
      #   * `:before_time` - (String)
      #   * `:after_time` - (String)
      #   * `:next_token` - (String)
      #   * `:max_results` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:communications` - (Array<Hash>)
      #     * `:case_id` - (String)
      #     * `:body` - (String)
      #     * `:submitted_by` - (String)
      #     * `:time_created` - (String)
      #   * `:next_token` - (String)

      # @!method describe_services(options = {})
      # Calls the DescribeServices API operation.
      # @param [Hash] options
      #   * `:service_code_list` - (Array<String>)
      #   * `:language` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:services` - (Array<Hash>)
      #     * `:code` - (String)
      #     * `:name` - (String)
      #     * `:categories` - (Array<Hash>)
      #       * `:code` - (String)
      #       * `:name` - (String)

      # @!method describe_severity_levels(options = {})
      # Calls the DescribeSeverityLevels API operation.
      # @param [Hash] options
      #   * `:language` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:severity_levels` - (Array<Hash>)
      #     * `:code` - (String)
      #     * `:name` - (String)

      # @!method describe_trusted_advisor_check_refresh_statuses(options = {})
      # Calls the DescribeTrustedAdvisorCheckRefreshStatuses API operation.
      # @param [Hash] options
      #   * `:check_ids` - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:statuses` - (Array<Hash>)
      #     * `:check_id` - (String)
      #     * `:status` - (String)
      #     * `:millis_until_next_refreshable` - (Integer)

      # @!method describe_trusted_advisor_check_result(options = {})
      # Calls the DescribeTrustedAdvisorCheckResult API operation.
      # @param [Hash] options
      #   * `:check_id` - *required* - (String)
      #   * `:language` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:result` - (Hash)
      #     * `:check_id` - (String)
      #     * `:timestamp` - (String)
      #     * `:status` - (String)
      #     * `:resources_summary` - (Hash)
      #       * `:resources_processed` - (Integer)
      #       * `:resources_flagged` - (Integer)
      #       * `:resources_ignored` - (Integer)
      #       * `:resources_suppressed` - (Integer)
      #     * `:category_specific_summary` - (Hash)
      #       * `:cost_optimizing` - (Hash)
      #         * `:estimated_monthly_savings` - (Numeric)
      #         * `:estimated_percent_monthly_savings` - (Numeric)
      #     * `:flagged_resources` - (Array<Hash>)
      #       * `:status` - (String)
      #       * `:region` - (String)
      #       * `:resource_id` - (String)
      #       * `:is_suppressed` - (Boolean)
      #       * `:metadata` - (Array<String>)

      # @!method describe_trusted_advisor_check_summaries(options = {})
      # Calls the DescribeTrustedAdvisorCheckSummaries API operation.
      # @param [Hash] options
      #   * `:check_ids` - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:summaries` - (Array<Hash>)
      #     * `:check_id` - (String)
      #     * `:timestamp` - (String)
      #     * `:status` - (String)
      #     * `:has_flagged_resources` - (Boolean)
      #     * `:resources_summary` - (Hash)
      #       * `:resources_processed` - (Integer)
      #       * `:resources_flagged` - (Integer)
      #       * `:resources_ignored` - (Integer)
      #       * `:resources_suppressed` - (Integer)
      #     * `:category_specific_summary` - (Hash)
      #       * `:cost_optimizing` - (Hash)
      #         * `:estimated_monthly_savings` - (Numeric)
      #         * `:estimated_percent_monthly_savings` - (Numeric)

      # @!method describe_trusted_advisor_checks(options = {})
      # Calls the DescribeTrustedAdvisorChecks API operation.
      # @param [Hash] options
      #   * `:language` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:checks` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:name` - (String)
      #     * `:description` - (String)
      #     * `:category` - (String)
      #     * `:metadata` - (Array<String>)

      # @!method refresh_trusted_advisor_check(options = {})
      # Calls the RefreshTrustedAdvisorCheck API operation.
      # @param [Hash] options
      #   * `:check_id` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:status` - (Hash)
      #     * `:check_id` - (String)
      #     * `:status` - (String)
      #     * `:millis_until_next_refreshable` - (Integer)

      # @!method resolve_case(options = {})
      # Calls the ResolveCase API operation.
      # @param [Hash] options
      #   * `:case_id` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:initial_case_status` - (String)
      #   * `:final_case_status` - (String)

      # end client methods #

      define_client_methods('2013-04-15')

    end
  end
end
