# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module Snowball
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :snowball

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Cancels the specified job. Note that you can only cancel a job before
      # its `JobState` value changes to `PreparingAppliance`. Requesting the
      # `ListJobs` or `DescribeJob` action will return a job\'s `JobState` as
      # part of the response element data returned.
      # @option params [required, String] :job_id
      #   The 39 character job ID for the job that you want to cancel, for
      #   example `JID123e4567-e89b-12d3-a456-426655440000`.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.cancel_job({
      #     job_id: "JobId", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def cancel_job(params = {}, options = {})
        req = build_request(:cancel_job, params)
        req.send_request(options)
      end

      # Creates an address for a Snowball to be shipped to.
      #
      # Addresses are validated at the time of creation. The address you
      # provide must be located within the serviceable area of your region. If
      # the address is invalid or unsupported, then an exception is thrown.
      # @option params [required, Types::Address] :address
      #   The address that you want the Snowball shipped to.
      # @return [Types::CreateAddressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateAddressResult#address_id #AddressId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_address({
      #     address: { # required
      #       address_id: "AddressId",
      #       name: "String",
      #       company: "String",
      #       street_1: "String",
      #       street_2: "String",
      #       street_3: "String",
      #       city: "String",
      #       state_or_province: "String",
      #       prefecture_or_district: "String",
      #       landmark: "String",
      #       country: "String",
      #       postal_code: "String",
      #       phone_number: "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.address_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_address(params = {}, options = {})
        req = build_request(:create_address, params)
        req.send_request(options)
      end

      # Creates a job to import or export data between Amazon S3 and your
      # on-premises data center. Note that your AWS account must have the
      # right trust policies and permissions in place to create a job for
      # Snowball. For more information, see api-reference-policies.
      # @option params [required, String] :job_type
      #   Defines the type of job that you\'re creating.
      # @option params [required, Types::JobResource] :resources
      #   Defines the Amazon S3 buckets associated with this job.
      #
      #   With `IMPORT` jobs, you specify the bucket or buckets that your
      #   transferred data will be imported into.
      #
      #   With `EXPORT` jobs, you specify the bucket or buckets that your
      #   transferred data will be exported from. Optionally, you can also
      #   specify a `KeyRange` value. If you choose to export a range, you
      #   define the length of the range by providing either an inclusive
      #   `BeginMarker` value, an inclusive `EndMarker` value, or both. Ranges
      #   are UTF-8 binary sorted.
      # @option params [String] :description
      #   Defines an optional description of this specific job, for example
      #   `Important Photos 2016-08-11`.
      # @option params [required, String] :address_id
      #   The ID for the address that you want the Snowball shipped to.
      # @option params [String] :kms_key_arn
      #   The `KmsKeyARN` that you want to associate with this job. `KmsKeyARN`s
      #   are created using the [CreateKey][1] AWS Key Management Service (KMS)
      #   API action.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
      # @option params [required, String] :role_arn
      #   The `RoleARN` that you want to associate with this job. `RoleArn`s are
      #   created using the [CreateRole][1] AWS Identity and Access Management
      #   (IAM) API action.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
      # @option params [String] :snowball_capacity_preference
      #   If your job is being created in one of the US regions, you have the
      #   option of specifying what size Snowball you\'d like for this job. In
      #   all other regions, Snowballs come with 80 TB in storage capacity.
      # @option params [required, String] :shipping_option
      #   The shipping speed for this job. Note that this speed does not dictate
      #   how soon you\'ll get the Snowball, rather it represents how quickly
      #   the Snowball moves to its destination while in transit. Regional
      #   shipping speeds are as follows:
      #
      #   * In Australia, you have access to express shipping. Typically,
      #     Snowballs shipped express are delivered in about a day.
      #
      #   * In the European Union (EU), you have access to express shipping.
      #     Typically, Snowballs shipped express are delivered in about a day.
      #     In addition, most countries in the EU have access to standard
      #     shipping, which typically takes less than a week, one way.
      #
      #   * In India, Snowballs are delivered in one to seven days.
      #
      #   * In the US, you have access to one-day shipping and two-day shipping.
      # @option params [Types::Notification] :notification
      #   Defines the Amazon Simple Notification Service (Amazon SNS)
      #   notification settings for this job.
      # @return [Types::CreateJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateJobResult#job_id #JobId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_job({
      #     job_type: "IMPORT", # required, accepts IMPORT, EXPORT
      #     resources: { # required
      #       s3_resources: [
      #         {
      #           bucket_arn: "ResourceARN",
      #           key_range: {
      #             begin_marker: "String",
      #             end_marker: "String",
      #           },
      #         },
      #       ],
      #     },
      #     description: "String",
      #     address_id: "AddressId", # required
      #     kms_key_arn: "KmsKeyARN",
      #     role_arn: "RoleARN", # required
      #     snowball_capacity_preference: "T50", # accepts T50, T80, NoPreference
      #     shipping_option: "SECOND_DAY", # required, accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
      #     notification: {
      #       sns_topic_arn: "SnsTopicARN",
      #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
      #       notify_all: false,
      #     },
      #   })
      #
      # @example Response structure
      #   resp.job_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_job(params = {}, options = {})
        req = build_request(:create_job, params)
        req.send_request(options)
      end

      # Takes an `AddressId` and returns specific details about that address
      # in the form of an `Address` object.
      # @option params [required, String] :address_id
      #   The automatically generated ID for a specific address.
      # @return [Types::DescribeAddressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAddressResult#address #Address} => Types::Address
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_address({
      #     address_id: "AddressId", # required
      #   })
      #
      # @example Response structure
      #   resp.address.address_id #=> String
      #   resp.address.name #=> String
      #   resp.address.company #=> String
      #   resp.address.street_1 #=> String
      #   resp.address.street_2 #=> String
      #   resp.address.street_3 #=> String
      #   resp.address.city #=> String
      #   resp.address.state_or_province #=> String
      #   resp.address.prefecture_or_district #=> String
      #   resp.address.landmark #=> String
      #   resp.address.country #=> String
      #   resp.address.postal_code #=> String
      #   resp.address.phone_number #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_address(params = {}, options = {})
        req = build_request(:describe_address, params)
        req.send_request(options)
      end

      # Returns a specified number of `ADDRESS` objects. Calling this API in
      # one of the US regions will return addresses from the list of all
      # addresses associated with this account in all US regions.
      # @option params [Integer] :max_results
      #   The number of `ADDRESS` objects to return.
      # @option params [String] :next_token
      #   HTTP requests are stateless. To identify what object comes \"next\" in
      #   the list of `ADDRESS` objects, you have the option of specifying a
      #   value for `NextToken` as the starting point for your list of returned
      #   addresses.
      # @return [Types::DescribeAddressesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAddressesResult#addresses #Addresses} => Array&lt;Types::Address&gt;
      #   * {Types::DescribeAddressesResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_addresses({
      #     max_results: 1,
      #     next_token: "String",
      #   })
      #
      # @example Response structure
      #   resp.addresses #=> Array
      #   resp.addresses[0].address_id #=> String
      #   resp.addresses[0].name #=> String
      #   resp.addresses[0].company #=> String
      #   resp.addresses[0].street_1 #=> String
      #   resp.addresses[0].street_2 #=> String
      #   resp.addresses[0].street_3 #=> String
      #   resp.addresses[0].city #=> String
      #   resp.addresses[0].state_or_province #=> String
      #   resp.addresses[0].prefecture_or_district #=> String
      #   resp.addresses[0].landmark #=> String
      #   resp.addresses[0].country #=> String
      #   resp.addresses[0].postal_code #=> String
      #   resp.addresses[0].phone_number #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_addresses(params = {}, options = {})
        req = build_request(:describe_addresses, params)
        req.send_request(options)
      end

      # Returns information about a specific job including shipping
      # information, job status, and other important metadata.
      # @option params [required, String] :job_id
      #   The automatically generated ID for a job, for example
      #   `JID123e4567-e89b-12d3-a456-426655440000`.
      # @return [Types::DescribeJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeJobResult#job_metadata #JobMetadata} => Types::JobMetadata
      #   * {Types::DescribeJobResult#sub_job_metadata #SubJobMetadata} => Array&lt;Types::JobMetadata&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_job({
      #     job_id: "JobId", # required
      #   })
      #
      # @example Response structure
      #   resp.job_metadata.job_id #=> String
      #   resp.job_metadata.job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.job_metadata.job_type #=> String, one of "IMPORT", "EXPORT"
      #   resp.job_metadata.creation_date #=> Time
      #   resp.job_metadata.resources.s3_resources #=> Array
      #   resp.job_metadata.resources.s3_resources[0].bucket_arn #=> String
      #   resp.job_metadata.resources.s3_resources[0].key_range.begin_marker #=> String
      #   resp.job_metadata.resources.s3_resources[0].key_range.end_marker #=> String
      #   resp.job_metadata.description #=> String
      #   resp.job_metadata.kms_key_arn #=> String
      #   resp.job_metadata.role_arn #=> String
      #   resp.job_metadata.address_id #=> String
      #   resp.job_metadata.shipping_details.shipping_option #=> String, one of "SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"
      #   resp.job_metadata.shipping_details.inbound_shipment.status #=> String
      #   resp.job_metadata.shipping_details.inbound_shipment.tracking_number #=> String
      #   resp.job_metadata.shipping_details.outbound_shipment.status #=> String
      #   resp.job_metadata.shipping_details.outbound_shipment.tracking_number #=> String
      #   resp.job_metadata.snowball_capacity_preference #=> String, one of "T50", "T80", "NoPreference"
      #   resp.job_metadata.notification.sns_topic_arn #=> String
      #   resp.job_metadata.notification.job_states_to_notify #=> Array
      #   resp.job_metadata.notification.job_states_to_notify[0] #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.job_metadata.notification.notify_all #=> Boolean
      #   resp.job_metadata.data_transfer_progress.bytes_transferred #=> Integer
      #   resp.job_metadata.data_transfer_progress.objects_transferred #=> Integer
      #   resp.job_metadata.data_transfer_progress.total_bytes #=> Integer
      #   resp.job_metadata.data_transfer_progress.total_objects #=> Integer
      #   resp.job_metadata.job_log_info.job_completion_report_uri #=> String
      #   resp.job_metadata.job_log_info.job_success_log_uri #=> String
      #   resp.job_metadata.job_log_info.job_failure_log_uri #=> String
      #   resp.sub_job_metadata #=> Array
      #   resp.sub_job_metadata[0].job_id #=> String
      #   resp.sub_job_metadata[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.sub_job_metadata[0].job_type #=> String, one of "IMPORT", "EXPORT"
      #   resp.sub_job_metadata[0].creation_date #=> Time
      #   resp.sub_job_metadata[0].resources.s3_resources #=> Array
      #   resp.sub_job_metadata[0].resources.s3_resources[0].bucket_arn #=> String
      #   resp.sub_job_metadata[0].resources.s3_resources[0].key_range.begin_marker #=> String
      #   resp.sub_job_metadata[0].resources.s3_resources[0].key_range.end_marker #=> String
      #   resp.sub_job_metadata[0].description #=> String
      #   resp.sub_job_metadata[0].kms_key_arn #=> String
      #   resp.sub_job_metadata[0].role_arn #=> String
      #   resp.sub_job_metadata[0].address_id #=> String
      #   resp.sub_job_metadata[0].shipping_details.shipping_option #=> String, one of "SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"
      #   resp.sub_job_metadata[0].shipping_details.inbound_shipment.status #=> String
      #   resp.sub_job_metadata[0].shipping_details.inbound_shipment.tracking_number #=> String
      #   resp.sub_job_metadata[0].shipping_details.outbound_shipment.status #=> String
      #   resp.sub_job_metadata[0].shipping_details.outbound_shipment.tracking_number #=> String
      #   resp.sub_job_metadata[0].snowball_capacity_preference #=> String, one of "T50", "T80", "NoPreference"
      #   resp.sub_job_metadata[0].notification.sns_topic_arn #=> String
      #   resp.sub_job_metadata[0].notification.job_states_to_notify #=> Array
      #   resp.sub_job_metadata[0].notification.job_states_to_notify[0] #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.sub_job_metadata[0].notification.notify_all #=> Boolean
      #   resp.sub_job_metadata[0].data_transfer_progress.bytes_transferred #=> Integer
      #   resp.sub_job_metadata[0].data_transfer_progress.objects_transferred #=> Integer
      #   resp.sub_job_metadata[0].data_transfer_progress.total_bytes #=> Integer
      #   resp.sub_job_metadata[0].data_transfer_progress.total_objects #=> Integer
      #   resp.sub_job_metadata[0].job_log_info.job_completion_report_uri #=> String
      #   resp.sub_job_metadata[0].job_log_info.job_success_log_uri #=> String
      #   resp.sub_job_metadata[0].job_log_info.job_failure_log_uri #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_job(params = {}, options = {})
        req = build_request(:describe_job, params)
        req.send_request(options)
      end

      # Returns a link to an Amazon S3 presigned URL for the manifest file
      # associated with the specified `JobId` value. You can access the
      # manifest file for up to 60 minutes after this request has been made.
      # To access the manifest file after 60 minutes have passed, you\'ll have
      # to make another call to the `GetJobManifest` action.
      #
      # The manifest is an encrypted file that you can download after your job
      # enters the `WithCustomer` status. The manifest is decrypted by using
      # the `UnlockCode` code value, when you pass both values to the Snowball
      # through the Snowball client when the client is started for the first
      # time.
      #
      # As a best practice, we recommend that you don\'t save a copy of an
      # `UnlockCode` value in the same location as the manifest file for that
      # job. Saving these separately helps prevent unauthorized parties from
      # gaining access to the Snowball associated with that job.
      #
      # Note that the credentials of a given job, including its manifest file
      # and unlock code, expire 90 days after the job is created.
      # @option params [required, String] :job_id
      #   The ID for a job that you want to get the manifest file for, for
      #   example `JID123e4567-e89b-12d3-a456-426655440000`.
      # @return [Types::GetJobManifestResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetJobManifestResult#manifest_uri #ManifestURI} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_job_manifest({
      #     job_id: "JobId", # required
      #   })
      #
      # @example Response structure
      #   resp.manifest_uri #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_job_manifest(params = {}, options = {})
        req = build_request(:get_job_manifest, params)
        req.send_request(options)
      end

      # Returns the `UnlockCode` code value for the specified job. A
      # particular `UnlockCode` value can be accessed for up to 90 days after
      # the associated job has been created.
      #
      # The `UnlockCode` value is a 29-character code with 25 alphanumeric
      # characters and 4 hyphens. This code is used to decrypt the manifest
      # file when it is passed along with the manifest to the Snowball through
      # the Snowball client when the client is started for the first time.
      #
      # As a best practice, we recommend that you don\'t save a copy of the
      # `UnlockCode` in the same location as the manifest file for that job.
      # Saving these separately helps prevent unauthorized parties from
      # gaining access to the Snowball associated with that job.
      # @option params [required, String] :job_id
      #   The ID for the job that you want to get the `UnlockCode` value for,
      #   for example `JID123e4567-e89b-12d3-a456-426655440000`.
      # @return [Types::GetJobUnlockCodeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetJobUnlockCodeResult#unlock_code #UnlockCode} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_job_unlock_code({
      #     job_id: "JobId", # required
      #   })
      #
      # @example Response structure
      #   resp.unlock_code #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_job_unlock_code(params = {}, options = {})
        req = build_request(:get_job_unlock_code, params)
        req.send_request(options)
      end

      # Returns information about the Snowball service limit for your account,
      # and also the number of Snowballs your account has in use.
      #
      # Note that the default service limit for the number of Snowballs that
      # you can have at one time is 1. If you want to increase your service
      # limit, contact AWS Support.
      # @return [Types::GetSnowballUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetSnowballUsageResult#snowball_limit #SnowballLimit} => Integer
      #   * {Types::GetSnowballUsageResult#snowballs_in_use #SnowballsInUse} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_snowball_usage()
      #
      # @example Response structure
      #   resp.snowball_limit #=> Integer
      #   resp.snowballs_in_use #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_snowball_usage(params = {}, options = {})
        req = build_request(:get_snowball_usage, params)
        req.send_request(options)
      end

      # Returns an array of `JobListEntry` objects of the specified length.
      # Each `JobListEntry` object contains a job\'s state, a job\'s ID, and a
      # value that indicates whether the job is a job part, in the case of
      # export jobs. Calling this API action in one of the US regions will
      # return jobs from the list of all jobs associated with this account in
      # all US regions.
      # @option params [Integer] :max_results
      #   The number of `JobListEntry` objects to return.
      # @option params [String] :next_token
      #   HTTP requests are stateless. To identify what object comes \"next\" in
      #   the list of `JobListEntry` objects, you have the option of specifying
      #   `NextToken` as the starting point for your returned list.
      # @return [Types::ListJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListJobsResult#job_list_entries #JobListEntries} => Array&lt;Types::JobListEntry&gt;
      #   * {Types::ListJobsResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_jobs({
      #     max_results: 1,
      #     next_token: "String",
      #   })
      #
      # @example Response structure
      #   resp.job_list_entries #=> Array
      #   resp.job_list_entries[0].job_id #=> String
      #   resp.job_list_entries[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.job_list_entries[0].is_master #=> Boolean
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_jobs(params = {}, options = {})
        req = build_request(:list_jobs, params)
        req.send_request(options)
      end

      # While a job\'s `JobState` value is `New`, you can update some of the
      # information associated with a job. Once the job changes to a different
      # job state, usually within 60 minutes of the job being created, this
      # action is no longer available.
      # @option params [required, String] :job_id
      #   The job ID of the job that you want to update, for example
      #   `JID123e4567-e89b-12d3-a456-426655440000`.
      # @option params [String] :role_arn
      #   The new role Amazon Resource Name (ARN) that you want to associate
      #   with this job. To create a role ARN, use the [CreateRole][1] AWS
      #   Identity and Access Management (IAM) API action.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
      # @option params [Types::Notification] :notification
      #   The new or updated Notification object.
      # @option params [Types::JobResource] :resources
      #   The updated S3Resource object (for a single Amazon S3 bucket or key
      #   range), or the updated JobResource object (for multiple buckets or key
      #   ranges).
      # @option params [String] :address_id
      #   The ID of the updated Address object.
      # @option params [String] :shipping_option
      #   The updated shipping option value of this job\'s ShippingDetails
      #   object.
      # @option params [String] :description
      #   The updated description of this job\'s JobMetadata object.
      # @option params [String] :snowball_capacity_preference
      #   The updated `SnowballCapacityPreference` of this job\'s JobMetadata
      #   object. Note that the 50 TB Snowballs are only available in the US
      #   regions.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_job({
      #     job_id: "JobId", # required
      #     role_arn: "RoleARN",
      #     notification: {
      #       sns_topic_arn: "SnsTopicARN",
      #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
      #       notify_all: false,
      #     },
      #     resources: {
      #       s3_resources: [
      #         {
      #           bucket_arn: "ResourceARN",
      #           key_range: {
      #             begin_marker: "String",
      #             end_marker: "String",
      #           },
      #         },
      #       ],
      #     },
      #     address_id: "AddressId",
      #     shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
      #     description: "String",
      #     snowball_capacity_preference: "T50", # accepts T50, T80, NoPreference
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_job(params = {}, options = {})
        req = build_request(:update_job, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
