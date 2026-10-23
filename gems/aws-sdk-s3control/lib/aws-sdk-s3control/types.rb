# frozen_string_literal: true

# This is generated code!

module Aws::S3Control
  # This module contains the types returned by client operations.
  module Types

    # <p>The container for abort incomplete multipart upload</p>
    # @!attribute days_after_initiation
    #   <p>Specifies the number of days after which Amazon S3 aborts an incomplete multipart upload to
    #            the Outposts bucket.</p>
    #   @return [Integer]
    class AbortIncompleteMultipartUpload < Struct.new(
      nil,
      :days_after_initiation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:days_after_initiation] = 0 unless options.key?(:days_after_initiation)
        super
      end
    end

    # <p>A container for information about access control for replicas.</p>
    #          <note>
    #             <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #          </note>
    # @!attribute owner
    #   <p>Specifies the replica ownership.</p>
    #   @return [String]
    class AccessControlTranslation < Struct.new(
      nil,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration options of the S3 Access Grants location. It contains the
    #             <code>S3SubPrefix</code> field. The grant scope, the data to which you are granting
    #          access, is the result of appending the <code>Subprefix</code> field to the scope of the
    #          registered location.</p>
    # @!attribute s3_sub_prefix
    #   <p>The <code>S3SubPrefix</code> is appended to the location scope creating the grant scope.
    #            Use this field to narrow the scope of the grant to a subset of the location scope. This
    #            field is required if the location scope is the default location <code>s3://</code> because
    #            you cannot create a grant for all of your S3 data in the Region and must narrow the scope.
    #            For example, if the location scope is the default location <code>s3://</code>, the
    #               <code>S3SubPrefx</code> can be a <bucket-name>/*, so the full grant scope path
    #            would be <code>s3://<bucket-name>/*</code>. Or the <code>S3SubPrefx</code> can be
    #               <code><bucket-name>/<prefix-name>*</code>, so the full grant scope path
    #            would be or <code>s3://<bucket-name>/<prefix-name>*</code>.</p>
    #            <p>If the <code>S3SubPrefix</code> includes a prefix, append the wildcard character
    #               <code>*</code> after the prefix to indicate that you want to include all object key
    #            names in the bucket that start with that prefix. </p>
    #   @return [String]
    class AccessGrantsLocationConfiguration < Struct.new(
      nil,
      :s3_sub_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An access point used to access a bucket.</p>
    # @!attribute name
    #   <p>The name of this access point.</p>
    #   @return [String]
    # @!attribute network_origin
    #   <p>Indicates whether this access point allows access from the public internet. If
    #               <code>VpcConfiguration</code> is specified for this access point, then
    #               <code>NetworkOrigin</code> is <code>VPC</code>, and the access point doesn't allow access from
    #            the public internet. Otherwise, <code>NetworkOrigin</code> is <code>Internet</code>, and
    #            the access point allows access from the public internet, subject to the access point and bucket access
    #            policies.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>The virtual private cloud (VPC) configuration for this access point, if one exists.</p>
    #            <note>
    #               <p>This element is empty if this access point is an Amazon S3 on Outposts access point that is used by other
    #                  Amazon Web Services services.</p>
    #            </note>
    #   @return [Types::VpcConfiguration]
    # @!attribute bucket
    #   <p>The name of the bucket associated with this access point.</p>
    #   @return [String]
    # @!attribute access_point_arn
    #   <p>The ARN for the access point.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The name or alias of the access point.</p>
    #   @return [String]
    # @!attribute bucket_account_id
    #   <p>The Amazon Web Services account ID associated with the S3 bucket associated with this access point.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>A unique identifier for the data source of the access point.</p>
    #   @return [String]
    # @!attribute data_source_type
    #   <p>The type of the data source that the access point is attached to.</p>
    #   @return [String]
    class AccessPoint < Struct.new(
      nil,
      :name,
      :network_origin,
      :vpc_configuration,
      :bucket,
      :access_point_arn,
      :alias,
      :bucket_account_id,
      :data_source_id,
      :data_source_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container element for the account-level Amazon S3 Storage Lens configuration.</p>
    #          <p>For more information about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html">Assessing your storage activity and usage with S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>. For a complete list of S3 Storage Lens metrics, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html">S3 Storage Lens metrics glossary</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute activity_metrics
    #   <p>A container element for S3 Storage Lens activity metrics.</p>
    #   @return [Types::ActivityMetrics]
    # @!attribute bucket_level
    #   <p>A container element for the S3 Storage Lens bucket-level configuration.</p>
    #   @return [Types::BucketLevel]
    # @!attribute advanced_cost_optimization_metrics
    #   <p>A container element for S3 Storage Lens advanced cost-optimization metrics.</p>
    #   @return [Types::AdvancedCostOptimizationMetrics]
    # @!attribute advanced_data_protection_metrics
    #   <p>A container element for S3 Storage Lens advanced data-protection metrics.</p>
    #   @return [Types::AdvancedDataProtectionMetrics]
    # @!attribute detailed_status_codes_metrics
    #   <p>A container element for detailed status code metrics. </p>
    #   @return [Types::DetailedStatusCodesMetrics]
    # @!attribute storage_lens_group_level
    #   <p>
    #   A container element for S3 Storage Lens groups metrics.
    #   </p>
    #   @return [Types::StorageLensGroupLevel]
    class AccountLevel < Struct.new(
      nil,
      :activity_metrics,
      :bucket_level,
      :advanced_cost_optimization_metrics,
      :advanced_data_protection_metrics,
      :detailed_status_codes_metrics,
      :storage_lens_group_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container element for Amazon S3 Storage Lens activity metrics. Activity metrics show details
    #          about how your storage is requested, such as requests (for example, All requests, Get
    #          requests, Put requests), bytes uploaded or downloaded, and errors.</p>
    #          <p>For more information about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html">Assessing your storage activity and usage with S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>. For a complete list of S3 Storage Lens metrics, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html">S3 Storage Lens metrics glossary</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute is_enabled
    #   <p>A container that indicates whether activity metrics are enabled.</p>
    #   @return [Boolean]
    class ActivityMetrics < Struct.new(
      nil,
      :is_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_enabled] = false unless options.key?(:is_enabled)
        super
      end
    end

    # <p>The container element for Amazon S3 Storage Lens advanced cost-optimization metrics. Advanced
    #          cost-optimization metrics provide insights that you can use to manage and optimize your
    #          storage costs, for example, lifecycle rule counts for transitions, expirations, and
    #          incomplete multipart uploads.</p>
    #          <p>For more information about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html">Assessing your storage activity and usage with S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>. For a complete list of S3 Storage Lens metrics, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html">S3 Storage Lens metrics glossary</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute is_enabled
    #   <p>A container that indicates whether advanced cost-optimization metrics are
    #            enabled.</p>
    #   @return [Boolean]
    class AdvancedCostOptimizationMetrics < Struct.new(
      nil,
      :is_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_enabled] = false unless options.key?(:is_enabled)
        super
      end
    end

    # <p>The container element for Amazon S3 Storage Lens advanced data-protection metrics. Advanced
    #          data-protection metrics provide insights that you can use to perform audits and protect
    #          your data, for example replication rule counts within and across Regions.</p>
    #          <p>For more information about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html">Assessing your storage activity and usage with S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>. For a complete list of S3 Storage Lens metrics, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html">S3 Storage Lens metrics glossary</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute is_enabled
    #   <p>A container that indicates whether advanced data-protection metrics are enabled.</p>
    #   @return [Boolean]
    class AdvancedDataProtectionMetrics < Struct.new(
      nil,
      :is_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_enabled] = false unless options.key?(:is_enabled)
        super
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute identity_center_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services IAM Identity Center instance that you are
    #            associating with your S3 Access Grants instance. An IAM Identity Center instance is your corporate
    #            identity directory that you added to the IAM Identity Center. You can use the <a href="https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ListInstances.html">ListInstances</a> API operation to retrieve a list of your Identity Center
    #            instances and their ARNs.</p>
    #   @return [String]
    class AssociateAccessGrantsIdentityCenterRequest < Struct.new(
      nil,
      :account_id,
      :identity_center_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error details for the failed asynchronous operation.</p>
    # @!attribute code
    #   <p>A string that uniquely identifies the error condition.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A generic description of the error condition in English.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The identifier of the resource associated with the error.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request associated with the error.</p>
    #   @return [String]
    class AsyncErrorDetails < Struct.new(
      nil,
      :code,
      :message,
      :resource,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the information about an asynchronous operation.</p>
    # @!attribute creation_time
    #   <p>The time that the request was sent to the service.</p>
    #   @return [Time]
    # @!attribute operation
    #   <p>The specific operation for the asynchronous request.</p>
    #   @return [String]
    # @!attribute request_token_arn
    #   <p>The request token associated with the request.</p>
    #   @return [String]
    # @!attribute request_parameters
    #   <p>The parameters associated with the request.</p>
    #   @return [Types::AsyncRequestParameters]
    # @!attribute request_status
    #   <p>The current status of the request.</p>
    #   @return [String]
    # @!attribute response_details
    #   <p>The details of the response.</p>
    #   @return [Types::AsyncResponseDetails]
    class AsyncOperation < Struct.new(
      nil,
      :creation_time,
      :operation,
      :request_token_arn,
      :request_parameters,
      :request_status,
      :response_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the request parameters associated with an asynchronous request.</p>
    # @!attribute create_multi_region_access_point_request
    #   <p>A container of the parameters for a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a> request.</p>
    #   @return [Types::CreateMultiRegionAccessPointInput]
    # @!attribute delete_multi_region_access_point_request
    #   <p>A container of the parameters for a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a> request.</p>
    #   @return [Types::DeleteMultiRegionAccessPointInput]
    # @!attribute put_multi_region_access_point_policy_request
    #   <p>A container of the parameters for a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPoint.html">PutMultiRegionAccessPoint</a> request.</p>
    #   @return [Types::PutMultiRegionAccessPointPolicyInput]
    class AsyncRequestParameters < Struct.new(
      nil,
      :create_multi_region_access_point_request,
      :delete_multi_region_access_point_request,
      :put_multi_region_access_point_policy_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the response details that are returned when querying about an
    #          asynchronous request.</p>
    # @!attribute multi_region_access_point_details
    #   <p>The details for the Multi-Region Access Point.</p>
    #   @return [Types::MultiRegionAccessPointsAsyncResponse]
    # @!attribute error_details
    #   <p>Error details for an asynchronous request.</p>
    #   @return [Types::AsyncErrorDetails]
    class AsyncResponseDetails < Struct.new(
      nil,
      :multi_region_access_point_details,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lambda function used to transform objects through an Object Lambda Access Point.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function.</p>
    #   @return [String]
    # @!attribute function_payload
    #   <p>Additional JSON that provides supplemental data to the Lambda function used to transform
    #            objects.</p>
    #   @return [String]
    class AwsLambdaTransformation < Struct.new(
      nil,
      :function_arn,
      :function_payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested Outposts bucket name is not available. The bucket namespace is shared by
    #          all users of the Outposts in this Region. Select a different name and try
    #          again.</p>
    class BucketAlreadyExists < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Outposts bucket you tried to create already exists, and you own it. </p>
    class BucketAlreadyOwnedByYou < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the bucket-level configuration for Amazon S3 Storage Lens.</p>
    #          <p>For more information about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html">Assessing your storage activity and usage with S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute activity_metrics
    #   <p>A container for the bucket-level activity metrics for S3 Storage Lens.</p>
    #   @return [Types::ActivityMetrics]
    # @!attribute prefix_level
    #   <p>A container for the prefix-level metrics for S3 Storage Lens. </p>
    #   @return [Types::PrefixLevel]
    # @!attribute advanced_cost_optimization_metrics
    #   <p>A container for bucket-level advanced cost-optimization metrics for S3 Storage Lens.</p>
    #   @return [Types::AdvancedCostOptimizationMetrics]
    # @!attribute advanced_data_protection_metrics
    #   <p>A container for bucket-level advanced data-protection metrics for S3 Storage Lens.</p>
    #   @return [Types::AdvancedDataProtectionMetrics]
    # @!attribute detailed_status_codes_metrics
    #   <p>A container for bucket-level detailed status code metrics for S3 Storage Lens.</p>
    #   @return [Types::DetailedStatusCodesMetrics]
    class BucketLevel < Struct.new(
      nil,
      :activity_metrics,
      :prefix_level,
      :advanced_cost_optimization_metrics,
      :advanced_data_protection_metrics,
      :detailed_status_codes_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for enabling Amazon CloudWatch publishing for S3 Storage Lens metrics.</p>
    #          <p>For more information about publishing S3 Storage Lens metrics to CloudWatch, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_view_metrics_cloudwatch.html">Monitor
    #             S3 Storage Lens metrics in CloudWatch</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute is_enabled
    #   <p>A container that indicates whether CloudWatch publishing for S3 Storage Lens metrics is enabled. A
    #            value of <code>true</code> indicates that CloudWatch publishing for S3 Storage Lens metrics is
    #            enabled.</p>
    #   @return [Boolean]
    class CloudWatchMetrics < Struct.new(
      nil,
      :is_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_enabled] = false unless options.key?(:is_enabled)
        super
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute access_grants_location_id
    #   <p>The ID of the registered location to which you are granting access. S3 Access Grants assigns this
    #            ID when you register the location. S3 Access Grants assigns the ID <code>default</code> to the
    #            default location <code>s3://</code> and assigns an auto-generated ID to other locations
    #            that you register. </p>
    #            <p>If you are passing the <code>default</code> location, you cannot create an access grant
    #            for the entire default location. You must also specify a bucket or a bucket and prefix in
    #            the <code>Subprefix</code> field. </p>
    #   @return [String]
    # @!attribute access_grants_location_configuration
    #   <p>The configuration options of the grant location. The grant location is the S3 path to
    #            the data to which you are granting access. It contains the <code>S3SubPrefix</code> field.
    #            The grant scope is the result of appending the subprefix to the location scope of the
    #            registered location.</p>
    #   @return [Types::AccessGrantsLocationConfiguration]
    # @!attribute grantee
    #   <p>The user, group, or role to which you are granting access. You can grant access to an
    #            IAM user or role. If you have added your corporate directory to Amazon Web Services IAM Identity
    #            Center and associated your Identity Center instance with your S3 Access Grants instance, the grantee
    #            can also be a corporate directory user or group.</p>
    #   @return [Types::Grantee]
    # @!attribute permission
    #   <p>The type of access that you are granting to your S3 data, which can be set to one of the
    #            following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>READ</code> – Grant read-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WRITE</code> – Grant write-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READWRITE</code> – Grant both read and write access to the S3 data.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services IAM Identity Center application associated
    #            with your Identity Center instance. If an application ARN is included in the request to
    #            create an access grant, the grantee can only access the S3 data through this application.
    #         </p>
    #   @return [String]
    # @!attribute s3_prefix_type
    #   <p>The type of <code>S3SubPrefix</code>. The only possible value is <code>Object</code>.
    #            Pass this value if the access grant scope is an object. Do not pass this value if the
    #            access grant scope is a bucket or a bucket and a prefix. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The Amazon Web Services resource tags that you are adding to the access grant. Each tag is a label
    #            consisting of a user-defined key and value. Tags can help you manage, identify, organize,
    #            search for, and filter resources. </p>
    #   @return [Array<Types::Tag>]
    class CreateAccessGrantRequest < Struct.new(
      nil,
      :account_id,
      :access_grants_location_id,
      :access_grants_location_configuration,
      :grantee,
      :permission,
      :application_arn,
      :s3_prefix_type,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_at
    #   <p>The date and time when you created the access grant. </p>
    #   @return [Time]
    # @!attribute access_grant_id
    #   <p>The ID of the access grant. S3 Access Grants auto-generates this ID when you create the access
    #            grant.</p>
    #   @return [String]
    # @!attribute access_grant_arn
    #   <p>The Amazon Resource Name (ARN) of the access grant. </p>
    #   @return [String]
    # @!attribute grantee
    #   <p>The user, group, or role to which you are granting access. You can grant access to an
    #            IAM user or role. If you have added your corporate directory to Amazon Web Services IAM Identity
    #            Center and associated your Identity Center instance with your S3 Access Grants instance, the grantee
    #            can also be a corporate directory user or group.</p>
    #   @return [Types::Grantee]
    # @!attribute access_grants_location_id
    #   <p>The ID of the registered location to which you are granting access. S3 Access Grants assigns this
    #            ID when you register the location. S3 Access Grants assigns the ID <code>default</code> to the
    #            default location <code>s3://</code> and assigns an auto-generated ID to other locations
    #            that you register. </p>
    #   @return [String]
    # @!attribute access_grants_location_configuration
    #   <p>The configuration options of the grant location. The grant location is the S3 path to
    #            the data to which you are granting access. </p>
    #   @return [Types::AccessGrantsLocationConfiguration]
    # @!attribute permission
    #   <p>The type of access that you are granting to your S3 data, which can be set to one of the
    #            following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>READ</code> – Grant read-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WRITE</code> – Grant write-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READWRITE</code> – Grant both read and write access to the S3 data.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services IAM Identity Center application associated
    #            with your Identity Center instance. If the grant includes an application ARN, the grantee
    #            can only access the S3 data through this application. </p>
    #   @return [String]
    # @!attribute grant_scope
    #   <p>The S3 path of the data to which you are granting access. It is the result of appending
    #            the <code>Subprefix</code> to the location scope. </p>
    #   @return [String]
    class CreateAccessGrantResult < Struct.new(
      nil,
      :created_at,
      :access_grant_id,
      :access_grant_arn,
      :grantee,
      :access_grants_location_id,
      :access_grants_location_configuration,
      :permission,
      :application_arn,
      :grant_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute identity_center_arn
    #   <p>If you would like to associate your S3 Access Grants instance with an Amazon Web Services IAM Identity Center
    #            instance, use this field to pass the Amazon Resource Name (ARN) of the Amazon Web Services IAM Identity
    #            Center instance that you are associating with your S3 Access Grants instance. An IAM Identity
    #            Center instance is your corporate identity directory that you added to the IAM Identity
    #            Center. You can use the <a href="https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ListInstances.html">ListInstances</a> API
    #            operation to retrieve a list of your Identity Center instances and their ARNs. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The Amazon Web Services resource tags that you are adding to the S3 Access Grants instance. Each tag is a label
    #            consisting of a user-defined key and value. Tags can help you manage, identify, organize,
    #            search for, and filter resources. </p>
    #   @return [Array<Types::Tag>]
    class CreateAccessGrantsInstanceRequest < Struct.new(
      nil,
      :account_id,
      :identity_center_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_at
    #   <p>The date and time when you created the S3 Access Grants instance. </p>
    #   @return [Time]
    # @!attribute access_grants_instance_id
    #   <p>The ID of the S3 Access Grants instance. The ID is <code>default</code>. You can have one S3 Access Grants
    #            instance per Region per account. </p>
    #   @return [String]
    # @!attribute access_grants_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services IAM Identity Center instance that you are
    #            associating with your S3 Access Grants instance. An IAM Identity Center instance is your corporate
    #            identity directory that you added to the IAM Identity Center. You can use the <a href="https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ListInstances.html">ListInstances</a> API operation to retrieve a list of your Identity Center
    #            instances and their ARNs.</p>
    #   @return [String]
    # @!attribute identity_center_arn
    #   <p>If you associated your S3 Access Grants instance with an Amazon Web Services IAM Identity Center instance,
    #            this field returns the Amazon Resource Name (ARN) of the IAM Identity Center instance
    #            application; a subresource of the original Identity Center instance. S3 Access Grants creates this
    #            Identity Center application for the specific S3 Access Grants instance. </p>
    #   @deprecated
    #     IdentityCenterArn has been deprecated. Use IdentityCenterInstanceArn or IdentityCenterApplicationArn.
    #   @return [String]
    # @!attribute identity_center_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services IAM Identity Center instance that you are
    #            associating with your S3 Access Grants instance. An IAM Identity Center instance is your corporate
    #            identity directory that you added to the IAM Identity Center. You can use the <a href="https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ListInstances.html">ListInstances</a> API operation to retrieve a list of your Identity Center
    #            instances and their ARNs.</p>
    #   @return [String]
    # @!attribute identity_center_application_arn
    #   <p>If you associated your S3 Access Grants instance with an Amazon Web Services IAM Identity Center instance,
    #            this field returns the Amazon Resource Name (ARN) of the IAM Identity Center instance
    #            application; a subresource of the original Identity Center instance. S3 Access Grants creates this
    #            Identity Center application for the specific S3 Access Grants instance. </p>
    #   @return [String]
    class CreateAccessGrantsInstanceResult < Struct.new(
      nil,
      :created_at,
      :access_grants_instance_id,
      :access_grants_instance_arn,
      :identity_center_arn,
      :identity_center_instance_arn,
      :identity_center_application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute location_scope
    #   <p>The S3 path to the location that you are registering. The location scope can be the
    #            default S3 location <code>s3://</code>, the S3 path to a bucket
    #               <code>s3://<bucket></code>, or the S3 path to a bucket and prefix
    #               <code>s3://<bucket>/<prefix></code>. A prefix in S3 is a string of
    #            characters at the beginning of an object key name used to organize the objects that you
    #            store in your S3 buckets. For example, object key names that start with the
    #               <code>engineering/</code> prefix or object key names that start with the
    #               <code>marketing/campaigns/</code> prefix.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for the registered location. S3 Access Grants
    #            assumes this role to manage access to the registered location. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The Amazon Web Services resource tags that you are adding to the S3 Access Grants location. Each tag is a label
    #            consisting of a user-defined key and value. Tags can help you manage, identify, organize,
    #            search for, and filter resources.</p>
    #   @return [Array<Types::Tag>]
    class CreateAccessGrantsLocationRequest < Struct.new(
      nil,
      :account_id,
      :location_scope,
      :iam_role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_at
    #   <p>The date and time when you registered the location. </p>
    #   @return [Time]
    # @!attribute access_grants_location_id
    #   <p>The ID of the registered location to which you are granting access. S3 Access Grants assigns this
    #            ID when you register the location. S3 Access Grants assigns the ID <code>default</code> to the
    #            default location <code>s3://</code> and assigns an auto-generated ID to other locations
    #            that you register. </p>
    #   @return [String]
    # @!attribute access_grants_location_arn
    #   <p>The Amazon Resource Name (ARN) of the location you are registering.</p>
    #   @return [String]
    # @!attribute location_scope
    #   <p>The S3 URI path to the location that you are registering. The location scope can be the
    #            default S3 location <code>s3://</code>, the S3 path to a bucket, or the S3 path to a bucket
    #            and prefix. A prefix in S3 is a string of characters at the beginning of an object key name
    #            used to organize the objects that you store in your S3 buckets. For example, object key
    #            names that start with the <code>engineering/</code> prefix or object key names that start
    #            with the <code>marketing/campaigns/</code> prefix.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for the registered location. S3 Access Grants
    #            assumes this role to manage access to the registered location. </p>
    #   @return [String]
    class CreateAccessGrantsLocationResult < Struct.new(
      nil,
      :created_at,
      :access_grants_location_id,
      :access_grants_location_arn,
      :location_scope,
      :iam_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for owner of the specified Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name you want to assign to this Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Object Lambda Access Point configuration as a JSON document.</p>
    #   @return [Types::ObjectLambdaConfiguration]
    class CreateAccessPointForObjectLambdaRequest < Struct.new(
      nil,
      :account_id,
      :name,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_lambda_access_point_arn
    #   <p>Specifies the ARN for the Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias of the Object Lambda Access Point.</p>
    #   @return [Types::ObjectLambdaAccessPointAlias]
    class CreateAccessPointForObjectLambdaResult < Struct.new(
      nil,
      :object_lambda_access_point_arn,
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the account that owns the specified access point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name you want to assign to this access point.</p>
    #            <p>For directory buckets, the access point name must consist of a base name that you provide and
    #            suffix that includes the <code>ZoneID</code> (Amazon Web Services Availability Zone or Local Zone) of your bucket location,
    #            followed by <code>--xa-s3</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets.html">Managing access to shared datasets in directory buckets with
    #               access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket that you want to associate this access point with.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>If you include this field, Amazon S3 restricts access to this access point to requests from the
    #            specified virtual private cloud (VPC).</p>
    #            <note>
    #               <p>This is required for creating an access point for Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Types::VpcConfiguration]
    # @!attribute public_access_block_configuration
    #   <p> The <code>PublicAccessBlock</code> configuration that you want to apply to the access point.
    #         </p>
    #   @return [Types::PublicAccessBlockConfiguration]
    # @!attribute bucket_account_id
    #   <p>The Amazon Web Services account ID associated with the S3 bucket associated with this access point.</p>
    #            <p>For same account access point when your bucket and access point belong to the same account owner, the
    #               <code>BucketAccountId</code> is not required. For cross-account access point when your bucket
    #            and access point are not in the same account, the <code>BucketAccountId</code> is required. </p>
    #   @return [String]
    # @!attribute scope
    #   <p>For directory buckets, you can filter access control to specific prefixes, API
    #            operations, or a combination of both. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets.html">Managing access to shared datasets in directory buckets with
    #               access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Scope is only supported for access points attached to directory buckets.</p>
    #            </note>
    #   @return [Types::Scope]
    # @!attribute tags
    #   <p>An array of tags that you can apply to an access point. Tags are key-value pairs of metadata used to control access to your access points. For more information about tags, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html">Using tags with Amazon S3</a>. For information about tagging access points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html#using-tags-for-abac">Using tags for attribute-based access control (ABAC)</a>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>You must have the <code>s3:TagResource</code> permission to create an access point with tags for a general purpose bucket. </p>
    #                  </li>
    #                  <li>
    #                     <p>You must have the <code>s3express:TagResource</code> permission to create an access point with tags for a directory bucket.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateAccessPointRequest < Struct.new(
      nil,
      :account_id,
      :name,
      :bucket,
      :vpc_configuration,
      :public_access_block_configuration,
      :bucket_account_id,
      :scope,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_point_arn
    #   <p>The ARN of the access point.</p>
    #            <note>
    #               <p>This is only supported by Amazon S3 on Outposts.</p>
    #            </note>
    #   @return [String]
    # @!attribute alias
    #   <p>The name or alias of the access point.</p>
    #   @return [String]
    class CreateAccessPointResult < Struct.new(
      nil,
      :access_point_arn,
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the bucket configuration.</p>
    #          <note>
    #             <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #          </note>
    # @!attribute location_constraint
    #   <p>Specifies the Region where the bucket will be created. If you are creating a bucket on
    #            the US East (N. Virginia) Region (us-east-1), you do not need to specify the location. </p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [String]
    class CreateBucketConfiguration < Struct.new(
      nil,
      :location_constraint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket.</p>
    #   @return [String]
    # @!attribute create_bucket_configuration
    #   <p>The configuration information for the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Types::CreateBucketConfiguration]
    # @!attribute grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_write
    #   <p>Allows grantee to create, overwrite, and delete any object in the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_enabled_for_bucket
    #   <p>Specifies whether you want S3 Object Lock to be enabled for the new bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute outpost_id
    #   <p>The ID of the Outposts where the bucket is being created.</p>
    #            <note>
    #               <p>This ID is required by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [String]
    class CreateBucketRequest < Struct.new(
      nil,
      :acl,
      :bucket,
      :create_bucket_configuration,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write,
      :grant_write_acp,
      :object_lock_enabled_for_bucket,
      :outpost_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute location
    #   <p>The location of the bucket.</p>
    #   @return [String]
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    class CreateBucketResult < Struct.new(
      nil,
      :location,
      :bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that creates the job.</p>
    #   @return [String]
    # @!attribute confirmation_required
    #   <p>Indicates whether confirmation is required before Amazon S3 runs the job. Confirmation is
    #            only required for jobs created through the Amazon S3 console.</p>
    #   @return [Boolean]
    # @!attribute operation
    #   <p>The action that you want this job to perform on every object listed in the manifest. For
    #            more information about the available actions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html">Operations</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [Types::JobOperation]
    # @!attribute report
    #   <p>Configuration parameters for the optional job-completion report.</p>
    #   @return [Types::JobReport]
    # @!attribute client_request_token
    #   <p>An idempotency token to ensure that you don't accidentally submit the same request
    #            twice. You can use any string up to the maximum length.</p>
    #   @return [String]
    # @!attribute manifest
    #   <p>Configuration parameters for the manifest.</p>
    #   @return [Types::JobManifest]
    # @!attribute description
    #   <p>A description for this job. You can use any string within the permitted length.
    #            Descriptions don't need to be unique and can be used for multiple jobs.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The numerical priority for this job. Higher numbers indicate higher priority.</p>
    #   @return [Integer]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) for the Identity and Access Management (IAM) role that Batch Operations will
    #            use to run this job's action on every object in the manifest.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of tags to associate with the S3 Batch Operations job. This is an optional parameter.
    #         </p>
    #   @return [Array<Types::S3Tag>]
    # @!attribute manifest_generator
    #   <p>The attribute container for the ManifestGenerator details. Jobs must be created with
    #            either a manifest file or a ManifestGenerator, but not both.</p>
    #   @return [Types::JobManifestGenerator]
    class CreateJobRequest < Struct.new(
      nil,
      :account_id,
      :confirmation_required,
      :operation,
      :report,
      :client_request_token,
      :manifest,
      :description,
      :priority,
      :role_arn,
      :tags,
      :manifest_generator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID for this job. Amazon S3 generates this ID automatically and returns it after a
    #            successful <code>Create Job</code> request.</p>
    #   @return [String]
    class CreateJobResult < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the information associated with a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a> request. </p>
    # @!attribute name
    #   <p>The name of the Multi-Region Access Point associated with this request.</p>
    #   @return [String]
    # @!attribute public_access_block
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #            account. You can enable the configuration options in any combination. For more information
    #            about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>This data type is not supported for Amazon S3 on Outposts.</p>
    #   @return [Types::PublicAccessBlockConfiguration]
    # @!attribute regions
    #   <p>The buckets in different Regions that are associated with the Multi-Region Access Point.</p>
    #   @return [Array<Types::Region>]
    class CreateMultiRegionAccessPointInput < Struct.new(
      nil,
      :name,
      :public_access_block,
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point. The owner of the Multi-Region Access Point also must own
    #            the underlying buckets.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    #   @return [String]
    # @!attribute details
    #   <p>A container element containing details about the Multi-Region Access Point.</p>
    #   @return [Types::CreateMultiRegionAccessPointInput]
    class CreateMultiRegionAccessPointRequest < Struct.new(
      nil,
      :account_id,
      :client_token,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_token_arn
    #   <p>The request token associated with the request. You can use this token with <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a> to determine the status of asynchronous
    #            requests.</p>
    #   @return [String]
    class CreateMultiRegionAccessPointResult < Struct.new(
      nil,
      :request_token_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>
    #   The Amazon Web Services account ID that the Storage Lens group is created from and associated with.
    #   </p>
    #   @return [String]
    # @!attribute storage_lens_group
    #   <p>
    #   The Storage Lens group configuration.
    #   </p>
    #   @return [Types::StorageLensGroup]
    # @!attribute tags
    #   <p>
    #   The Amazon Web Services resource tags that you're adding to your Storage Lens group. This parameter is optional.
    #   </p>
    #   @return [Array<Types::Tag>]
    class CreateStorageLensGroupRequest < Struct.new(
      nil,
      :account_id,
      :storage_lens_group,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Security Token Service temporary credential that S3 Access Grants vends to grantees and client
    #          applications. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute access_key_id
    #   <p>The unique access key ID of the Amazon Web Services STS temporary credential that S3 Access Grants vends to grantees
    #            and client applications. </p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The secret access key of the Amazon Web Services STS temporary credential that S3 Access Grants vends to grantees
    #            and client applications. </p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The Amazon Web Services STS temporary credential that S3 Access Grants vends to grantees and client applications.
    #         </p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The expiration date and time of the temporary credential that S3 Access Grants vends to grantees
    #            and client applications. </p>
    #   @return [Time]
    class Credentials < Struct.new(
      nil,
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that returns objects that are encrypted by dual-layer server-side encryption with Amazon Web Services Key Management
    #          Service (KMS) keys (DSSE-KMS). You can further refine your filtering by optionally providing a KMS Key ARN 
    #          to create an object list of DSSE-KMS objects with that specific KMS Key ARN.</p>
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer managed KMS key to use for the filter 
    #            to return objects that are encrypted by the specified key. For best performance, 
    #            we recommend using the <code>KMSKeyArn</code> filter in conjunction with other object metadata filters, like <code>MatchAnyPrefix</code>, <code>CreatedAfter</code>, or 
    #            <code>MatchAnyStorageClass</code>.</p>
    #            <note>
    #               <p>You must provide the full KMS Key ARN. You can't use an alias name or alias ARN. 
    #            For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN"> 
    #               KMS keys</a> in the <i>Amazon Web Services Key Management Service Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    class DSSEKMSFilter < Struct.new(
      nil,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute access_grant_id
    #   <p>The ID of the access grant. S3 Access Grants auto-generates this ID when you create the access
    #            grant.</p>
    #   @return [String]
    class DeleteAccessGrantRequest < Struct.new(
      nil,
      :account_id,
      :access_grant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    class DeleteAccessGrantsInstanceRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    class DeleteAccessGrantsInstanceResourcePolicyRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute access_grants_location_id
    #   <p>The ID of the registered location that you are deregistering from your S3 Access Grants instance.
    #            S3 Access Grants assigned this ID when you registered the location. S3 Access Grants assigns the ID
    #               <code>default</code> to the default location <code>s3://</code> and assigns an
    #            auto-generated ID to other locations that you register. </p>
    #   @return [String]
    class DeleteAccessGrantsLocationRequest < Struct.new(
      nil,
      :account_id,
      :access_grants_location_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access point you want to delete.</p>
    #   @return [String]
    class DeleteAccessPointForObjectLambdaRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point you want to delete the policy for.</p>
    #   @return [String]
    class DeleteAccessPointPolicyForObjectLambdaRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access point whose policy you want to delete.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #   @return [String]
    class DeleteAccessPointPolicyRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the account that owns the specified access point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access point you want to delete.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #   @return [String]
    class DeleteAccessPointRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p> The Amazon Web Services account ID that owns the access point with the scope that you want to delete. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the access point with the scope that you want to delete. </p>
    #   @return [String]
    class DeleteAccessPointScopeRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID of the lifecycle configuration to delete.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    class DeleteBucketLifecycleConfigurationRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID of the Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    class DeleteBucketPolicyRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket to delete the replication configuration
    #            for.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>Specifies the S3 on Outposts bucket to delete the replication configuration for.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    class DeleteBucketReplicationRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID that owns the Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>Specifies the bucket being deleted.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    class DeleteBucketRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket tag set to be removed.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The bucket ARN that has the tag set to be removed.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    class DeleteBucketTaggingRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to delete.</p>
    #   @return [String]
    class DeleteJobTaggingRequest < Struct.new(
      nil,
      :account_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteJobTaggingResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies whether S3 on Outposts replicates delete markers. If you specify a
    #             <code>Filter</code> element in your replication configuration, you must also include a
    #             <code>DeleteMarkerReplication</code> element. If your <code>Filter</code> includes a
    #             <code>Tag</code> element, the <code>DeleteMarkerReplication</code> element's
    #             <code>Status</code> child element must be set to <code>Disabled</code>, because
    #          S3 on Outposts does not support replicating delete markers for tag-based rules.</p>
    #          <p>For more information about delete marker replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html#outposts-replication-what-is-replicated">How delete operations affect replication</a> in the
    #             <i>Amazon S3 User Guide</i>. </p>
    # @!attribute status
    #   <p>Indicates whether to replicate delete markers.</p>
    #   @return [String]
    class DeleteMarkerReplication < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the information associated with a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a> request.</p>
    # @!attribute name
    #   <p>The name of the Multi-Region Access Point associated with this request.</p>
    #   @return [String]
    class DeleteMultiRegionAccessPointInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    #   @return [String]
    # @!attribute details
    #   <p>A container element containing details about the Multi-Region Access Point.</p>
    #   @return [Types::DeleteMultiRegionAccessPointInput]
    class DeleteMultiRegionAccessPointRequest < Struct.new(
      nil,
      :account_id,
      :client_token,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_token_arn
    #   <p>The request token associated with the request. You can use this token with <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a> to determine the status of asynchronous
    #            requests.</p>
    #   @return [String]
    class DeleteMultiRegionAccessPointResult < Struct.new(
      nil,
      :request_token_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to remove.</p>
    #   @return [String]
    class DeletePublicAccessBlockRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #   @return [String]
    class DeleteStorageLensConfigurationRequest < Struct.new(
      nil,
      :config_id,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #   @return [String]
    class DeleteStorageLensConfigurationTaggingRequest < Struct.new(
      nil,
      :config_id,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteStorageLensConfigurationTaggingResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #   The name of the Storage Lens group that you're trying to delete.
    #   </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>
    #   The Amazon Web Services account ID used to create the Storage Lens group that you're trying to delete.
    #   </p>
    #   @return [String]
    class DeleteStorageLensGroupRequest < Struct.new(
      nil,
      :name,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job whose information you want to retrieve.</p>
    #   @return [String]
    class DescribeJobRequest < Struct.new(
      nil,
      :account_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>Contains the configuration parameters and status for the job specified in the
    #               <code>Describe Job</code> request.</p>
    #   @return [Types::JobDescriptor]
    class DescribeJobResult < Struct.new(
      nil,
      :job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute request_token_arn
    #   <p>The request token associated with the request you want to know about. This request token
    #            is returned as part of the response when you make an asynchronous request. You provide this
    #            token to query about the status of the asynchronous action.</p>
    #   @return [String]
    class DescribeMultiRegionAccessPointOperationRequest < Struct.new(
      nil,
      :account_id,
      :request_token_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute async_operation
    #   <p>A container element containing the details of the asynchronous operation.</p>
    #   @return [Types::AsyncOperation]
    class DescribeMultiRegionAccessPointOperationResult < Struct.new(
      nil,
      :async_operation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies information about the replication destination bucket and its settings for an
    #          S3 on Outposts replication configuration.</p>
    # @!attribute account
    #   <p>The destination bucket owner's account ID. </p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the access point for the destination bucket where you want
    #            S3 on Outposts to store the replication results.</p>
    #   @return [String]
    # @!attribute replication_time
    #   <p>A container that specifies S3 Replication Time Control (S3 RTC) settings, including whether S3 RTC is enabled
    #            and the time when all objects and operations on objects must be replicated. Must be
    #            specified together with a <code>Metrics</code> block. </p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Types::ReplicationTime]
    # @!attribute access_control_translation
    #   <p>Specify this property only in a cross-account scenario (where the source and destination
    #            bucket owners are not the same), and you want to change replica ownership to the
    #            Amazon Web Services account that owns the destination bucket. If this property is not specified in the
    #            replication configuration, the replicas are owned by same Amazon Web Services account that owns the
    #            source object.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Types::AccessControlTranslation]
    # @!attribute encryption_configuration
    #   <p>A container that provides information about encryption. If
    #               <code>SourceSelectionCriteria</code> is specified, you must specify this element.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute metrics
    #   <p> A container that specifies replication metrics-related settings. </p>
    #   @return [Types::Metrics]
    # @!attribute storage_class
    #   <p> The storage class to use when replicating objects. All objects stored on S3 on Outposts
    #            are stored in the <code>OUTPOSTS</code> storage class. S3 on Outposts uses the
    #               <code>OUTPOSTS</code> storage class to create the object replicas. </p>
    #            <note>
    #               <p>Values other than <code>OUTPOSTS</code> aren't supported by Amazon S3 on Outposts. </p>
    #            </note>
    #   @return [String]
    class Destination < Struct.new(
      nil,
      :account,
      :bucket,
      :replication_time,
      :access_control_translation,
      :encryption_configuration,
      :metrics,
      :storage_class,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container element for Amazon S3 Storage Lens detailed status code metrics. Detailed status
    #          code metrics generate metrics for HTTP status codes, such as <code>200 OK</code>, <code>403
    #             Forbidden</code>, <code>503 Service Unavailable</code> and others. </p>
    #          <p>For more information about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html">Assessing your storage activity and usage with S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>. For a complete list of S3 Storage Lens metrics, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html">S3 Storage Lens metrics glossary</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute is_enabled
    #   <p>A container that indicates whether detailed status code metrics are enabled.</p>
    #   @return [Boolean]
    class DetailedStatusCodesMetrics < Struct.new(
      nil,
      :is_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_enabled] = false unless options.key?(:is_enabled)
        super
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    class DissociateAccessGrantsIdentityCenterRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies encryption-related information for an Amazon S3 bucket that is a destination for
    #          replicated objects. If you're specifying a customer managed KMS key, we recommend using a
    #          fully qualified KMS key ARN. If you use a KMS key alias instead, then KMS resolves
    #          the key within the requester’s account. This behavior can result in data that's encrypted
    #          with a KMS key that belongs to the requester, and not the bucket owner.</p>
    #          <note>
    #             <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #          </note>
    # @!attribute replica_kms_key_id
    #   <p>Specifies the ID of the customer managed KMS key that's stored in Key Management Service (KMS)
    #            for the destination bucket. This ID is either the Amazon Resource Name (ARN) for the
    #            KMS key or the alias ARN for the KMS key. Amazon S3 uses this KMS key to encrypt
    #            replica objects. Amazon S3 supports only symmetric encryption KMS keys. For more information,
    #            see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks">Symmetric encryption
    #               KMS keys</a> in the <i>Amazon Web Services Key Management Service Developer
    #               Guide</i>.</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      nil,
      :replica_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The last established access control policy for a Multi-Region Access Point.</p>
    #          <p>When you update the policy, the update is first listed as the proposed policy. After the
    #          update is finished and all Regions have been updated, the proposed policy is listed as the
    #          established policy. If both policies have the same version number, the proposed policy is
    #          the established policy.</p>
    # @!attribute policy
    #   <p>The details of the last established policy.</p>
    #   @return [String]
    class EstablishedMultiRegionAccessPointPolicy < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for what Amazon S3 Storage Lens will exclude.</p>
    # @!attribute buckets
    #   <p>A container for the S3 Storage Lens bucket excludes.</p>
    #   @return [Array<String>]
    # @!attribute regions
    #   <p>A container for the S3 Storage Lens Region excludes.</p>
    #   @return [Array<String>]
    class Exclude < Struct.new(
      nil,
      :buckets,
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An optional configuration to replicate existing source bucket objects. </p>
    #          <note>
    #             <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #          </note>
    # @!attribute status
    #   <p>Specifies whether Amazon S3 replicates existing source bucket objects. </p>
    #   @return [String]
    class ExistingObjectReplication < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The encryption configuration to use when storing the generated manifest.</p>
    # @!attribute sses3
    #   <p>Specifies the use of SSE-S3 to encrypt generated manifest objects.</p>
    #   @return [Types::SSES3Encryption]
    # @!attribute ssekms
    #   <p>Configuration details on how SSE-KMS is used to encrypt generated manifest
    #            objects.</p>
    #   @return [Types::SSEKMSEncryption]
    class GeneratedManifestEncryption < Struct.new(
      nil,
      :sses3,
      :ssekms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute access_grant_id
    #   <p>The ID of the access grant. S3 Access Grants auto-generates this ID when you create the access
    #            grant.</p>
    #   @return [String]
    class GetAccessGrantRequest < Struct.new(
      nil,
      :account_id,
      :access_grant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_at
    #   <p>The date and time when you created the access grant. </p>
    #   @return [Time]
    # @!attribute access_grant_id
    #   <p>The ID of the access grant. S3 Access Grants auto-generates this ID when you create the access
    #            grant.</p>
    #   @return [String]
    # @!attribute access_grant_arn
    #   <p>The Amazon Resource Name (ARN) of the access grant. </p>
    #   @return [String]
    # @!attribute grantee
    #   <p>The user, group, or role to which you are granting access. You can grant access to an
    #            IAM user or role. If you have added a corporate directory to Amazon Web Services IAM Identity Center
    #            and associated this Identity Center instance with the S3 Access Grants instance, the grantee can also
    #            be a corporate directory user or group.</p>
    #   @return [Types::Grantee]
    # @!attribute permission
    #   <p>The type of permission that was granted in the access grant. Can be one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>READ</code> – Grant read-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WRITE</code> – Grant write-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READWRITE</code> – Grant both read and write access to the S3 data.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute access_grants_location_id
    #   <p>The ID of the registered location to which you are granting access. S3 Access Grants assigns this
    #            ID when you register the location. S3 Access Grants assigns the ID <code>default</code> to the
    #            default location <code>s3://</code> and assigns an auto-generated ID to other locations
    #            that you register. </p>
    #   @return [String]
    # @!attribute access_grants_location_configuration
    #   <p>The configuration options of the grant location. The grant location is the S3 path to
    #            the data to which you are granting access. </p>
    #   @return [Types::AccessGrantsLocationConfiguration]
    # @!attribute grant_scope
    #   <p>The S3 path of the data to which you are granting access. It is the result of appending
    #            the <code>Subprefix</code> to the location scope.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services IAM Identity Center application associated
    #            with your Identity Center instance. If the grant includes an application ARN, the grantee
    #            can only access the S3 data through this application. </p>
    #   @return [String]
    class GetAccessGrantResult < Struct.new(
      nil,
      :created_at,
      :access_grant_id,
      :access_grant_arn,
      :grantee,
      :permission,
      :access_grants_location_id,
      :access_grants_location_configuration,
      :grant_scope,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account that is making this request.</p>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The S3 prefix of the access grants that you would like to retrieve.</p>
    #   @return [String]
    class GetAccessGrantsInstanceForPrefixRequest < Struct.new(
      nil,
      :account_id,
      :s3_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_grants_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 Access Grants instance. </p>
    #   @return [String]
    # @!attribute access_grants_instance_id
    #   <p>The ID of the S3 Access Grants instance. The ID is <code>default</code>. You can have one S3 Access Grants
    #            instance per Region per account. </p>
    #   @return [String]
    class GetAccessGrantsInstanceForPrefixResult < Struct.new(
      nil,
      :access_grants_instance_arn,
      :access_grants_instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    class GetAccessGrantsInstanceRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    class GetAccessGrantsInstanceResourcePolicyRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource policy of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute organization
    #   <p>The Organization of the resource policy of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when you created the S3 Access Grants instance resource policy. </p>
    #   @return [Time]
    class GetAccessGrantsInstanceResourcePolicyResult < Struct.new(
      nil,
      :policy,
      :organization,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_grants_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 Access Grants instance. </p>
    #   @return [String]
    # @!attribute access_grants_instance_id
    #   <p>The ID of the S3 Access Grants instance. The ID is <code>default</code>. You can have one S3 Access Grants
    #            instance per Region per account. </p>
    #   @return [String]
    # @!attribute identity_center_arn
    #   <p>If you associated your S3 Access Grants instance with an Amazon Web Services IAM Identity Center instance,
    #            this field returns the Amazon Resource Name (ARN) of the IAM Identity Center instance
    #            application; a subresource of the original Identity Center instance. S3 Access Grants creates this
    #            Identity Center application for the specific S3 Access Grants instance. </p>
    #   @deprecated
    #     IdentityCenterArn has been deprecated. Use IdentityCenterInstanceArn or IdentityCenterApplicationArn.
    #   @return [String]
    # @!attribute identity_center_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services IAM Identity Center instance that you are
    #            associating with your S3 Access Grants instance. An IAM Identity Center instance is your corporate
    #            identity directory that you added to the IAM Identity Center. You can use the <a href="https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ListInstances.html">ListInstances</a> API operation to retrieve a list of your Identity Center
    #            instances and their ARNs.</p>
    #   @return [String]
    # @!attribute identity_center_application_arn
    #   <p>If you associated your S3 Access Grants instance with an Amazon Web Services IAM Identity Center instance,
    #            this field returns the Amazon Resource Name (ARN) of the IAM Identity Center instance
    #            application; a subresource of the original Identity Center instance. S3 Access Grants creates this
    #            Identity Center application for the specific S3 Access Grants instance. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when you created the S3 Access Grants instance. </p>
    #   @return [Time]
    class GetAccessGrantsInstanceResult < Struct.new(
      nil,
      :access_grants_instance_arn,
      :access_grants_instance_id,
      :identity_center_arn,
      :identity_center_instance_arn,
      :identity_center_application_arn,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute access_grants_location_id
    #   <p>The ID of the registered location that you are retrieving. S3 Access Grants assigns this ID when
    #            you register the location. S3 Access Grants assigns the ID <code>default</code> to the default
    #            location <code>s3://</code> and assigns an auto-generated ID to other locations that you
    #            register. </p>
    #   @return [String]
    class GetAccessGrantsLocationRequest < Struct.new(
      nil,
      :account_id,
      :access_grants_location_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_at
    #   <p>The date and time when you registered the location. </p>
    #   @return [Time]
    # @!attribute access_grants_location_id
    #   <p>The ID of the registered location to which you are granting access. S3 Access Grants assigns this
    #            ID when you register the location. S3 Access Grants assigns the ID <code>default</code> to the
    #            default location <code>s3://</code> and assigns an auto-generated ID to other locations
    #            that you register. </p>
    #   @return [String]
    # @!attribute access_grants_location_arn
    #   <p>The Amazon Resource Name (ARN) of the registered location. </p>
    #   @return [String]
    # @!attribute location_scope
    #   <p>The S3 URI path to the registered location. The location scope can be the default S3
    #            location <code>s3://</code>, the S3 path to a bucket, or the S3 path to a bucket and
    #            prefix. A prefix in S3 is a string of characters at the beginning of an object key name
    #            used to organize the objects that you store in your S3 buckets. For example, object key
    #            names that start with the <code>engineering/</code> prefix or object key names that start
    #            with the <code>marketing/campaigns/</code> prefix.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for the registered location. S3 Access Grants
    #            assumes this role to manage access to the registered location. </p>
    #   @return [String]
    class GetAccessGrantsLocationResult < Struct.new(
      nil,
      :created_at,
      :access_grants_location_id,
      :access_grants_location_arn,
      :location_scope,
      :iam_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point you want to return the configuration for.</p>
    #   @return [String]
    class GetAccessPointConfigurationForObjectLambdaRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>Object Lambda Access Point configuration document.</p>
    #   @return [Types::ObjectLambdaConfiguration]
    class GetAccessPointConfigurationForObjectLambdaResult < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #   @return [String]
    class GetAccessPointForObjectLambdaRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute public_access_block_configuration
    #   <p>Configuration to block all public access. This setting is turned on and can not be
    #            edited. </p>
    #   @return [Types::PublicAccessBlockConfiguration]
    # @!attribute creation_date
    #   <p>The date and time when the specified Object Lambda Access Point was created.</p>
    #   @return [Time]
    # @!attribute alias
    #   <p>The alias of the Object Lambda Access Point.</p>
    #   @return [Types::ObjectLambdaAccessPointAlias]
    class GetAccessPointForObjectLambdaResult < Struct.new(
      nil,
      :name,
      :public_access_block_configuration,
      :creation_date,
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #   @return [String]
    class GetAccessPointPolicyForObjectLambdaRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>Object Lambda Access Point resource policy document.</p>
    #   @return [String]
    class GetAccessPointPolicyForObjectLambdaResult < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access point whose policy you want to retrieve.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #   @return [String]
    class GetAccessPointPolicyRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The access point policy associated with the specified access point.</p>
    #   @return [String]
    class GetAccessPointPolicyResult < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #   @return [String]
    class GetAccessPointPolicyStatusForObjectLambdaRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_status
    #   <p>Indicates whether this access point policy is public. For more information about how Amazon S3
    #            evaluates policies to determine whether they are public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>. </p>
    #   @return [Types::PolicyStatus]
    class GetAccessPointPolicyStatusForObjectLambdaResult < Struct.new(
      nil,
      :policy_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access point whose policy status you want to retrieve.</p>
    #   @return [String]
    class GetAccessPointPolicyStatusRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_status
    #   <p>Indicates the current policy status of the specified access point.</p>
    #   @return [Types::PolicyStatus]
    class GetAccessPointPolicyStatusResult < Struct.new(
      nil,
      :policy_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the account that owns the specified access point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access point whose configuration information you want to retrieve.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #   @return [String]
    class GetAccessPointRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the specified access point.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket associated with the specified access point.</p>
    #   @return [String]
    # @!attribute network_origin
    #   <p>Indicates whether this access point allows access from the public internet. If
    #               <code>VpcConfiguration</code> is specified for this access point, then
    #               <code>NetworkOrigin</code> is <code>VPC</code>, and the access point doesn't allow access from
    #            the public internet. Otherwise, <code>NetworkOrigin</code> is <code>Internet</code>, and
    #            the access point allows access from the public internet, subject to the access point and bucket access
    #            policies.</p>
    #            <p>This will always be true for an Amazon S3 on Outposts access point</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>Contains the virtual private cloud (VPC) configuration for the specified access point.</p>
    #            <note>
    #               <p>This element is empty if this access point is an Amazon S3 on Outposts access point that is used by other
    #                  Amazon Web Services services.</p>
    #            </note>
    #   @return [Types::VpcConfiguration]
    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #            account. You can enable the configuration options in any combination. For more information
    #            about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>This data type is not supported for Amazon S3 on Outposts.</p>
    #   @return [Types::PublicAccessBlockConfiguration]
    # @!attribute creation_date
    #   <p>The date and time when the specified access point was created.</p>
    #   @return [Time]
    # @!attribute alias
    #   <p>The name or alias of the access point.</p>
    #   @return [String]
    # @!attribute access_point_arn
    #   <p>The ARN of the access point.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>The VPC endpoint for the access point.</p>
    #   @return [Hash<String, String>]
    # @!attribute bucket_account_id
    #   <p>The Amazon Web Services account ID associated with the S3 bucket associated with this access point.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier for the data source of the access point.</p>
    #   @return [String]
    # @!attribute data_source_type
    #   <p>The type of the data source that the access point is attached to.</p>
    #   @return [String]
    class GetAccessPointResult < Struct.new(
      nil,
      :name,
      :bucket,
      :network_origin,
      :vpc_configuration,
      :public_access_block_configuration,
      :creation_date,
      :alias,
      :access_point_arn,
      :endpoints,
      :bucket_account_id,
      :data_source_id,
      :data_source_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p> The Amazon Web Services account ID that owns the access point with the scope that you want to retrieve.
    #         </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access point with the scope you want to retrieve.</p>
    #   @return [String]
    class GetAccessPointScopeRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>The contents of the access point scope.</p>
    #   @return [Types::Scope]
    class GetAccessPointScopeResult < Struct.new(
      nil,
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    class GetBucketLifecycleConfigurationRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules
    #   <p>Container for the lifecycle rule of the Outposts bucket.</p>
    #   @return [Array<Types::LifecycleRule>]
    class GetBucketLifecycleConfigurationResult < Struct.new(
      nil,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    class GetBucketPolicyRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The policy of the Outposts bucket.</p>
    #   @return [String]
    class GetBucketPolicyResult < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>Specifies the bucket to get the replication information for.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    class GetBucketReplicationRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_configuration
    #   <p>A container for one or more replication rules. A replication configuration must have at
    #            least one rule and you can add up to 100 rules. The maximum size of a replication
    #            configuration is 128 KB.</p>
    #   @return [Types::ReplicationConfiguration]
    class GetBucketReplicationResult < Struct.new(
      nil,
      :replication_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    class GetBucketRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The Outposts bucket requested.</p>
    #   @return [String]
    # @!attribute public_access_block_enabled
    #   <p></p>
    #   @return [Boolean]
    # @!attribute creation_date
    #   <p>The creation date of the Outposts bucket.</p>
    #   @return [Time]
    class GetBucketResult < Struct.new(
      nil,
      :bucket,
      :public_access_block_enabled,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:public_access_block_enabled] = false unless options.key?(:public_access_block_enabled)
        super
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    class GetBucketTaggingRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_set
    #   <p>The tags set of the Outposts bucket.</p>
    #   @return [Array<Types::S3Tag>]
    class GetBucketTaggingResult < Struct.new(
      nil,
      :tag_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 on Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The S3 on Outposts bucket to return the versioning state for.</p>
    #   @return [String]
    class GetBucketVersioningRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The versioning state of the S3 on Outposts bucket.</p>
    #   @return [String]
    # @!attribute mfa_delete
    #   <p>Specifies whether MFA delete is enabled in the bucket versioning configuration. This
    #            element is returned only if the bucket has been configured with MFA delete. If MFA delete
    #            has never been configured for the bucket, this element is not returned.</p>
    #   @return [String]
    class GetBucketVersioningResult < Struct.new(
      nil,
      :status,
      :mfa_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The S3 URI path of the data to which you are requesting temporary access credentials. If
    #            the requesting account has an access grant for this data, S3 Access Grants vends temporary access
    #            credentials in the response.</p>
    #   @return [String]
    # @!attribute permission
    #   <p>The type of permission granted to your S3 data, which can be set to one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>READ</code> – Grant read-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WRITE</code> – Grant write-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READWRITE</code> – Grant both read and write access to the S3 data.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute duration_seconds
    #   <p>The session duration, in seconds, of the temporary access credential that S3 Access Grants vends
    #            to the grantee or client application. The default value is 1 hour, but the grantee can
    #            specify a range from 900 seconds (15 minutes) up to 43200 seconds (12 hours). If the
    #            grantee requests a value higher than this maximum, the operation fails. </p>
    #   @return [Integer]
    # @!attribute privilege
    #   <p>The scope of the temporary access credential that S3 Access Grants vends to the grantee or client
    #            application. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Default</code> – The scope of the returned temporary access token is the scope
    #                  of the grant that is closest to the target scope.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Minimal</code> – The scope of the returned temporary access token is the same
    #                  as the requested target scope as long as the requested scope is the same as or a
    #                  subset of the grant scope. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute target_type
    #   <p>The type of <code>Target</code>. The only possible value is <code>Object</code>. Pass
    #            this value if the target data that you would like to access is a path to an object. Do not
    #            pass this value if the target data is a bucket or a bucket and a prefix. </p>
    #   @return [String]
    class GetDataAccessRequest < Struct.new(
      nil,
      :account_id,
      :target,
      :permission,
      :duration_seconds,
      :privilege,
      :target_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute credentials
    #   <p>The temporary credential token that S3 Access Grants vends.</p>
    #   @return [Types::Credentials]
    # @!attribute matched_grant_target
    #   <p>The S3 URI path of the data to which you are being granted temporary access credentials.
    #         </p>
    #   @return [String]
    # @!attribute grantee
    #   <p>The user, group, or role that was granted access to the S3 location scope. For directory
    #            identities, this API also returns the grants of the IAM role used for the identity-aware
    #            request. For more information on identity-aware sessions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_sts-setcontext.html">Granting permissions to use identity-aware console sessions</a>. </p>
    #   @return [Types::Grantee]
    class GetDataAccessResult < Struct.new(
      nil,
      :credentials,
      :matched_grant_target,
      :grantee,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to retrieve.</p>
    #   @return [String]
    class GetJobTaggingRequest < Struct.new(
      nil,
      :account_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The set of tags associated with the S3 Batch Operations job.</p>
    #   @return [Array<Types::S3Tag>]
    class GetJobTaggingResult < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Specifies the Multi-Region Access Point. The name of the Multi-Region Access Point is different from the alias. For more
    #            information about the distinction between the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming">Rules for naming Amazon S3 Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class GetMultiRegionAccessPointPolicyRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The policy associated with the specified Multi-Region Access Point.</p>
    #   @return [Types::MultiRegionAccessPointPolicyDocument]
    class GetMultiRegionAccessPointPolicyResult < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Specifies the Multi-Region Access Point. The name of the Multi-Region Access Point is different from the alias. For more
    #            information about the distinction between the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming">Rules for naming Amazon S3 Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class GetMultiRegionAccessPointPolicyStatusRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute established
    #   <p>Indicates whether this access point policy is public. For more information about how Amazon S3
    #            evaluates policies to determine whether they are public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>. </p>
    #   @return [Types::PolicyStatus]
    class GetMultiRegionAccessPointPolicyStatusResult < Struct.new(
      nil,
      :established,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Multi-Region Access Point whose configuration information you want to receive. The name of
    #            the Multi-Region Access Point is different from the alias. For more information about the distinction between
    #            the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming">Rules for naming Amazon S3 Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class GetMultiRegionAccessPointRequest < Struct.new(
      nil,
      :account_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_point
    #   <p>A container element containing the details of the requested Multi-Region Access Point.</p>
    #   @return [Types::MultiRegionAccessPointReport]
    class GetMultiRegionAccessPointResult < Struct.new(
      nil,
      :access_point,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute mrap
    #   <p>The Multi-Region Access Point ARN.</p>
    #   @return [String]
    class GetMultiRegionAccessPointRoutesRequest < Struct.new(
      nil,
      :account_id,
      :mrap,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute mrap
    #   <p>The Multi-Region Access Point ARN.</p>
    #   @return [String]
    # @!attribute routes
    #   <p>The different routes that make up the route configuration. Active routes return a value
    #            of <code>100</code>, and passive routes return a value of <code>0</code>.</p>
    #   @return [Array<Types::MultiRegionAccessPointRoute>]
    class GetMultiRegionAccessPointRoutesResult < Struct.new(
      nil,
      :mrap,
      :routes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration currently in effect for this
    #            Amazon Web Services account.</p>
    #   @return [Types::PublicAccessBlockConfiguration]
    class GetPublicAccessBlockOutput < Struct.new(
      nil,
      :public_access_block_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to retrieve.</p>
    #   @return [String]
    class GetPublicAccessBlockRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute config_id
    #   <p>The ID of the Amazon S3 Storage Lens configuration.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #   @return [String]
    class GetStorageLensConfigurationRequest < Struct.new(
      nil,
      :config_id,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_lens_configuration
    #   <p>The S3 Storage Lens configuration requested.</p>
    #   @return [Types::StorageLensConfiguration]
    class GetStorageLensConfigurationResult < Struct.new(
      nil,
      :storage_lens_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute config_id
    #   <p>The ID of the Amazon S3 Storage Lens configuration.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #   @return [String]
    class GetStorageLensConfigurationTaggingRequest < Struct.new(
      nil,
      :config_id,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags of S3 Storage Lens configuration requested.</p>
    #   @return [Array<Types::StorageLensTag>]
    class GetStorageLensConfigurationTaggingResult < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #   The name of the Storage Lens group that you're trying to retrieve the configuration details for.
    #   </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>
    #   The Amazon Web Services account ID associated with the Storage Lens group that you're trying to retrieve the details for.
    #   </p>
    #   @return [String]
    class GetStorageLensGroupRequest < Struct.new(
      nil,
      :name,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_lens_group
    #   <p>
    #   The name of the Storage Lens group that you're trying to retrieve the configuration details for.
    #   </p>
    #   @return [Types::StorageLensGroup]
    class GetStorageLensGroupResult < Struct.new(
      nil,
      :storage_lens_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The user, group, or role to which you are granting access. You can grant access to an
    #          IAM user or role. If you have added your corporate directory to Amazon Web Services IAM Identity
    #          Center and associated your Identity Center instance with your S3 Access Grants instance, the grantee
    #          can also be a corporate directory user or group.</p>
    # @!attribute grantee_type
    #   <p>The type of the grantee to which access has been granted. It can be one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IAM</code> - An IAM user or role.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DIRECTORY_USER</code> - Your corporate directory user. You can use
    #                  this option if you have added your corporate identity directory to IAM Identity
    #                  Center and associated the IAM Identity Center instance with your S3 Access Grants
    #                  instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DIRECTORY_GROUP</code> - Your corporate directory group. You can use
    #                  this option if you have added your corporate identity directory to IAM Identity
    #                  Center and associated the IAM Identity Center instance with your S3 Access Grants
    #                  instance.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute grantee_identifier
    #   <p>The unique identifier of the <code>Grantee</code>. If the grantee type is
    #               <code>IAM</code>, the identifier is the IAM Amazon Resource Name (ARN) of the user
    #            or role. If the grantee type is a directory user or group, the identifier is 128-bit
    #            universally unique identifier (UUID) in the format
    #               <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>. You can obtain this UUID from your
    #            Amazon Web Services IAM Identity Center instance.</p>
    #   @return [String]
    class Grantee < Struct.new(
      nil,
      :grantee_type,
      :grantee_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class IdempotencyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for what Amazon S3 Storage Lens configuration includes.</p>
    # @!attribute buckets
    #   <p>A container for the S3 Storage Lens bucket includes.</p>
    #   @return [Array<String>]
    # @!attribute regions
    #   <p>A container for the S3 Storage Lens Region includes.</p>
    #   @return [Array<String>]
    class Include < Struct.new(
      nil,
      :buckets,
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InternalServiceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container element for the job configuration and status information returned by a
    #             <code>Describe Job</code> request.</p>
    # @!attribute job_id
    #   <p>The ID for the specified job.</p>
    #   @return [String]
    # @!attribute confirmation_required
    #   <p>Indicates whether confirmation is required before Amazon S3 begins running the specified job.
    #            Confirmation is required only for jobs created through the Amazon S3 console.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description for this job, if one was provided in this job's <code>Create Job</code>
    #            request.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) for this job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the specified job.</p>
    #   @return [String]
    # @!attribute manifest
    #   <p>The configuration information for the specified job's manifest object.</p>
    #   @return [Types::JobManifest]
    # @!attribute operation
    #   <p>The operation that the specified job is configured to run on the objects listed in the
    #            manifest.</p>
    #   @return [Types::JobOperation]
    # @!attribute priority
    #   <p>The priority of the specified job.</p>
    #   @return [Integer]
    # @!attribute progress_summary
    #   <p>Describes the total number of tasks that the specified job has run, the number of tasks
    #            that succeeded, and the number of tasks that failed.</p>
    #   @return [Types::JobProgressSummary]
    # @!attribute status_update_reason
    #   <p>The reason for updating the job.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>If the specified job failed, this field contains information describing the
    #            failure.</p>
    #   @return [Array<Types::JobFailure>]
    # @!attribute report
    #   <p>Contains the configuration information for the job-completion report if you requested
    #            one in the <code>Create Job</code> request.</p>
    #   @return [Types::JobReport]
    # @!attribute creation_time
    #   <p>A timestamp indicating when this job was created.</p>
    #   @return [Time]
    # @!attribute termination_date
    #   <p>A timestamp indicating when this job terminated. A job's termination date is the date
    #            and time when it succeeded, failed, or was canceled.</p>
    #   @return [Time]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) for the Identity and Access Management (IAM) role assigned to run the tasks
    #            for this job.</p>
    #   @return [String]
    # @!attribute suspended_date
    #   <p>The timestamp when this job was suspended, if it has been suspended.</p>
    #   @return [Time]
    # @!attribute suspended_cause
    #   <p>The reason why the specified job was suspended. A job is only suspended if you create it
    #            through the Amazon S3 console. When you create the job, it enters the <code>Suspended</code>
    #            state to await confirmation before running. After you confirm the job, it automatically
    #            exits the <code>Suspended</code> state.</p>
    #   @return [String]
    # @!attribute manifest_generator
    #   <p>The manifest generator that was used to generate a job manifest for this job.</p>
    #   @return [Types::JobManifestGenerator]
    # @!attribute generated_manifest_descriptor
    #   <p>The attribute of the JobDescriptor containing details about the job's generated
    #            manifest.</p>
    #   @return [Types::S3GeneratedManifestDescriptor]
    class JobDescriptor < Struct.new(
      nil,
      :job_id,
      :confirmation_required,
      :description,
      :job_arn,
      :status,
      :manifest,
      :operation,
      :priority,
      :progress_summary,
      :status_update_reason,
      :failure_reasons,
      :report,
      :creation_time,
      :termination_date,
      :role_arn,
      :suspended_date,
      :suspended_cause,
      :manifest_generator,
      :generated_manifest_descriptor,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:confirmation_required] = nil unless options.key?(:confirmation_required)
        options[:priority] = 0 unless options.key?(:priority)
        super
      end
    end

    # <p>If this job failed, this element indicates why the job failed.</p>
    # @!attribute failure_code
    #   <p>The failure code, if any, for the specified job.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The failure reason, if any, for the specified job.</p>
    #   @return [String]
    class JobFailure < Struct.new(
      nil,
      :failure_code,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration and status information for a single job retrieved as part of
    #          a job list.</p>
    # @!attribute job_id
    #   <p>The ID for the specified job.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The user-specified description that was included in the specified job's <code>Create
    #               Job</code> request.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The operation that the specified job is configured to run on every object listed in the
    #            manifest.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The current priority for the specified job.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The specified job's current status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A timestamp indicating when the specified job was created.</p>
    #   @return [Time]
    # @!attribute termination_date
    #   <p>A timestamp indicating when the specified job terminated. A job's termination date is
    #            the date and time when it succeeded, failed, or was canceled.</p>
    #   @return [Time]
    # @!attribute progress_summary
    #   <p>Describes the total number of tasks that the specified job has run, the number of tasks
    #            that succeeded, and the number of tasks that failed.</p>
    #   @return [Types::JobProgressSummary]
    class JobListDescriptor < Struct.new(
      nil,
      :job_id,
      :description,
      :operation,
      :priority,
      :status,
      :creation_time,
      :termination_date,
      :progress_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:priority] = 0 unless options.key?(:priority)
        super
      end
    end

    # <p>Contains the configuration information for a job's manifest.</p>
    # @!attribute spec
    #   <p>Describes the format of the specified job's manifest. If the manifest is in CSV format,
    #            also describes the columns contained within the manifest.</p>
    #   @return [Types::JobManifestSpec]
    # @!attribute location
    #   <p>Contains the information required to locate the specified job's manifest. Manifests
    #            can't be imported from directory buckets. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">Directory buckets</a>.</p>
    #   @return [Types::JobManifestLocation]
    class JobManifest < Struct.new(
      nil,
      :spec,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the type of the job's ManifestGenerator.</p>
    # @!attribute s3_job_manifest_generator
    #   <p>The S3 job ManifestGenerator's configuration details.</p>
    #   @return [Types::S3JobManifestGenerator]
    class JobManifestGenerator < Struct.new(
      :s3_job_manifest_generator,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3JobManifestGenerator < JobManifestGenerator; end
      class Unknown < JobManifestGenerator; end
    end

    # <p>The filter used to describe a set of objects for the job's manifest.</p>
    # @!attribute eligible_for_replication
    #   <p>Include objects in the generated manifest only if they are eligible for replication
    #            according to the Replication configuration on the source bucket.</p>
    #   @return [Boolean]
    # @!attribute created_after
    #   <p>If provided, the generated manifest includes only source bucket objects that were
    #            created after this time.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>If provided, the generated manifest includes only source bucket objects that were
    #            created before this time.</p>
    #   @return [Time]
    # @!attribute object_replication_statuses
    #   <p>If provided, the generated manifest includes only source bucket objects that have one of
    #            the specified Replication statuses.</p>
    #   @return [Array<String>]
    # @!attribute key_name_constraint
    #   <p>If provided, the generated manifest includes only source bucket objects whose object
    #            keys match the string constraints specified for <code>MatchAnyPrefix</code>,
    #               <code>MatchAnySuffix</code>, and <code>MatchAnySubstring</code>.</p>
    #   @return [Types::KeyNameConstraint]
    # @!attribute object_size_greater_than_bytes
    #   <p>If provided, the generated manifest includes only source bucket objects whose file size
    #            is greater than the specified number of bytes.</p>
    #   @return [Integer]
    # @!attribute object_size_less_than_bytes
    #   <p>If provided, the generated manifest includes only source bucket objects whose file size
    #            is less than the specified number of bytes.</p>
    #   @return [Integer]
    # @!attribute match_any_storage_class
    #   <p>If provided, the generated manifest includes only source bucket objects that are stored
    #            with the specified storage class.</p>
    #   @return [Array<String>]
    # @!attribute match_any_object_encryption
    #   <p>If provided, the generated object list includes 
    #            only source bucket objects with the indicated server-side encryption type (SSE-S3, SSE-KMS, DSSE-KMS, SSE-C, or NOT-SSE). 
    #            If you select SSE-KMS or DSSE-KMS, you can optionally further filter your results by specifying a specific KMS Key ARN. 
    #            If you select SSE-KMS, you can also optionally further filter your results by Bucket Key enabled status.</p>
    #   @return [Array<Types::ObjectEncryptionFilter>]
    class JobManifestGeneratorFilter < Struct.new(
      nil,
      :eligible_for_replication,
      :created_after,
      :created_before,
      :object_replication_statuses,
      :key_name_constraint,
      :object_size_greater_than_bytes,
      :object_size_less_than_bytes,
      :match_any_storage_class,
      :match_any_object_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:eligible_for_replication] = nil unless options.key?(:eligible_for_replication)
        options[:object_size_greater_than_bytes] = nil unless options.key?(:object_size_greater_than_bytes)
        options[:object_size_less_than_bytes] = nil unless options.key?(:object_size_less_than_bytes)
        super
      end
    end

    # <p>Contains the information required to locate a manifest object. Manifests can't be
    #          imported from directory buckets. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">Directory
    #             buckets</a>.</p>
    # @!attribute object_arn
    #   <p>The Amazon Resource Name (ARN) for a manifest object.</p>
    #            <important>
    #               <p>When you're using XML requests, you must 
    #   replace special characters (such as carriage returns) in object keys with their equivalent XML entity codes. 
    #   For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML-related object key constraints</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            </important>
    #   @return [String]
    # @!attribute object_version_id
    #   <p>The optional version ID to identify a specific version of the manifest object.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The ETag for the specified manifest object.</p>
    #   @return [String]
    class JobManifestLocation < Struct.new(
      nil,
      :object_arn,
      :object_version_id,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the format of a manifest. If the manifest is in CSV format, also describes the
    #          columns contained within the manifest.</p>
    # @!attribute format
    #   <p>Indicates which of the available formats the specified manifest uses.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>If the specified manifest object is in the <code>S3BatchOperations_CSV_20180820</code>
    #            format, this element describes which columns contain the required data.</p>
    #   @return [Array<String>]
    class JobManifestSpec < Struct.new(
      nil,
      :format,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation that you want this job to perform on every object listed in the manifest.
    #          For more information about the available operations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html">Operations</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    # @!attribute lambda_invoke
    #   <p>Directs the specified job to invoke an Lambda function on every object in the
    #            manifest.</p>
    #   @return [Types::LambdaInvokeOperation]
    # @!attribute s3_put_object_copy
    #   <p>Directs the specified job to run a PUT Copy object call on every object in the
    #            manifest.</p>
    #   @return [Types::S3CopyObjectOperation]
    # @!attribute s3_put_object_acl
    #   <p>Directs the specified job to run a <code>PutObjectAcl</code> call on every object in the
    #            manifest.</p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [Types::S3SetObjectAclOperation]
    # @!attribute s3_put_object_tagging
    #   <p>Directs the specified job to run a PUT Object tagging call on every object in the
    #            manifest.</p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [Types::S3SetObjectTaggingOperation]
    # @!attribute s3_delete_object_tagging
    #   <p>Directs the specified job to execute a DELETE Object tagging call on every object in the
    #            manifest.</p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [Types::S3DeleteObjectTaggingOperation]
    # @!attribute s3_initiate_restore_object
    #   <p>Directs the specified job to initiate restore requests for every archived object in the
    #            manifest.</p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [Types::S3InitiateRestoreObjectOperation]
    # @!attribute s3_put_object_legal_hold
    #   <p>Contains the configuration for an S3 Object Lock legal hold operation that an
    #            S3 Batch Operations job passes
    #            to
    #            every object to the underlying
    #               <code>PutObjectLegalHold</code>
    #            API
    #            operation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-legal-hold.html">Using S3 Object Lock legal hold
    #               with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [Types::S3SetObjectLegalHoldOperation]
    # @!attribute s3_put_object_retention
    #   <p>Contains the configuration parameters for the Object Lock retention action for an
    #            S3 Batch Operations job. Batch Operations passes every object to the underlying
    #               <code>PutObjectRetention</code>
    #            API
    #            operation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html">Using S3 Object Lock retention
    #               with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [Types::S3SetObjectRetentionOperation]
    # @!attribute s3_replicate_object
    #   <p>Directs the specified job to invoke <code>ReplicateObject</code> on every object in the
    #            job's manifest.</p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [Types::S3ReplicateObjectOperation]
    # @!attribute s3_compute_object_checksum
    #   <p>Directs the specified job to compute checksum values for every object in the
    #            manifest.</p>
    #   @return [Types::S3ComputeObjectChecksumOperation]
    class JobOperation < Struct.new(
      nil,
      :lambda_invoke,
      :s3_put_object_copy,
      :s3_put_object_acl,
      :s3_put_object_tagging,
      :s3_delete_object_tagging,
      :s3_initiate_restore_object,
      :s3_put_object_legal_hold,
      :s3_put_object_retention,
      :s3_replicate_object,
      :s3_compute_object_checksum,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the total number of tasks that the specified job has started, the number of
    #          tasks that succeeded, and the number of tasks that failed.</p>
    # @!attribute total_number_of_tasks
    #   <p></p>
    #   @return [Integer]
    # @!attribute number_of_tasks_succeeded
    #   <p></p>
    #   @return [Integer]
    # @!attribute number_of_tasks_failed
    #   <p></p>
    #   @return [Integer]
    # @!attribute timers
    #   <p>The JobTimers attribute of a job's progress summary.</p>
    #   @return [Types::JobTimers]
    class JobProgressSummary < Struct.new(
      nil,
      :total_number_of_tasks,
      :number_of_tasks_succeeded,
      :number_of_tasks_failed,
      :timers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_number_of_tasks] = nil unless options.key?(:total_number_of_tasks)
        options[:number_of_tasks_succeeded] = nil unless options.key?(:number_of_tasks_succeeded)
        options[:number_of_tasks_failed] = nil unless options.key?(:number_of_tasks_failed)
        super
      end
    end

    # <p>Contains the configuration parameters for a job-completion report.</p>
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) for the bucket where specified job-completion report will
    #            be stored.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - Directory buckets
    #               aren't supported as a location for Batch Operations to store job completion reports.</p>
    #            </note>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the specified job-completion report.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Indicates whether the specified job will generate a job-completion report.</p>
    #   @return [Boolean]
    # @!attribute prefix
    #   <p>An optional prefix to describe where in the specified bucket the job-completion report
    #            will be stored. Amazon S3 stores the job-completion report at
    #               <code><prefix>/job-<job-id>/report.json</code>.</p>
    #   @return [String]
    # @!attribute report_scope
    #   <p>Indicates whether the job-completion report will include details of all tasks or only
    #            failed tasks.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>Lists the Amazon Web Services account ID that owns the target bucket, where the completion report is received.</p>
    #   @return [String]
    class JobReport < Struct.new(
      nil,
      :bucket,
      :format,
      :enabled,
      :prefix,
      :report_scope,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class JobStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides timing details for the job.</p>
    # @!attribute elapsed_time_in_active_seconds
    #   <p>Indicates the elapsed time in seconds the job has been in the Active job state.</p>
    #   @return [Integer]
    class JobTimers < Struct.new(
      nil,
      :elapsed_time_in_active_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:elapsed_time_in_active_seconds] = nil unless options.key?(:elapsed_time_in_active_seconds)
        super
      end
    end

    # <p>If provided, the generated manifest includes only source bucket objects whose object
    #          keys match the string constraints specified for <code>MatchAnyPrefix</code>,
    #             <code>MatchAnySuffix</code>, and <code>MatchAnySubstring</code>.</p>
    # @!attribute match_any_prefix
    #   <p>If provided, the generated manifest includes objects where the specified string appears
    #            at the start of the object key string. Each KeyNameConstraint filter accepts an array of
    #            strings with a length of 1 string.</p>
    #   @return [Array<String>]
    # @!attribute match_any_suffix
    #   <p>If provided, the generated manifest includes objects where the specified string appears
    #            at the end of the object key string. Each KeyNameConstraint filter accepts an array of
    #            strings with a length of 1 string.</p>
    #   @return [Array<String>]
    # @!attribute match_any_substring
    #   <p>If provided, the generated manifest includes objects where the specified string appears
    #            anywhere within the object key string. Each KeyNameConstraint filter accepts an array of
    #            strings with a length of 1 string.</p>
    #   @return [Array<String>]
    class KeyNameConstraint < Struct.new(
      nil,
      :match_any_prefix,
      :match_any_suffix,
      :match_any_substring,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration parameters for a <code>Lambda Invoke</code> operation.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) for the Lambda function that the specified job will
    #            invoke on every object in the manifest.</p>
    #   @return [String]
    # @!attribute invocation_schema_version
    #   <p>Specifies the schema version for the payload that Batch Operations sends when invoking
    #            an Lambda function. Version <code>1.0</code> is the default. Version
    #               <code>2.0</code> is required when you use Batch Operations to invoke Lambda functions that act on directory buckets, or if you need to specify
    #               <code>UserArguments</code>. For more information, see <a href="https://aws.amazon.com/blogs/storage/automate-object-processing-in-amazon-s3-directory-buckets-with-s3-batch-operations-and-aws-lambda/">Automate object processing in Amazon S3 directory buckets with S3 Batch Operations and
    #               Lambda</a> in the <i>Amazon Web Services Storage Blog</i>.</p>
    #            <important>
    #               <p>Ensure that your Lambda function code expects
    #                  <code>InvocationSchemaVersion</code>
    #                  <b>2.0</b> and uses bucket name rather than bucket ARN. If the
    #                  <code>InvocationSchemaVersion</code> does not match what your Lambda
    #               function expects, your function might not work as expected.</p>
    #            </important>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - To initiate Amazon Web Services Lambda
    #               function to perform custom actions on objects in directory buckets, you must specify
    #                  <code>2.0</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute user_arguments
    #   <p>Key-value pairs that are passed in the payload that Batch Operations sends when invoking
    #            an Lambda function. You must specify <code>InvocationSchemaVersion</code>
    #               <b>2.0</b> for <code>LambdaInvoke</code> operations that include
    #               <code>UserArguments</code>. For more information, see <a href="https://aws.amazon.com/blogs/storage/automate-object-processing-in-amazon-s3-directory-buckets-with-s3-batch-operations-and-aws-lambda/">Automate object processing in Amazon S3 directory buckets with S3 Batch Operations and
    #               Lambda</a> in the <i>Amazon Web Services Storage Blog</i>.</p>
    #   @return [Hash<String, String>]
    class LambdaInvokeOperation < Struct.new(
      nil,
      :function_arn,
      :invocation_schema_version,
      :user_arguments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the Outposts bucket lifecycle configuration.</p>
    # @!attribute rules
    #   <p>A lifecycle rule for individual objects in an Outposts bucket. </p>
    #   @return [Array<Types::LifecycleRule>]
    class LifecycleConfiguration < Struct.new(
      nil,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container of the Outposts bucket lifecycle expiration.</p>
    # @!attribute date
    #   <p>Indicates at what date the object is to be deleted. Should be in GMT ISO 8601
    #            format.</p>
    #   @return [Time]
    # @!attribute days
    #   <p>Indicates the lifetime, in days, of the objects that are subject to the rule. The value
    #            must be a non-zero positive integer.</p>
    #   @return [Integer]
    # @!attribute expired_object_delete_marker
    #   <p>Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set
    #            to true, the delete marker will be expired. If set to false, the policy takes no action.
    #            This cannot be specified with Days or Date in a Lifecycle Expiration Policy. To learn more
    #            about delete markers, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/DeleteMarker.html">Working with delete
    #            markers</a>.</p>
    #   @return [Boolean]
    class LifecycleExpiration < Struct.new(
      nil,
      :date,
      :days,
      :expired_object_delete_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:days] = 0 unless options.key?(:days)
        options[:expired_object_delete_marker] = false unless options.key?(:expired_object_delete_marker)
        super
      end
    end

    # <p>The container for the Outposts bucket lifecycle rule.</p>
    # @!attribute expiration
    #   <p>Specifies the expiration for the lifecycle of the object in the form of date, days and,
    #            whether the object has a delete marker.</p>
    #   @return [Types::LifecycleExpiration]
    # @!attribute id
    #   <p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>The container for the filter of lifecycle rule.</p>
    #   @return [Types::LifecycleRuleFilter]
    # @!attribute status
    #   <p>If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not
    #            currently being applied.</p>
    #   @return [String]
    # @!attribute transitions
    #   <p>Specifies when an Amazon S3 object transitions to a specified storage class.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Array<Types::Transition>]
    # @!attribute noncurrent_version_transitions
    #   <p> Specifies the transition rule for the lifecycle rule that describes when non-current
    #            objects transition to a specific storage class. If your bucket is versioning-enabled (or
    #            versioning is suspended), you can set this action to request that Amazon S3 transition
    #            noncurrent object versions to a specific storage class at a set period in the object's
    #            lifetime. </p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Array<Types::NoncurrentVersionTransition>]
    # @!attribute noncurrent_version_expiration
    #   <p>The noncurrent version expiration of the lifecycle rule.</p>
    #   @return [Types::NoncurrentVersionExpiration]
    # @!attribute abort_incomplete_multipart_upload
    #   <p>Specifies the days since the initiation of an incomplete multipart upload that Amazon S3
    #            waits before permanently removing all parts of the upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config">
    #               Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration</a> in
    #            the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Types::AbortIncompleteMultipartUpload]
    class LifecycleRule < Struct.new(
      nil,
      :expiration,
      :id,
      :filter,
      :status,
      :transitions,
      :noncurrent_version_transitions,
      :noncurrent_version_expiration,
      :abort_incomplete_multipart_upload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the Outposts bucket lifecycle rule and operator.</p>
    # @!attribute prefix
    #   <p>Prefix identifying one or more objects to which the rule applies.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>All of these tags must exist in the object's tag set in order for the rule to
    #            apply.</p>
    #   @return [Array<Types::S3Tag>]
    # @!attribute object_size_greater_than
    #   <p>The non-inclusive minimum object size for the lifecycle rule. Setting this property to 7
    #            means the rule applies to objects with a size that is greater than 7. </p>
    #   @return [Integer]
    # @!attribute object_size_less_than
    #   <p>The non-inclusive maximum object size for the lifecycle rule. Setting this property to
    #            77 means the rule applies to objects with a size that is less than 77. </p>
    #   @return [Integer]
    class LifecycleRuleAndOperator < Struct.new(
      nil,
      :prefix,
      :tags,
      :object_size_greater_than,
      :object_size_less_than,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:object_size_greater_than] = nil unless options.key?(:object_size_greater_than)
        options[:object_size_less_than] = nil unless options.key?(:object_size_less_than)
        super
      end
    end

    # <p>The container for the filter of the lifecycle rule.</p>
    # @!attribute prefix
    #   <p>Prefix identifying one or more objects to which the rule applies.</p>
    #            <important>
    #               <p>When you're using XML requests, you must 
    #   replace special characters (such as carriage returns) in object keys with their equivalent XML entity codes. 
    #   For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML-related object key constraints</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tag
    #   <p>A container for a key-value name pair.</p>
    #   @return [Types::S3Tag]
    # @!attribute and
    #   <p>The container for the <code>AND</code> condition for the lifecycle rule.</p>
    #   @return [Types::LifecycleRuleAndOperator]
    # @!attribute object_size_greater_than
    #   <p>Minimum object size to which the rule applies.</p>
    #   @return [Integer]
    # @!attribute object_size_less_than
    #   <p>Maximum object size to which the rule applies.</p>
    #   @return [Integer]
    class LifecycleRuleFilter < Struct.new(
      nil,
      :prefix,
      :tag,
      :and,
      :object_size_greater_than,
      :object_size_less_than,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:object_size_greater_than] = nil unless options.key?(:object_size_greater_than)
        options[:object_size_less_than] = nil unless options.key?(:object_size_less_than)
        super
      end
    end

    # <p>Information about the access grant.</p>
    # @!attribute created_at
    #   <p>The date and time when you created the S3 Access Grants instance. </p>
    #   @return [Time]
    # @!attribute access_grant_id
    #   <p>The ID of the access grant. S3 Access Grants auto-generates this ID when you create the access
    #            grant.</p>
    #   @return [String]
    # @!attribute access_grant_arn
    #   <p>The Amazon Resource Name (ARN) of the access grant. </p>
    #   @return [String]
    # @!attribute grantee
    #   <p>The user, group, or role to which you are granting access. You can grant access to an
    #            IAM user or role. If you have added your corporate directory to Amazon Web Services IAM Identity
    #            Center and associated your Identity Center instance with your S3 Access Grants instance, the grantee
    #            can also be a corporate directory user or group.</p>
    #   @return [Types::Grantee]
    # @!attribute permission
    #   <p>The type of access granted to your S3 data, which can be set to one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>READ</code> – Grant read-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WRITE</code> – Grant write-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READWRITE</code> – Grant both read and write access to the S3 data.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute access_grants_location_id
    #   <p>The ID of the registered location to which you are granting access. S3 Access Grants assigns this
    #            ID when you register the location. S3 Access Grants assigns the ID <code>default</code> to the
    #            default location <code>s3://</code> and assigns an auto-generated ID to other locations
    #            that you register. </p>
    #   @return [String]
    # @!attribute access_grants_location_configuration
    #   <p>The configuration options of the grant location. The grant location is the S3 path to
    #            the data to which you are granting access. </p>
    #   @return [Types::AccessGrantsLocationConfiguration]
    # @!attribute grant_scope
    #   <p>The S3 path of the data to which you are granting access. It is the result of appending
    #            the <code>Subprefix</code> to the location scope.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services IAM Identity Center application associated
    #            with your Identity Center instance. If the grant includes an application ARN, the grantee
    #            can only access the S3 data through this application. </p>
    #   @return [String]
    class ListAccessGrantEntry < Struct.new(
      nil,
      :created_at,
      :access_grant_id,
      :access_grant_arn,
      :grantee,
      :permission,
      :access_grants_location_id,
      :access_grants_location_configuration,
      :grant_scope,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the S3 Access Grants instance.</p>
    # @!attribute access_grants_instance_id
    #   <p>The ID of the S3 Access Grants instance. The ID is <code>default</code>. You can have one S3 Access Grants
    #            instance per Region per account. </p>
    #   @return [String]
    # @!attribute access_grants_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 Access Grants instance. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when you created the S3 Access Grants instance. </p>
    #   @return [Time]
    # @!attribute identity_center_arn
    #   <p>If you associated your S3 Access Grants instance with an Amazon Web Services IAM Identity Center instance,
    #            this field returns the Amazon Resource Name (ARN) of the IAM Identity Center instance
    #            application; a subresource of the original Identity Center instance. S3 Access Grants creates this
    #            Identity Center application for the specific S3 Access Grants instance. </p>
    #   @deprecated
    #     IdentityCenterArn has been deprecated. Use IdentityCenterInstanceArn or IdentityCenterApplicationArn.
    #   @return [String]
    # @!attribute identity_center_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services IAM Identity Center instance that you are
    #            associating with your S3 Access Grants instance. An IAM Identity Center instance is your corporate
    #            identity directory that you added to the IAM Identity Center. You can use the <a href="https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ListInstances.html">ListInstances</a> API operation to retrieve a list of your Identity Center
    #            instances and their ARNs.</p>
    #   @return [String]
    # @!attribute identity_center_application_arn
    #   <p>If you associated your S3 Access Grants instance with an Amazon Web Services IAM Identity Center instance,
    #            this field returns the Amazon Resource Name (ARN) of the IAM Identity Center instance
    #            application; a subresource of the original Identity Center instance. S3 Access Grants creates this
    #            Identity Center application for the specific S3 Access Grants instance. </p>
    #   @return [String]
    class ListAccessGrantsInstanceEntry < Struct.new(
      nil,
      :access_grants_instance_id,
      :access_grants_instance_arn,
      :created_at,
      :identity_center_arn,
      :identity_center_instance_arn,
      :identity_center_application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token to request the next page of results. Pass this value into a
    #            subsequent <code>List Access Grants Instances</code> request in order to retrieve the next
    #            page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of access grants that you would like returned in the <code>List
    #               Access Grants</code> response. If the results include the pagination token
    #               <code>NextToken</code>, make another call using the <code>NextToken</code> to determine
    #            if there are more results.</p>
    #   @return [Integer]
    class ListAccessGrantsInstancesRequest < Struct.new(
      nil,
      :account_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to request the next page of results. Pass this value into a
    #            subsequent <code>List Access Grants Instances</code> request in order to retrieve the next
    #            page of results.</p>
    #   @return [String]
    # @!attribute access_grants_instances_list
    #   <p>A container for a list of S3 Access Grants instances.</p>
    #   @return [Array<Types::ListAccessGrantsInstanceEntry>]
    class ListAccessGrantsInstancesResult < Struct.new(
      nil,
      :next_token,
      :access_grants_instances_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for information about the registered location.</p>
    # @!attribute created_at
    #   <p>The date and time when you registered the location. </p>
    #   @return [Time]
    # @!attribute access_grants_location_id
    #   <p>The ID of the registered location to which you are granting access. S3 Access Grants assigns this
    #            ID when you register the location. S3 Access Grants assigns the ID <code>default</code> to the
    #            default location <code>s3://</code> and assigns an auto-generated ID to other locations
    #            that you register. </p>
    #   @return [String]
    # @!attribute access_grants_location_arn
    #   <p>The Amazon Resource Name (ARN) of the registered location. </p>
    #   @return [String]
    # @!attribute location_scope
    #   <p>The S3 path to the location that you are registering. The location scope can be the
    #            default S3 location <code>s3://</code>, the S3 path to a bucket
    #               <code>s3://<bucket></code>, or the S3 path to a bucket and prefix
    #               <code>s3://<bucket>/<prefix></code>. A prefix in S3 is a string of
    #            characters at the beginning of an object key name used to organize the objects that you
    #            store in your S3 buckets. For example, object key names that start with the
    #               <code>engineering/</code> prefix or object key names that start with the
    #               <code>marketing/campaigns/</code> prefix.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for the registered location. S3 Access Grants
    #            assumes this role to manage access to the registered location. </p>
    #   @return [String]
    class ListAccessGrantsLocationsEntry < Struct.new(
      nil,
      :created_at,
      :access_grants_location_id,
      :access_grants_location_arn,
      :location_scope,
      :iam_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token to request the next page of results. Pass this value into a
    #            subsequent <code>List Access Grants Locations</code> request in order to retrieve the next
    #            page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of access grants that you would like returned in the <code>List
    #               Access Grants</code> response. If the results include the pagination token
    #               <code>NextToken</code>, make another call using the <code>NextToken</code> to determine
    #            if there are more results.</p>
    #   @return [Integer]
    # @!attribute location_scope
    #   <p>The S3 path to the location that you are registering. The location scope can be the
    #            default S3 location <code>s3://</code>, the S3 path to a bucket
    #               <code>s3://<bucket></code>, or the S3 path to a bucket and prefix
    #               <code>s3://<bucket>/<prefix></code>. A prefix in S3 is a string of
    #            characters at the beginning of an object key name used to organize the objects that you
    #            store in your S3 buckets. For example, object key names that start with the
    #               <code>engineering/</code> prefix or object key names that start with the
    #               <code>marketing/campaigns/</code> prefix.</p>
    #   @return [String]
    class ListAccessGrantsLocationsRequest < Struct.new(
      nil,
      :account_id,
      :next_token,
      :max_results,
      :location_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to request the next page of results. Pass this value into a
    #            subsequent <code>List Access Grants Locations</code> request in order to retrieve the next
    #            page of results.</p>
    #   @return [String]
    # @!attribute access_grants_locations_list
    #   <p>A container for a list of registered locations in an S3 Access Grants instance.</p>
    #   @return [Array<Types::ListAccessGrantsLocationsEntry>]
    class ListAccessGrantsLocationsResult < Struct.new(
      nil,
      :next_token,
      :access_grants_locations_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token to request the next page of results. Pass this value into a
    #            subsequent <code>List Access Grants</code> request in order to retrieve the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of access grants that you would like returned in the <code>List
    #               Access Grants</code> response. If the results include the pagination token
    #               <code>NextToken</code>, make another call using the <code>NextToken</code> to determine
    #            if there are more results.</p>
    #   @return [Integer]
    # @!attribute grantee_type
    #   <p>The type of the grantee to which access has been granted. It can be one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IAM</code> - An IAM user or role.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DIRECTORY_USER</code> - Your corporate directory user. You can use
    #                  this option if you have added your corporate identity directory to IAM Identity
    #                  Center and associated the IAM Identity Center instance with your S3 Access Grants
    #                  instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DIRECTORY_GROUP</code> - Your corporate directory group. You can use
    #                  this option if you have added your corporate identity directory to IAM Identity
    #                  Center and associated the IAM Identity Center instance with your S3 Access Grants
    #                  instance.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute grantee_identifier
    #   <p>The unique identifer of the <code>Grantee</code>. If the grantee type is
    #               <code>IAM</code>, the identifier is the IAM Amazon Resource Name (ARN) of the user
    #            or role. If the grantee type is a directory user or group, the identifier is 128-bit
    #            universally unique identifier (UUID) in the format
    #               <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>. You can obtain this UUID from your
    #            Amazon Web Services IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute permission
    #   <p>The type of permission granted to your S3 data, which can be set to one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>READ</code> – Grant read-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WRITE</code> – Grant write-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READWRITE</code> – Grant both read and write access to the S3 data.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute grant_scope
    #   <p>The S3 path of the data to which you are granting access. It is the result of appending
    #            the <code>Subprefix</code> to the location scope.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services IAM Identity Center application associated
    #            with your Identity Center instance. If the grant includes an application ARN, the grantee
    #            can only access the S3 data through this application. </p>
    #   @return [String]
    class ListAccessGrantsRequest < Struct.new(
      nil,
      :account_id,
      :next_token,
      :max_results,
      :grantee_type,
      :grantee_identifier,
      :permission,
      :grant_scope,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to request the next page of results. Pass this value into a
    #            subsequent <code>List Access Grants</code> request in order to retrieve the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute access_grants_list
    #   <p>A container for a list of grants in an S3 Access Grants instance.</p>
    #   @return [Array<Types::ListAccessGrantEntry>]
    class ListAccessGrantsResult < Struct.new(
      nil,
      :next_token,
      :access_grants_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that owns the access points.</p>
    #   @return [String]
    # @!attribute directory_bucket
    #   <p>The name of the directory bucket associated with the access points you want to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p> If <code>NextToken</code> is returned, there are more access points available than requested in
    #            the <code>maxResults</code> value. The value of <code>NextToken</code> is a unique
    #            pagination token for each page. Make the call again using the returned token to retrieve
    #            the next page. Keep all other arguments unchanged. Each pagination token expires after 24
    #            hours. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of access points that you would like returned in the
    #               <code>ListAccessPointsForDirectoryBuckets</code> response. If the directory bucket is
    #            associated with more than this number of access points, the results include the pagination token
    #               <code>NextToken</code>. Make another call using the <code>NextToken</code> to retrieve
    #            more results.</p>
    #   @return [Integer]
    class ListAccessPointsForDirectoryBucketsRequest < Struct.new(
      nil,
      :account_id,
      :directory_bucket,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_point_list
    #   <p>Contains identification and configuration information for one or more access points associated
    #            with the directory bucket.</p>
    #   @return [Array<Types::AccessPoint>]
    # @!attribute next_token
    #   <p> If <code>NextToken</code> is returned, there are more access points available than requested in
    #            the <code>maxResults</code> value. The value of <code>NextToken</code> is a unique
    #            pagination token for each page. Make the call again using the returned token to retrieve
    #            the next page. Keep all other arguments unchanged. Each pagination token expires after 24
    #            hours. </p>
    #   @return [String]
    class ListAccessPointsForDirectoryBucketsResult < Struct.new(
      nil,
      :access_point_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the list has more access points than can be returned in one call to this API, this field
    #            contains a continuation token that you can provide in subsequent calls to this API to
    #            retrieve additional access points.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of access points that you want to include in the list. The response may
    #            contain fewer access points but will never contain more. If there are more than this number of
    #            access points, then the response will include a continuation token in the <code>NextToken</code>
    #            field that you can use to retrieve the next page of access points.</p>
    #   @return [Integer]
    class ListAccessPointsForObjectLambdaRequest < Struct.new(
      nil,
      :account_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_lambda_access_point_list
    #   <p>Returns list of Object Lambda Access Points.</p>
    #   @return [Array<Types::ObjectLambdaAccessPoint>]
    # @!attribute next_token
    #   <p>If the list has more access points than can be returned in one call to this API, this field
    #            contains a continuation token that you can provide in subsequent calls to this API to
    #            retrieve additional access points.</p>
    #   @return [String]
    class ListAccessPointsForObjectLambdaResult < Struct.new(
      nil,
      :object_lambda_access_point_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the account that owns the specified access points.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket whose associated access points you want to list.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token. If a previous call to <code>ListAccessPoints</code> returned a
    #            continuation token in the <code>NextToken</code> field, then providing that value here
    #            causes Amazon S3 to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of access points that you want to include in the list. If the specified
    #            bucket has more than this number of access points, then the response will include a continuation
    #            token in the <code>NextToken</code> field that you can use to retrieve the next page of
    #            access points.</p>
    #   @return [Integer]
    # @!attribute data_source_id
    #   <p>The unique identifier for the data source of the access point.</p>
    #   @return [String]
    # @!attribute data_source_type
    #   <p>The type of the data source that the access point is attached to. Returns only access points attached to
    #            S3 buckets by default. To return all access points specify <code>DataSourceType</code> as
    #               <code>ALL</code>.</p>
    #   @return [String]
    class ListAccessPointsRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      :next_token,
      :max_results,
      :data_source_id,
      :data_source_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_point_list
    #   <p>Contains identification and configuration information for one or more access points associated
    #            with the specified bucket.</p>
    #   @return [Array<Types::AccessPoint>]
    # @!attribute next_token
    #   <p>If the specified bucket has more access points than can be returned in one call to this API,
    #            this field contains a continuation token that you can provide in subsequent calls to this
    #            API to retrieve additional access points.</p>
    #   @return [String]
    class ListAccessPointsResult < Struct.new(
      nil,
      :access_point_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Part of <code>ListCallerAccessGrantsResult</code>. Each entry includes the permission
    #          level (READ, WRITE, or READWRITE) and the grant scope of the access grant. If the grant
    #          also includes an application ARN, the grantee can only access the S3 data through this
    #          application.</p>
    # @!attribute permission
    #   <p>The type of permission granted, which can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>READ</code> - Grants read-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WRITE</code> - Grants write-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READWRITE</code> - Grants both read and write access to the S3 data.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute grant_scope
    #   <p>The S3 path of the data to which you have been granted access. </p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services IAM Identity Center application associated
    #            with your Identity Center instance. If the grant includes an application ARN, the grantee
    #            can only access the S3 data through this application. </p>
    #   @return [String]
    class ListCallerAccessGrantsEntry < Struct.new(
      nil,
      :permission,
      :grant_scope,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute grant_scope
    #   <p>The S3 path of the data that you would like to access. Must start with
    #               <code>s3://</code>. You can optionally pass only the beginning characters of a path, and
    #            S3 Access Grants will search for all applicable grants for the path fragment. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token to request the next page of results. Pass this value into a
    #            subsequent <code>List Caller Access Grants</code> request in order to retrieve the next
    #            page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of access grants that you would like returned in the <code>List
    #               Caller Access Grants</code> response. If the results include the pagination token
    #               <code>NextToken</code>, make another call using the <code>NextToken</code> to determine
    #            if there are more results.</p>
    #   @return [Integer]
    # @!attribute allowed_by_application
    #   <p>If this optional parameter is passed in the request, a filter is applied to the results.
    #            The results will include only the access grants for the caller's Identity Center
    #            application or for any other applications (<code>ALL</code>).</p>
    #   @return [Boolean]
    class ListCallerAccessGrantsRequest < Struct.new(
      nil,
      :account_id,
      :grant_scope,
      :next_token,
      :max_results,
      :allowed_by_application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that you can use to request the next page of results. Pass this value
    #            into a subsequent <code>List Caller Access Grants</code> request in order to retrieve the
    #            next page of results.</p>
    #   @return [String]
    # @!attribute caller_access_grants_list
    #   <p>A list of the caller's access grants that were created using S3 Access Grants and that grant the
    #            caller access to the S3 data of the Amazon Web Services account ID that was specified in the request.
    #         </p>
    #   @return [Array<Types::ListCallerAccessGrantsEntry>]
    class ListCallerAccessGrantsResult < Struct.new(
      nil,
      :next_token,
      :caller_access_grants_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #   @return [String]
    # @!attribute job_statuses
    #   <p>The <code>List Jobs</code> request returns jobs that match the statuses listed in this
    #            element.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A pagination token to request the next page of results. Use the token that Amazon S3 returned
    #            in the <code>NextToken</code> element of the <code>ListJobsResult</code> from the previous
    #               <code>List Jobs</code> request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of jobs that Amazon S3 will include in the <code>List Jobs</code>
    #            response. If there are more jobs than this number, the response will include a pagination
    #            token in the <code>NextToken</code> field to enable you to retrieve the next page of
    #            results.</p>
    #   @return [Integer]
    class ListJobsRequest < Struct.new(
      nil,
      :account_id,
      :job_statuses,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the <code>List Jobs</code> request produced more than the maximum number of results,
    #            you can pass this value into a subsequent <code>List Jobs</code> request in order to
    #            retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute jobs
    #   <p>The list of current jobs and jobs that have ended within the last 30 days.</p>
    #   @return [Array<Types::JobListDescriptor>]
    class ListJobsResult < Struct.new(
      nil,
      :next_token,
      :jobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Not currently used. Do not use this parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Not currently used. Do not use this parameter.</p>
    #   @return [Integer]
    class ListMultiRegionAccessPointsRequest < Struct.new(
      nil,
      :account_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_points
    #   <p>The list of Multi-Region Access Points associated with the user.</p>
    #   @return [Array<Types::MultiRegionAccessPointReport>]
    # @!attribute next_token
    #   <p>If the specified bucket has more Multi-Region Access Points than can be returned in one call to this
    #            action, this field contains a continuation token. You can use this token tin subsequent
    #            calls to this action to retrieve additional Multi-Region Access Points.</p>
    #   @return [String]
    class ListMultiRegionAccessPointsResult < Struct.new(
      nil,
      :access_points,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p></p>
    #   @return [String]
    # @!attribute max_results
    #   <p></p>
    #   @return [Integer]
    # @!attribute outpost_id
    #   <p>The ID of the Outposts resource.</p>
    #            <note>
    #               <p>This ID is required by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [String]
    class ListRegionalBucketsRequest < Struct.new(
      nil,
      :account_id,
      :next_token,
      :max_results,
      :outpost_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute regional_bucket_list
    #   <p></p>
    #   @return [Array<Types::RegionalBucket>]
    # @!attribute next_token
    #   <p>
    #               <code>NextToken</code> is sent when <code>isTruncated</code> is true, which means there
    #            are more buckets that can be listed. The next list requests to Amazon S3 can be continued with
    #            this <code>NextToken</code>. <code>NextToken</code> is obfuscated and is not a real
    #            key.</p>
    #   @return [String]
    class ListRegionalBucketsResult < Struct.new(
      nil,
      :regional_bucket_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Part of <code>ListStorageLensConfigurationResult</code>. Each entry includes the
    #          description of the S3 Storage Lens configuration, its home Region, whether it is enabled, its
    #          Amazon Resource Name (ARN), and config ID.</p>
    # @!attribute id
    #   <p>A container for the S3 Storage Lens configuration ID.</p>
    #   @return [String]
    # @!attribute storage_lens_arn
    #   <p>The ARN of the S3 Storage Lens configuration. This property is read-only.</p>
    #   @return [String]
    # @!attribute home_region
    #   <p>A container for the S3 Storage Lens home Region. Your metrics data is stored and retained in
    #            your designated S3 Storage Lens home Region.</p>
    #   @return [String]
    # @!attribute is_enabled
    #   <p>A container for whether the S3 Storage Lens configuration is enabled. This property is
    #            required.</p>
    #   @return [Boolean]
    class ListStorageLensConfigurationEntry < Struct.new(
      nil,
      :id,
      :storage_lens_arn,
      :home_region,
      :is_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_enabled] = false unless options.key?(:is_enabled)
        super
      end
    end

    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token to request the next page of results.</p>
    #   @return [String]
    class ListStorageLensConfigurationsRequest < Struct.new(
      nil,
      :account_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the request produced more than the maximum number of S3 Storage Lens configuration results,
    #            you can pass this value into a subsequent request to retrieve the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute storage_lens_configuration_list
    #   <p>A list of S3 Storage Lens configurations.</p>
    #   @return [Array<Types::ListStorageLensConfigurationEntry>]
    class ListStorageLensConfigurationsResult < Struct.new(
      nil,
      :next_token,
      :storage_lens_configuration_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    # Each entry contains a Storage Lens group that exists in the specified home Region.
    # </p>
    # @!attribute name
    #   <p>
    #   Contains the name of the Storage Lens group that exists in the specified home Region.
    #   </p>
    #   @return [String]
    # @!attribute storage_lens_group_arn
    #   <p>
    #   Contains the Amazon Resource Name (ARN) of the Storage Lens group. This property is read-only.
    #   </p>
    #   @return [String]
    # @!attribute home_region
    #   <p>
    #   Contains the Amazon Web Services Region where the Storage Lens group was created.
    #   </p>
    #   @return [String]
    class ListStorageLensGroupEntry < Struct.new(
      nil,
      :name,
      :storage_lens_group_arn,
      :home_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>
    #      The Amazon Web Services account ID that owns the Storage Lens groups.
    #   </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> if there are no more results.
    #      </p>
    #   @return [String]
    class ListStorageLensGroupsRequest < Struct.new(
      nil,
      :account_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #      If <code>NextToken</code> is returned, there are more Storage Lens groups results available. The value of <code>NextToken</code> is a
    #         unique pagination token for each page. Make the call again using the returned token to
    #         retrieve the next page. Keep all other arguments unchanged. Each pagination token expires
    #         after 24 hours.
    #   </p>
    #   @return [String]
    # @!attribute storage_lens_group_list
    #   <p>
    #   The list of Storage Lens groups that exist in the specified home Region.
    #   </p>
    #   @return [Array<Types::ListStorageLensGroupEntry>]
    class ListStorageLensGroupsResult < Struct.new(
      nil,
      :next_token,
      :storage_lens_group_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p> The Amazon Web Services account ID of the resource owner. </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the S3 resource that you want to list tags for. The
    #            tagged resource can be a directory bucket, S3 Storage Lens group or S3 Access Grants instance,
    #            registered location, or grant. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :account_id,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> The Amazon Web Services resource tags that are associated with the resource. </p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResult < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #    A filter condition that specifies the object age range of included objects in days. Only integers are supported.
    # </p>
    # @!attribute days_greater_than
    #   <p>
    #   Specifies the maximum object age in days. Must be a positive whole number, greater than the minimum object age and less than or equal to 2,147,483,647. 
    #   </p>
    #   @return [Integer]
    # @!attribute days_less_than
    #   <p>
    #   Specifies the minimum object age in days. The value must be a positive whole number, greater than 0 and less than or equal to 2,147,483,647.
    #   </p>
    #   @return [Integer]
    class MatchObjectAge < Struct.new(
      nil,
      :days_greater_than,
      :days_less_than,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:days_greater_than] = 0 unless options.key?(:days_greater_than)
        options[:days_less_than] = 0 unless options.key?(:days_less_than)
        super
      end
    end

    # <p>
    # A filter condition that specifies the object size range of included objects in bytes. Only integers are supported.
    # </p>
    # @!attribute bytes_greater_than
    #   <p>
    #   Specifies the minimum object size in Bytes. The value must be a positive number, greater than 0 and less than 5 TB.
    #   </p>
    #   @return [Integer]
    # @!attribute bytes_less_than
    #   <p>
    #   Specifies the maximum object size in Bytes. The value must be a positive number, greater than the minimum object size and less than 5 TB.
    #   </p>
    #   @return [Integer]
    class MatchObjectSize < Struct.new(
      nil,
      :bytes_greater_than,
      :bytes_less_than,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bytes_greater_than] = 0 unless options.key?(:bytes_greater_than)
        options[:bytes_less_than] = 0 unless options.key?(:bytes_less_than)
        super
      end
    end

    # <p>A container that specifies replication metrics-related settings.</p>
    # @!attribute status
    #   <p>Specifies whether replication metrics are enabled. </p>
    #   @return [String]
    # @!attribute event_threshold
    #   <p>A container that specifies the time threshold for emitting the
    #               <code>s3:Replication:OperationMissedThreshold</code> event. </p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Types::ReplicationTimeValue]
    class Metrics < Struct.new(
      nil,
      :status,
      :event_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Multi-Region Access Point access control policy.</p>
    #          <p>When you update the policy, the update is first listed as the proposed policy. After the
    #          update is finished and all Regions have been updated, the proposed policy is listed as the
    #          established policy. If both policies have the same version number, the proposed policy is
    #          the established policy.</p>
    # @!attribute established
    #   <p>The last established policy for the Multi-Region Access Point.</p>
    #   @return [Types::EstablishedMultiRegionAccessPointPolicy]
    # @!attribute proposed
    #   <p>The proposed policy for the Multi-Region Access Point.</p>
    #   @return [Types::ProposedMultiRegionAccessPointPolicy]
    class MultiRegionAccessPointPolicyDocument < Struct.new(
      nil,
      :established,
      :proposed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Status information for a single Multi-Region Access Point Region.</p>
    # @!attribute name
    #   <p>The name of the Region in the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute request_status
    #   <p>The current status of the Multi-Region Access Point in this Region.</p>
    #   @return [String]
    class MultiRegionAccessPointRegionalResponse < Struct.new(
      nil,
      :name,
      :request_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of statuses for a Multi-Region Access Point in the various Regions it supports.</p>
    # @!attribute name
    #   <p>The name of the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias for the Multi-Region Access Point. For more information about the distinction between the name
    #            and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming">Rules for naming Amazon S3 Multi-Region Access Points</a>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>When the Multi-Region Access Point create request was received.</p>
    #   @return [Time]
    # @!attribute public_access_block
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #            account. You can enable the configuration options in any combination. For more information
    #            about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>This data type is not supported for Amazon S3 on Outposts.</p>
    #   @return [Types::PublicAccessBlockConfiguration]
    # @!attribute status
    #   <p>The current status of the Multi-Region Access Point.</p>
    #            <p>
    #               <code>CREATING</code> and <code>DELETING</code> are temporary states that exist while
    #            the request is propagating and being completed. If a Multi-Region Access Point has a status of
    #               <code>PARTIALLY_CREATED</code>, you can retry creation or send a request to delete the
    #            Multi-Region Access Point. If a Multi-Region Access Point has a status of <code>PARTIALLY_DELETED</code>, you can retry a delete
    #            request to finish the deletion of the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>A collection of the Regions and buckets associated with the Multi-Region Access Point.</p>
    #   @return [Array<Types::RegionReport>]
    class MultiRegionAccessPointReport < Struct.new(
      nil,
      :name,
      :alias,
      :created_at,
      :public_access_block,
      :status,
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure for a Multi-Region Access Point that indicates where Amazon S3 traffic can be routed. Routes can be
    #          either active or passive. Active routes can process Amazon S3 requests through the Multi-Region Access Point, but
    #          passive routes are not eligible to process Amazon S3 requests. </p>
    #          <p>Each route contains the Amazon S3 bucket name and the Amazon Web Services Region that the bucket is located
    #          in. The route also includes the <code>TrafficDialPercentage</code> value, which shows
    #          whether the bucket and Region are active (indicated by a value of <code>100</code>) or
    #          passive (indicated by a value of <code>0</code>).</p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket for which you'll submit a routing configuration change.
    #            Either the <code>Bucket</code> or the <code>Region</code> value must be provided. If both
    #            are provided, the bucket must be in the specified Region.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region to which you'll be submitting a routing configuration change. Either
    #            the <code>Bucket</code> or the <code>Region</code> value must be provided. If both are
    #            provided, the bucket must be in the specified Region.</p>
    #   @return [String]
    # @!attribute traffic_dial_percentage
    #   <p>The traffic state for the specified bucket or Amazon Web Services Region. </p>
    #            <p>A value of <code>0</code> indicates a passive state, which means that no new traffic
    #            will be routed to the Region. </p>
    #            <p>A value of <code>100</code> indicates an active state, which means that traffic will be
    #            routed to the specified Region. </p>
    #            <p>When the routing configuration for a Region is changed from active to passive, any
    #            in-progress operations (uploads, copies, deletes, and so on) to the formerly active Region
    #            will continue to run to until a final success or failure status is reached.</p>
    #            <p>If all Regions in the routing configuration are designated as passive, you'll receive an
    #               <code>InvalidRequest</code> error.</p>
    #   @return [Integer]
    class MultiRegionAccessPointRoute < Struct.new(
      nil,
      :bucket,
      :region,
      :traffic_dial_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Multi-Region Access Point details that are returned when querying about an asynchronous request.</p>
    # @!attribute regions
    #   <p>A collection of status information for the different Regions that a Multi-Region Access Point
    #            supports.</p>
    #   @return [Array<Types::MultiRegionAccessPointRegionalResponse>]
    class MultiRegionAccessPointsAsyncResponse < Struct.new(
      nil,
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon S3 throws this exception if you make a <code>GetPublicAccessBlock</code> request
    #          against an account that doesn't have a <code>PublicAccessBlockConfiguration</code>
    #          set.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchPublicAccessBlockConfiguration < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container of the noncurrent version expiration.</p>
    # @!attribute noncurrent_days
    #   <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
    #            associated action. For information about the noncurrent days calculations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations">How
    #               Amazon S3 Calculates When an Object Became Noncurrent</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute newer_noncurrent_versions
    #   <p>Specifies how many noncurrent versions S3 on Outposts will retain. If there are this many
    #            more recent noncurrent versions, S3 on Outposts will take the associated action. For more
    #            information about noncurrent versions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html">Lifecycle configuration
    #               elements</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    class NoncurrentVersionExpiration < Struct.new(
      nil,
      :noncurrent_days,
      :newer_noncurrent_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:noncurrent_days] = 0 unless options.key?(:noncurrent_days)
        options[:newer_noncurrent_versions] = nil unless options.key?(:newer_noncurrent_versions)
        super
      end
    end

    # <p>The container for the noncurrent version transition.</p>
    # @!attribute noncurrent_days
    #   <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
    #            associated action. For information about the noncurrent days calculations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations"> How
    #               Amazon S3 Calculates How Long an Object Has Been Noncurrent</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #   @return [String]
    class NoncurrentVersionTransition < Struct.new(
      nil,
      :noncurrent_days,
      :storage_class,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:noncurrent_days] = 0 unless options.key?(:noncurrent_days)
        super
      end
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that returns objects that aren't server-side encrypted.</p>
    class NotSSEFilter < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An optional filter for the 
    #          <code>S3JobManifestGenerator</code> that identifies the subset of objects by encryption type. 
    #          This filter is used to create an object list for S3 Batch Operations jobs. If provided, this filter will generate an object list 
    #          that only includes objects with the specified encryption type.</p>
    # @!attribute sses3
    #   <p>Filters for objects that are encrypted by server-side encryption with Amazon S3 managed keys (SSE-S3).</p>
    #   @return [Types::SSES3Filter]
    # @!attribute ssekms
    #   <p>Filters for objects that are encrypted by server-side encryption with Amazon Web Services Key Management Service (KMS) keys (SSE-KMS).</p>
    #   @return [Types::SSEKMSFilter]
    # @!attribute dssekms
    #   <p>Filters for objects that are encrypted by dual-layer server-side encryption with Amazon Web Services Key Management
    #            Service (KMS) keys (DSSE-KMS).</p>
    #   @return [Types::DSSEKMSFilter]
    # @!attribute ssec
    #   <p>Filters for objects that are encrypted by server-side encryption with customer-provided keys (SSE-C).</p>
    #   @return [Types::SSECFilter]
    # @!attribute notsse
    #   <p>Filters for objects that are not encrypted by server-side encryption. </p>
    #   @return [Types::NotSSEFilter]
    class ObjectEncryptionFilter < Struct.new(
      :sses3,
      :ssekms,
      :dssekms,
      :ssec,
      :notsse,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SSES3 < ObjectEncryptionFilter; end
      class SSEKMS < ObjectEncryptionFilter; end
      class DSSEKMS < ObjectEncryptionFilter; end
      class SSEC < ObjectEncryptionFilter; end
      class NOTSSE < ObjectEncryptionFilter; end
      class Unknown < ObjectEncryptionFilter; end
    end

    # <p>An access point with an attached Lambda function used to access transformed data from an Amazon S3
    #          bucket.</p>
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute object_lambda_access_point_arn
    #   <p>Specifies the ARN for the Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias of the Object Lambda Access Point.</p>
    #   @return [Types::ObjectLambdaAccessPointAlias]
    class ObjectLambdaAccessPoint < Struct.new(
      nil,
      :name,
      :object_lambda_access_point_arn,
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The alias of an Object Lambda Access Point. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-use.html#ol-access-points-alias">How to use a
    #             bucket-style alias for your S3 bucket Object Lambda Access Point</a>.</p>
    # @!attribute value
    #   <p>The alias value of the Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Object Lambda Access Point alias. If the status is <code>PROVISIONING</code>, the Object Lambda Access Point
    #            is provisioning the alias and the alias is not ready for use yet. If the status is
    #               <code>READY</code>, the Object Lambda Access Point alias is successfully provisioned and ready for
    #            use.</p>
    #   @return [String]
    class ObjectLambdaAccessPointAlias < Struct.new(
      nil,
      :value,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration used when creating an Object Lambda Access Point.</p>
    # @!attribute supporting_access_point
    #   <p>Standard access point associated with the Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute cloud_watch_metrics_enabled
    #   <p>A container for whether the CloudWatch metrics configuration is enabled.</p>
    #   @return [Boolean]
    # @!attribute allowed_features
    #   <p>A container for allowed features. Valid inputs are <code>GetObject-Range</code>,
    #               <code>GetObject-PartNumber</code>, <code>HeadObject-Range</code>, and
    #               <code>HeadObject-PartNumber</code>.</p>
    #   @return [Array<String>]
    # @!attribute transformation_configurations
    #   <p>A container for transformation configurations for an Object Lambda Access Point.</p>
    #   @return [Array<Types::ObjectLambdaTransformationConfiguration>]
    class ObjectLambdaConfiguration < Struct.new(
      nil,
      :supporting_access_point,
      :cloud_watch_metrics_enabled,
      :allowed_features,
      :transformation_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cloud_watch_metrics_enabled] = false unless options.key?(:cloud_watch_metrics_enabled)
        super
      end
    end

    # <p>A container for AwsLambdaTransformation.</p>
    # @!attribute aws_lambda
    #   <p>A container for an Lambda function.</p>
    #   @return [Types::AwsLambdaTransformation]
    class ObjectLambdaContentTransformation < Struct.new(
      :aws_lambda,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AwsLambda < ObjectLambdaContentTransformation; end
      class Unknown < ObjectLambdaContentTransformation; end
    end

    # <p>A configuration used when creating an Object Lambda Access Point transformation.</p>
    # @!attribute actions
    #   <p>A container for the action of an Object Lambda Access Point configuration. Valid inputs are
    #               <code>GetObject</code>, <code>ListObjects</code>, <code>HeadObject</code>, and
    #               <code>ListObjectsV2</code>.</p>
    #   @return [Array<String>]
    # @!attribute content_transformation
    #   <p>A container for the content transformation of an Object Lambda Access Point configuration.</p>
    #   @return [Types::ObjectLambdaContentTransformation]
    class ObjectLambdaTransformationConfiguration < Struct.new(
      nil,
      :actions,
      :content_transformation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates whether this access point policy is public. For more information about how Amazon S3
    #          evaluates policies to determine whether they are public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>. </p>
    # @!attribute is_public
    #   <p></p>
    #   @return [Boolean]
    class PolicyStatus < Struct.new(
      nil,
      :is_public,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_public] = false unless options.key?(:is_public)
        super
      end
    end

    # <p>A container for the prefix-level configuration.</p>
    # @!attribute storage_metrics
    #   <p>A container for the prefix-level storage metrics for S3 Storage Lens.</p>
    #   @return [Types::PrefixLevelStorageMetrics]
    class PrefixLevel < Struct.new(
      nil,
      :storage_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the prefix-level storage metrics for S3 Storage Lens.</p>
    # @!attribute is_enabled
    #   <p>A container for whether prefix-level storage metrics are enabled.</p>
    #   @return [Boolean]
    # @!attribute selection_criteria
    #   <p></p>
    #   @return [Types::SelectionCriteria]
    class PrefixLevelStorageMetrics < Struct.new(
      nil,
      :is_enabled,
      :selection_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_enabled] = false unless options.key?(:is_enabled)
        super
      end
    end

    # <p>The proposed access control policy for the Multi-Region Access Point.</p>
    #          <p>When you update the policy, the update is first listed as the proposed policy. After the
    #          update is finished and all Regions have been updated, the proposed policy is listed as the
    #          established policy. If both policies have the same version number, the proposed policy is
    #          the established policy.</p>
    # @!attribute policy
    #   <p>The details of the proposed policy.</p>
    #   @return [String]
    class ProposedMultiRegionAccessPointPolicy < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #          account. You can enable the configuration options in any combination. For more information
    #          about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This data type is not supported for Amazon S3 on Outposts.</p>
    # @!attribute block_public_acls
    #   <p>Specifies whether Amazon S3 should block public access control lists (ACLs) for buckets in
    #            this account. Setting this element to <code>TRUE</code> causes the following
    #            behavior:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PutBucketAcl</code> and <code>PutObjectAcl</code> calls fail if the
    #                  specified ACL is public.</p>
    #               </li>
    #               <li>
    #                  <p>PUT Object calls fail if the request includes a public ACL.</p>
    #               </li>
    #               <li>
    #                  <p>PUT Bucket calls fail if the request includes a public ACL.</p>
    #               </li>
    #            </ul>
    #            <p>Enabling this setting doesn't affect existing policies or ACLs.</p>
    #            <p>This property is not supported for Amazon S3 on Outposts.</p>
    #   @return [Boolean]
    # @!attribute ignore_public_acls
    #   <p>Specifies whether Amazon S3 should ignore public ACLs for buckets in this account. Setting
    #            this element to <code>TRUE</code> causes Amazon S3 to ignore all public ACLs on buckets in this
    #            account and any objects that they contain. </p>
    #            <p>Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't
    #            prevent new public ACLs from being set.</p>
    #            <p>This property is not supported for Amazon S3 on Outposts.</p>
    #   @return [Boolean]
    # @!attribute block_public_policy
    #   <p>Specifies whether Amazon S3 should block public bucket policies for buckets in this account.
    #            Setting this element to <code>TRUE</code> causes Amazon S3 to reject calls to PUT Bucket policy
    #            if the specified bucket policy allows public access. </p>
    #            <p>Enabling this setting doesn't affect existing bucket policies.</p>
    #            <p>This property is not supported for Amazon S3 on Outposts.</p>
    #   @return [Boolean]
    # @!attribute restrict_public_buckets
    #   <p>Specifies whether Amazon S3 should restrict public bucket policies for buckets in this
    #            account. Setting this element to <code>TRUE</code> restricts access to buckets with public
    #            policies to only Amazon Web Services service principals and authorized users within this
    #            account.</p>
    #            <p>Enabling this setting doesn't affect previously stored bucket policies, except that
    #            public and cross-account access within any public bucket policy, including non-public
    #            delegation to specific accounts, is blocked.</p>
    #            <p>This property is not supported for Amazon S3 on Outposts.</p>
    #   @return [Boolean]
    class PublicAccessBlockConfiguration < Struct.new(
      nil,
      :block_public_acls,
      :ignore_public_acls,
      :block_public_policy,
      :restrict_public_buckets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:block_public_acls] = false unless options.key?(:block_public_acls)
        options[:ignore_public_acls] = false unless options.key?(:ignore_public_acls)
        options[:block_public_policy] = false unless options.key?(:block_public_policy)
        options[:restrict_public_buckets] = false unless options.key?(:restrict_public_buckets)
        super
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource policy of the S3 Access Grants instance that you are updating.</p>
    #   @return [String]
    # @!attribute organization
    #   <p>The Organization of the resource policy of the S3 Access Grants instance.</p>
    #   @return [String]
    class PutAccessGrantsInstanceResourcePolicyRequest < Struct.new(
      nil,
      :account_id,
      :policy,
      :organization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The updated resource policy of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute organization
    #   <p>The Organization of the resource policy of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when you created the S3 Access Grants instance resource policy. </p>
    #   @return [Time]
    class PutAccessGrantsInstanceResourcePolicyResult < Struct.new(
      nil,
      :policy,
      :organization,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Object Lambda Access Point configuration document.</p>
    #   @return [Types::ObjectLambdaConfiguration]
    class PutAccessPointConfigurationForObjectLambdaRequest < Struct.new(
      nil,
      :account_id,
      :name,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>Object Lambda Access Point resource policy document.</p>
    #   @return [String]
    class PutAccessPointPolicyForObjectLambdaRequest < Struct.new(
      nil,
      :account_id,
      :name,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for owner of the bucket associated with the specified access point.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access point that you want to associate with the specified policy.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy that you want to apply to the specified access point. For more information about access point
    #            policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">Managing data access with Amazon S3
    #               access points</a> or <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets.html">Managing access to
    #               shared datasets in directory buckets with access points</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class PutAccessPointPolicyRequest < Struct.new(
      nil,
      :account_id,
      :name,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p> The Amazon Web Services account ID that owns the access point with scope that you want to create or replace.
    #         </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access point with the scope that you want to create or replace.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Object prefixes, API operations, or a combination of both.</p>
    #   @return [Types::Scope]
    class PutAccessPointScopeRequest < Struct.new(
      nil,
      :account_id,
      :name,
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket for which to set the configuration.</p>
    #   @return [String]
    # @!attribute lifecycle_configuration
    #   <p>Container for lifecycle rules. You can add as many as 1,000 rules.</p>
    #   @return [Types::LifecycleConfiguration]
    class PutBucketLifecycleConfigurationRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      :lifecycle_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    # @!attribute confirm_remove_self_bucket_access
    #   <p>Set this parameter to true to confirm that you want to remove your permissions to change
    #            this bucket policy in the future.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute policy
    #   <p>The bucket policy as a JSON document.</p>
    #   @return [String]
    class PutBucketPolicyRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      :confirm_remove_self_bucket_access,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>Specifies the S3 on Outposts bucket to set the configuration for.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    # @!attribute replication_configuration
    #   <p></p>
    #   @return [Types::ReplicationConfiguration]
    class PutBucketReplicationRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      :replication_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #   @return [String]
    # @!attribute tagging
    #   <p></p>
    #   @return [Types::Tagging]
    class PutBucketTaggingRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      :tagging,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 on Outposts bucket.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The S3 on Outposts bucket to set the versioning state for.</p>
    #   @return [String]
    # @!attribute mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value
    #            that is displayed on your authentication device.</p>
    #   @return [String]
    # @!attribute versioning_configuration
    #   <p>The root-level tag for the <code>VersioningConfiguration</code> parameters.</p>
    #   @return [Types::VersioningConfiguration]
    class PutBucketVersioningRequest < Struct.new(
      nil,
      :account_id,
      :bucket,
      :mfa,
      :versioning_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to replace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The set of tags to associate with the S3 Batch Operations job.</p>
    #   @return [Array<Types::S3Tag>]
    class PutJobTaggingRequest < Struct.new(
      nil,
      :account_id,
      :job_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutJobTaggingResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the information associated with a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPoint.html">PutMultiRegionAccessPoint</a> request.</p>
    # @!attribute name
    #   <p>The name of the Multi-Region Access Point associated with the request.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy details for the <code>PutMultiRegionAccessPoint</code> request.</p>
    #   @return [String]
    class PutMultiRegionAccessPointPolicyInput < Struct.new(
      nil,
      :name,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    #   @return [String]
    # @!attribute details
    #   <p>A container element containing the details of the policy for the Multi-Region Access Point.</p>
    #   @return [Types::PutMultiRegionAccessPointPolicyInput]
    class PutMultiRegionAccessPointPolicyRequest < Struct.new(
      nil,
      :account_id,
      :client_token,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_token_arn
    #   <p>The request token associated with the request. You can use this token with <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a> to determine the status of asynchronous
    #            requests.</p>
    #   @return [String]
    class PutMultiRegionAccessPointPolicyResult < Struct.new(
      nil,
      :request_token_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to the specified
    #            Amazon Web Services account.</p>
    #   @return [Types::PublicAccessBlockConfiguration]
    # @!attribute account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to set.</p>
    #   @return [String]
    class PutPublicAccessBlockRequest < Struct.new(
      nil,
      :public_access_block_configuration,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #   @return [String]
    # @!attribute storage_lens_configuration
    #   <p>The S3 Storage Lens configuration.</p>
    #   @return [Types::StorageLensConfiguration]
    # @!attribute tags
    #   <p>The tag set of the S3 Storage Lens configuration.</p>
    #            <note>
    #               <p>You can set up to a maximum of 50 tags.</p>
    #            </note>
    #   @return [Array<Types::StorageLensTag>]
    class PutStorageLensConfigurationRequest < Struct.new(
      nil,
      :config_id,
      :account_id,
      :storage_lens_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag set of the S3 Storage Lens configuration.</p>
    #            <note>
    #               <p>You can set up to a maximum of 50 tags.</p>
    #            </note>
    #   @return [Array<Types::StorageLensTag>]
    class PutStorageLensConfigurationTaggingRequest < Struct.new(
      nil,
      :config_id,
      :account_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutStorageLensConfigurationTaggingResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Region that supports a Multi-Region Access Point as well as the associated bucket for the Region.</p>
    # @!attribute bucket
    #   <p>The name of the associated bucket for the Region.</p>
    #   @return [String]
    # @!attribute bucket_account_id
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket that's associated with this
    #            Multi-Region Access Point.</p>
    #   @return [String]
    class Region < Struct.new(
      nil,
      :bucket,
      :bucket_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A combination of a bucket and Region that's part of a Multi-Region Access Point.</p>
    # @!attribute bucket
    #   <p>The name of the bucket.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The name of the Region.</p>
    #   @return [String]
    # @!attribute bucket_account_id
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket that's associated with this
    #            Multi-Region Access Point.</p>
    #   @return [String]
    class RegionReport < Struct.new(
      nil,
      :bucket,
      :region,
      :bucket_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the regional bucket.</p>
    # @!attribute bucket
    #   <p></p>
    #   @return [String]
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) for the regional bucket.</p>
    #   @return [String]
    # @!attribute public_access_block_enabled
    #   <p></p>
    #   @return [Boolean]
    # @!attribute creation_date
    #   <p>The creation date of the regional bucket</p>
    #   @return [Time]
    # @!attribute outpost_id
    #   <p>The Outposts ID of the regional bucket.</p>
    #   @return [String]
    class RegionalBucket < Struct.new(
      nil,
      :bucket,
      :bucket_arn,
      :public_access_block_enabled,
      :creation_date,
      :outpost_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:public_access_block_enabled] = false unless options.key?(:public_access_block_enabled)
        super
      end
    end

    # <p>A filter that you can use to specify whether replica modification sync is enabled.
    #          S3 on Outposts replica modification sync can help you keep object metadata synchronized
    #          between replicas and source objects. By default, S3 on Outposts replicates metadata from the
    #          source objects to the replicas only. When replica modification sync is enabled,
    #          S3 on Outposts replicates metadata changes made to the replica copies back to the source
    #          object, making the replication bidirectional.</p>
    #          <p>To replicate object metadata modifications on replicas, you can specify this element and
    #          set the <code>Status</code> of this element to <code>Enabled</code>.</p>
    #          <note>
    #             <p>You must enable replica modification sync on the source and destination buckets to
    #             replicate replica metadata changes between the source and the replicas.</p>
    #          </note>
    # @!attribute status
    #   <p>Specifies whether S3 on Outposts replicates modifications to object metadata on
    #            replicas.</p>
    #   @return [String]
    class ReplicaModifications < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for one or more replication rules. A replication configuration must have at
    #          least one rule and you can add up to 100 rules. The maximum size of a replication
    #          configuration is 128 KB.</p>
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that S3 on Outposts assumes
    #            when replicating objects. For information about S3 replication on Outposts configuration,
    #            see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-how-setup.html">Setting up
    #               replication</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>A container for one or more replication rules. A replication configuration must have at
    #            least one rule and can contain an array of 100 rules at the most. </p>
    #   @return [Array<Types::ReplicationRule>]
    class ReplicationConfiguration < Struct.new(
      nil,
      :role,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies which S3 on Outposts objects to replicate and where to store the
    #          replicas.</p>
    # @!attribute id
    #   <p>A unique identifier for the rule. The maximum value is 255 characters.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority indicates which rule has precedence whenever two or more replication rules
    #            conflict. S3 on Outposts attempts to replicate objects according to all replication rules.
    #            However, if there are two or more rules with the same destination Outposts bucket, then
    #            objects will be replicated according to the rule with the highest priority. The higher the
    #            number, the higher the priority. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication-between-outposts.html">Creating replication
    #               rules on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the object or objects to which the rule
    #            applies. The maximum prefix length is 1,024 characters. To include all objects in an
    #            Outposts bucket, specify an empty string.</p>
    #            <important>
    #               <p>When you're using XML requests, you must 
    #   replace special characters (such as carriage returns) in object keys with their equivalent XML entity codes. 
    #   For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML-related object key constraints</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            </important>
    #   @deprecated
    #     Prefix has been deprecated
    #   @return [String]
    # @!attribute filter
    #   <p>A filter that identifies the subset of objects to which the replication rule applies. A
    #               <code>Filter</code> element must specify exactly one <code>Prefix</code>,
    #               <code>Tag</code>, or <code>And</code> child element.</p>
    #   @return [Types::ReplicationRuleFilter]
    # @!attribute status
    #   <p>Specifies whether the rule is enabled.</p>
    #   @return [String]
    # @!attribute source_selection_criteria
    #   <p>A container that describes additional filters for identifying the source Outposts
    #            objects that you want to replicate. You can choose to enable or disable the replication of
    #            these objects.</p>
    #   @return [Types::SourceSelectionCriteria]
    # @!attribute existing_object_replication
    #   <p>An optional configuration to replicate existing source bucket objects. </p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Types::ExistingObjectReplication]
    # @!attribute destination
    #   <p>A container for information about the replication destination and its
    #            configurations.</p>
    #   @return [Types::Destination]
    # @!attribute delete_marker_replication
    #   <p>Specifies whether S3 on Outposts replicates delete markers. If you specify a
    #               <code>Filter</code> element in your replication configuration, you must also include a
    #               <code>DeleteMarkerReplication</code> element. If your <code>Filter</code> includes a
    #               <code>Tag</code> element, the <code>DeleteMarkerReplication</code> element's
    #               <code>Status</code> child element must be set to <code>Disabled</code>, because
    #            S3 on Outposts doesn't support replicating delete markers for tag-based rules.</p>
    #            <p>For more information about delete marker replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html#outposts-replication-what-is-replicated">How delete operations affect replication</a> in the
    #               <i>Amazon S3 User Guide</i>. </p>
    #   @return [Types::DeleteMarkerReplication]
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the access point for the source Outposts bucket that you want
    #            S3 on Outposts to replicate the objects from.</p>
    #   @return [String]
    class ReplicationRule < Struct.new(
      nil,
      :id,
      :priority,
      :prefix,
      :filter,
      :status,
      :source_selection_criteria,
      :existing_object_replication,
      :destination,
      :delete_marker_replication,
      :bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:priority] = nil unless options.key?(:priority)
        super
      end
    end

    # <p>A container for specifying rule filters. The filters determine the subset of objects to
    #          which the rule applies. This element is required only if you specify more than one filter. </p>
    #          <p>For example:</p>
    #          <ul>
    #             <li>
    #                <p>If you specify both a <code>Prefix</code> and a <code>Tag</code> filter, wrap
    #                these filters in an <code>And</code> element. </p>
    #             </li>
    #             <li>
    #                <p>If you specify a filter based on multiple tags, wrap the <code>Tag</code> elements
    #                in an <code>And</code> element.</p>
    #             </li>
    #          </ul>
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects that the rule applies
    #            to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags that contain key and value pairs.</p>
    #   @return [Array<Types::S3Tag>]
    class ReplicationRuleAndOperator < Struct.new(
      nil,
      :prefix,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that identifies the subset of objects to which the replication rule applies. A
    #             <code>Filter</code> element must specify exactly one <code>Prefix</code>,
    #             <code>Tag</code>, or <code>And</code> child element.</p>
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects that the rule applies
    #            to.</p>
    #            <important>
    #               <p>When you're using XML requests, you must 
    #   replace special characters (such as carriage returns) in object keys with their equivalent XML entity codes. 
    #   For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML-related object key constraints</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tag
    #   <p>A container for a key-value name pair.</p>
    #   @return [Types::S3Tag]
    # @!attribute and
    #   <p>A container for specifying rule filters. The filters determine the subset of objects
    #            that the rule applies to. This element is required only if you specify more than one
    #            filter. For example: </p>
    #            <ul>
    #               <li>
    #                  <p>If you specify both a <code>Prefix</code> and a <code>Tag</code> filter, wrap
    #                  these filters in an <code>And</code> element.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify a filter based on multiple tags, wrap the <code>Tag</code> elements
    #                  in an <code>And</code> element.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ReplicationRuleAndOperator]
    class ReplicationRuleFilter < Struct.new(
      nil,
      :prefix,
      :tag,
      :and,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container that specifies S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC
    #          is enabled and the time when all objects and operations on objects must be
    #          replicated.</p>
    #          <note>
    #             <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #          </note>
    # @!attribute status
    #   <p>Specifies whether S3 Replication Time Control (S3 RTC) is enabled. </p>
    #   @return [String]
    # @!attribute time
    #   <p>A container that specifies the time by which replication should be complete for all
    #            objects and operations on objects. </p>
    #   @return [Types::ReplicationTimeValue]
    class ReplicationTime < Struct.new(
      nil,
      :status,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container that specifies the time value for S3 Replication Time Control (S3 RTC). This value is also used for
    #          the replication metrics <code>EventThreshold</code> element. </p>
    #          <note>
    #             <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #          </note>
    # @!attribute minutes
    #   <p>Contains an integer that specifies the time period in minutes. </p>
    #            <p>Valid value: 15</p>
    #   @return [Integer]
    class ReplicationTimeValue < Struct.new(
      nil,
      :minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:minutes] = nil unless options.key?(:minutes)
        super
      end
    end

    # <p></p>
    # @!attribute owner
    #   <p></p>
    #   @return [Types::S3ObjectOwner]
    # @!attribute grants
    #   <p></p>
    #   @return [Array<Types::S3Grant>]
    class S3AccessControlList < Struct.new(
      nil,
      :owner,
      :grants,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute access_control_list
    #   <p></p>
    #   @return [Types::S3AccessControlList]
    # @!attribute canned_access_control_list
    #   <p></p>
    #   @return [String]
    class S3AccessControlPolicy < Struct.new(
      nil,
      :access_control_list,
      :canned_access_control_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the bucket where the Amazon S3 Storage Lens metrics export files are
    #          located.</p>
    # @!attribute format
    #   <p></p>
    #   @return [String]
    # @!attribute output_schema_version
    #   <p>The schema version of the export file.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the owner of the S3 Storage Lens metrics export bucket.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the bucket. This property is read-only and follows the
    #            following format: <code>
    #                  arn:aws:s3:<i>us-east-1</i>:<i>example-account-id</i>:bucket/<i>your-destination-bucket-name</i>
    #               </code>
    #            </p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix of the destination bucket where the metrics export will be delivered.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p>The container for the type encryption of the metrics exports in this bucket.</p>
    #   @return [Types::StorageLensDataExportEncryption]
    class S3BucketDestination < Struct.new(
      nil,
      :format,
      :output_schema_version,
      :account_id,
      :arn,
      :prefix,
      :encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Directs the specified job to invoke the <code>ComputeObjectChecksum</code> operation on every object listed in the job's manifest.</p>
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm that you want Amazon S3 to use to create the checksum. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>Indicates the checksum type that you want Amazon S3 to use to calculate the object’s checksum
    #            value. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class S3ComputeObjectChecksumOperation < Struct.new(
      nil,
      :checksum_algorithm,
      :checksum_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains
    #          the configuration parameters for a PUT Copy object operation. S3 Batch Operations passes every
    #          object to the underlying
    #             <code>CopyObject</code>
    #          API
    #          operation. For more information about the parameters for this operation,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectCOPY.html">CopyObject</a>.</p>
    # @!attribute target_resource
    #   <p>Specifies the destination bucket
    #            Amazon Resource Name
    #            (ARN)
    #            for the batch copy operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>General purpose buckets</b> - For example, to copy
    #                  objects to a general purpose bucket named <code>destinationBucket</code>, set the
    #                     <code>TargetResource</code> property to
    #                     <code>arn:aws:s3:::destinationBucket</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Directory buckets</b> - For example, to copy
    #                  objects to a directory bucket named <code>destinationBucket</code> in the Availability Zone
    #                  identified by the AZ ID <code>usw2-az1</code>, set the <code>TargetResource</code>
    #                  property to
    #                        <code>arn:aws:s3express:<i>region</i>:<i>account_id</i>:/bucket/<i>destination_bucket_base_name</i>--<i>usw2-az1</i>--x-s3</code>.
    #                  A directory bucket as a destination bucket can be in Availability Zone or Local Zone. </p>
    #                  <note>
    #                     <p>Copying objects across different Amazon Web Services Regions isn't supported when the source
    #                     or destination bucket is in Amazon Web Services Local Zones. The source and destination buckets must
    #                     have the same parent Amazon Web Services Region. Otherwise, you get an HTTP <code>400 Bad
    #                        Request</code> error with the error code <code>InvalidRequest</code>.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute canned_access_control_list
    #   <p></p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute access_control_grants
    #   <p></p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [Array<Types::S3Grant>]
    # @!attribute metadata_directive
    #   <p></p>
    #   @return [String]
    # @!attribute modified_since_constraint
    #   <p></p>
    #   @return [Time]
    # @!attribute new_object_metadata
    #   <p>If you don't provide this parameter, Amazon S3 copies all the metadata from the original
    #            objects. If you specify an empty set, the new objects will have no tags. Otherwise, Amazon S3
    #            assigns the supplied tags to the new objects.</p>
    #   @return [Types::S3ObjectMetadata]
    # @!attribute new_object_tagging
    #   <p>Specifies a list of tags to add to the destination objects after they are copied. If
    #               <code>NewObjectTagging</code> is not specified, the tags of the source objects are
    #            copied to destination objects by default.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - Tags aren't supported by
    #               directory buckets. If your source objects have tags and your destination bucket is a
    #               directory bucket, specify an empty tag set in the <code>NewObjectTagging</code> field
    #               to prevent copying the source object tags to the directory bucket.</p>
    #            </note>
    #   @return [Array<Types::S3Tag>]
    # @!attribute redirect_location
    #   <p>If the destination bucket is configured as a website, specifies an optional metadata
    #            property for website redirects, <code>x-amz-website-redirect-location</code>. Allows
    #            webpage redirects if the object copy is accessed through a website endpoint.</p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute requester_pays
    #   <p></p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute storage_class
    #   <p>Specify the storage class for the destination objects in a <code>Copy</code>
    #            operation.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets </b> -
    #               This functionality is not supported by directory buckets. </p>
    #            </note>
    #   @return [String]
    # @!attribute un_modified_since_constraint
    #   <p></p>
    #   @return [Time]
    # @!attribute sse_aws_kms_key_id
    #   <p>Specifies the KMS key ID (Key ID, Key ARN, or Key Alias) to use for object encryption. If the KMS key doesn't exist in the same
    #            account that's issuing the command, you must use the full Key ARN not the Key ID.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - If you specify <code>SSEAlgorithm</code> with <code>KMS</code>, you must specify the <code>
    #            SSEAwsKmsKeyId</code> parameter with the ID (Key ID or Key ARN) of the KMS 
    #            symmetric encryption customer managed key to use. Otherwise, you get an HTTP <code>400 Bad Request</code> error. The key alias format of the KMS key isn't supported. To encrypt new object copies in a directory bucket with SSE-KMS, you must specify SSE-KMS as the directory bucket's default encryption configuration with a KMS key (specifically, a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a>). 
    #                           The <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a> (<code>aws/s3</code>) isn't supported. Your SSE-KMS configuration can only support 1 <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a> per directory bucket for the lifetime of the bucket. 
    #   After you specify a customer managed key for SSE-KMS as the bucket default encryption, you can't override the customer managed key for the bucket's SSE-KMS configuration. 
    #   Then, when you specify server-side encryption settings for new object copies with SSE-KMS, you must make sure the encryption key is the same customer managed key that you specified for the directory bucket's default encryption configuration.                   
    #    </p>
    #            </note>
    #   @return [String]
    # @!attribute target_key_prefix
    #   <p>Specifies the folder prefix
    #            that
    #            you
    #            want
    #            the objects to be
    #            copied
    #            into. For example, to copy objects into a folder named
    #               <code>Folder1</code> in the destination bucket, set the
    #               <code>TargetKeyPrefix</code>
    #            property
    #            to <code>Folder1</code>.</p>
    #   @return [String]
    # @!attribute object_lock_legal_hold_status
    #   <p>The legal hold status to be applied to all objects in the Batch Operations job.</p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_mode
    #   <p>The retention mode to be applied to all objects in the Batch Operations job.</p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>The date when the applied object retention configuration expires on all objects in the
    #            Batch Operations job.</p>
    #            <note>
    #               <p>This functionality is not supported by directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using Amazon Web Services KMS (SSE-KMS). Setting this header to <code>true</code>
    #            causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.</p>
    #            <p>Specifying this header with an <i>Copy</i> action doesn’t affect
    #               <i>bucket-level</i> settings for S3 Bucket Key.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - S3 Bucket Keys aren't supported, when you copy SSE-KMS encrypted objects from general purpose buckets  
    #   to directory buckets, from directory buckets to general purpose buckets, or between directory buckets, through <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-objects-Batch-Ops">the Copy operation in Batch Operations</a>. In this case, Amazon S3 makes a call to KMS every time a copy request is made for a KMS-encrypted object.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm
    #            that
    #            you want Amazon S3 to use to create the checksum. For more
    #            information,
    #            see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html"> Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class S3CopyObjectOperation < Struct.new(
      nil,
      :target_resource,
      :canned_access_control_list,
      :access_control_grants,
      :metadata_directive,
      :modified_since_constraint,
      :new_object_metadata,
      :new_object_tagging,
      :redirect_location,
      :requester_pays,
      :storage_class,
      :un_modified_since_constraint,
      :sse_aws_kms_key_id,
      :target_key_prefix,
      :object_lock_legal_hold_status,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :bucket_key_enabled,
      :checksum_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:requester_pays] = false unless options.key?(:requester_pays)
        options[:bucket_key_enabled] = false unless options.key?(:bucket_key_enabled)
        super
      end
    end

    # <p>Contains no configuration parameters because the DELETE Object tagging
    #             (<code>DeleteObjectTagging</code>)
    #          API
    #          operation
    #          accepts
    #          only
    #          the bucket name and key name as parameters, which are defined in the
    #          job's manifest.</p>
    class S3DeleteObjectTaggingOperation < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the specified job's generated manifest. Batch Operations jobs created with a
    #          ManifestGenerator populate details of this descriptor after execution of the
    #          ManifestGenerator.</p>
    # @!attribute format
    #   <p>The format of the generated manifest.</p>
    #   @return [String]
    # @!attribute location
    #   <p>Contains the information required to locate a manifest object. Manifests can't be
    #            imported from directory buckets. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">Directory
    #               buckets</a>.</p>
    #   @return [Types::JobManifestLocation]
    class S3GeneratedManifestDescriptor < Struct.new(
      nil,
      :format,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute grantee
    #   <p></p>
    #   @return [Types::S3Grantee]
    # @!attribute permission
    #   <p></p>
    #   @return [String]
    class S3Grant < Struct.new(
      nil,
      :grantee,
      :permission,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute type_identifier
    #   <p></p>
    #   @return [String]
    # @!attribute identifier
    #   <p></p>
    #   @return [String]
    # @!attribute display_name
    #   <p></p>
    #   @return [String]
    class S3Grantee < Struct.new(
      nil,
      :type_identifier,
      :identifier,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration parameters for
    #          a
    #          POST Object restore job. S3 Batch Operations passes every object to the
    #          underlying
    #             <code>RestoreObject</code>
    #          API
    #          operation. For more information about the parameters for this operation,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPOSTrestore.html#RESTObjectPOSTrestore-restore-request">RestoreObject</a>.</p>
    # @!attribute expiration_in_days
    #   <p>This argument specifies how long the S3 Glacier or S3 Glacier Deep Archive object remains
    #            available in Amazon S3. S3 Initiate Restore Object jobs that target S3 Glacier and S3 Glacier Deep Archive
    #            objects require <code>ExpirationInDays</code> set to 1 or greater.</p>
    #            <p>Conversely, do <i>not</i> set <code>ExpirationInDays</code> when creating
    #            S3 Initiate Restore Object jobs that target S3 Intelligent-Tiering Archive Access and
    #            Deep Archive Access tier objects. Objects in S3 Intelligent-Tiering archive access tiers are
    #            not subject to restore expiry, so specifying <code>ExpirationInDays</code> results in
    #            restore request failure.</p>
    #            <p>S3 Batch Operations jobs can operate either on S3 Glacier and S3 Glacier Deep Archive storage class
    #            objects or on S3 Intelligent-Tiering Archive Access and Deep Archive Access storage tier
    #            objects, but not both types in the same job. If you need to restore objects of both types
    #            you <i>must</i> create separate Batch Operations jobs. </p>
    #   @return [Integer]
    # @!attribute glacier_job_tier
    #   <p>S3 Batch Operations supports <code>STANDARD</code> and <code>BULK</code> retrieval tiers, but
    #            not the <code>EXPEDITED</code> retrieval tier.</p>
    #   @return [String]
    class S3InitiateRestoreObjectOperation < Struct.new(
      nil,
      :expiration_in_days,
      :glacier_job_tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:expiration_in_days] = nil unless options.key?(:expiration_in_days)
        super
      end
    end

    # <p>The container for the service that will create the S3 manifest.</p>
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the bucket the generated manifest is written to. If
    #            provided the generated manifest bucket's owner Amazon Web Services account ID must match this value, else
    #            the job fails.</p>
    #   @return [String]
    # @!attribute source_bucket
    #   <p>The ARN of the source bucket used by the ManifestGenerator.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - Directory buckets
    #               aren't supported as the source buckets used by <code>S3JobManifestGenerator</code> to
    #               generate the job manifest.</p>
    #            </note>
    #   @return [String]
    # @!attribute manifest_output_location
    #   <p>Specifies the location the generated manifest will be written to. Manifests can't be
    #            written to directory buckets. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">Directory
    #               buckets</a>.</p>
    #   @return [Types::S3ManifestOutputLocation]
    # @!attribute filter
    #   <p>Specifies rules the S3JobManifestGenerator should use to decide whether an object in the
    #            source bucket should or should not be included in the generated job manifest.</p>
    #   @return [Types::JobManifestGeneratorFilter]
    # @!attribute enable_manifest_output
    #   <p>Determines whether or not to write the job's generated manifest to a bucket.</p>
    #   @return [Boolean]
    class S3JobManifestGenerator < Struct.new(
      nil,
      :expected_bucket_owner,
      :source_bucket,
      :manifest_output_location,
      :filter,
      :enable_manifest_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_manifest_output] = false unless options.key?(:enable_manifest_output)
        super
      end
    end

    # <p>Location details for where the generated manifest should be written.</p>
    # @!attribute expected_manifest_bucket_owner
    #   <p>The Account ID that owns the bucket the generated manifest is written to.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The bucket ARN the generated manifest should be written to.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - Directory buckets
    #               aren't supported as the buckets to store the generated manifest.</p>
    #            </note>
    #   @return [String]
    # @!attribute manifest_prefix
    #   <p>Prefix identifying one or more objects to which the manifest applies.</p>
    #   @return [String]
    # @!attribute manifest_encryption
    #   <p>Specifies what encryption should be used when the generated manifest objects are
    #            written.</p>
    #   @return [Types::GeneratedManifestEncryption]
    # @!attribute manifest_format
    #   <p>The format of the generated manifest.</p>
    #   @return [String]
    class S3ManifestOutputLocation < Struct.new(
      nil,
      :expected_manifest_bucket_owner,
      :bucket,
      :manifest_prefix,
      :manifest_encryption,
      :manifest_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Whether S3 Object Lock legal hold will be applied to objects in an S3 Batch Operations
    #          job.</p>
    # @!attribute status
    #   <p>The Object Lock legal hold status to be applied to all objects in the Batch Operations
    #            job.</p>
    #   @return [String]
    class S3ObjectLockLegalHold < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute cache_control
    #   <p></p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p></p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p></p>
    #   @return [String]
    # @!attribute content_language
    #   <p></p>
    #   @return [String]
    # @!attribute user_metadata
    #   <p></p>
    #   @return [Hash<String, String>]
    # @!attribute content_length
    #   <p>
    #               <i>This member has been deprecated.</i>
    #            </p>
    #            <p></p>
    #   @return [Integer]
    # @!attribute content_md5
    #   <p>
    #               <i>This member has been deprecated.</i>
    #            </p>
    #            <p></p>
    #   @return [String]
    # @!attribute content_type
    #   <p></p>
    #   @return [String]
    # @!attribute http_expires_date
    #   <p></p>
    #   @return [Time]
    # @!attribute requester_charged
    #   <p>
    #               <i>This member has been deprecated.</i>
    #            </p>
    #            <p></p>
    #   @return [Boolean]
    # @!attribute sse_algorithm
    #   <p>The server-side encryption algorithm used when storing objects in Amazon S3.</p>
    #            <p>
    #               <b>Directory buckets </b> -
    #            For directory buckets, there are only two supported options for server-side encryption: server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) and server-side encryption with KMS keys (SSE-KMS) (<code>KMS</code>). For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html">Protecting data with server-side encryption</a> in the <i>Amazon S3 User Guide</i>.
    #            For <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-objects-Batch-Ops">the Copy operation in Batch Operations</a>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_S3CopyObjectOperation.html">S3CopyObjectOperation</a>.</p>
    #   @return [String]
    class S3ObjectMetadata < Struct.new(
      nil,
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :user_metadata,
      :content_length,
      :content_md5,
      :content_type,
      :http_expires_date,
      :requester_charged,
      :sse_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:content_length] = nil unless options.key?(:content_length)
        options[:requester_charged] = false unless options.key?(:requester_charged)
        super
      end
    end

    # <p></p>
    # @!attribute id
    #   <p></p>
    #   @return [String]
    # @!attribute display_name
    #   <p></p>
    #   @return [String]
    class S3ObjectOwner < Struct.new(
      nil,
      :id,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Directs the specified job to invoke <code>ReplicateObject</code> on every object in the
    #          job's manifest.</p>
    class S3ReplicateObjectOperation < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the S3 Object Lock retention mode to be applied to all objects in the
    #          S3 Batch Operations job. If you don't provide <code>Mode</code> and <code>RetainUntilDate</code>
    #          data types in your operation, you will remove the retention from your objects. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html">Using S3 Object Lock retention
    #             with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute retain_until_date
    #   <p>The date when the applied Object Lock retention will expire on all objects set by the
    #            Batch Operations job.</p>
    #   @return [Time]
    # @!attribute mode
    #   <p>The Object Lock retention mode to be applied to all objects in the Batch Operations
    #            job.</p>
    #   @return [String]
    class S3Retention < Struct.new(
      nil,
      :retain_until_date,
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration parameters for a
    #          PUT
    #          Object ACL operation. S3 Batch Operations passes every object to the underlying
    #             <code>PutObjectAcl</code>
    #          API
    #          operation. For more information about the parameters for this operation,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTacl.html">PutObjectAcl</a>.</p>
    # @!attribute access_control_policy
    #   <p></p>
    #   @return [Types::S3AccessControlPolicy]
    class S3SetObjectAclOperation < Struct.new(
      nil,
      :access_control_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration for an S3 Object Lock legal hold operation that an
    #          S3 Batch Operations job passes
    #          to
    #          every object to the underlying
    #             <code>PutObjectLegalHold</code>
    #          API
    #          operation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-legal-hold.html">Using S3 Object Lock legal hold
    #             with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>This functionality is not supported by directory buckets.</p>
    #          </note>
    # @!attribute legal_hold
    #   <p>Contains the Object Lock legal hold status to be applied to all objects in the
    #            Batch Operations job.</p>
    #   @return [Types::S3ObjectLockLegalHold]
    class S3SetObjectLegalHoldOperation < Struct.new(
      nil,
      :legal_hold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration parameters for the Object Lock retention action for an
    #          S3 Batch Operations job. Batch Operations passes every object to the underlying
    #             <code>PutObjectRetention</code>
    #          API
    #          operation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html">Using S3 Object Lock retention
    #             with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>This functionality is not supported by directory buckets.</p>
    #          </note>
    # @!attribute bypass_governance_retention
    #   <p>Indicates if the action should be applied to objects in the Batch Operations job even if they
    #            have Object Lock <code> GOVERNANCE</code> type in place.</p>
    #   @return [Boolean]
    # @!attribute retention
    #   <p>Contains the Object Lock retention mode to be applied to all objects in the Batch Operations
    #            job. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html">Using S3 Object Lock retention
    #               with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Types::S3Retention]
    class S3SetObjectRetentionOperation < Struct.new(
      nil,
      :bypass_governance_retention,
      :retention,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bypass_governance_retention] = nil unless options.key?(:bypass_governance_retention)
        super
      end
    end

    # <p>Contains the configuration parameters for a
    #          PUT
    #          Object Tagging operation. S3 Batch Operations passes every object to the underlying
    #             <code>PutObjectTagging</code>
    #          API
    #          operation. For more information about the parameters for this operation,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTtagging.html">PutObjectTagging</a>.</p>
    # @!attribute tag_set
    #   <p></p>
    #   @return [Array<Types::S3Tag>]
    class S3SetObjectTaggingOperation < Struct.new(
      nil,
      :tag_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for a key-value name pair.</p>
    # @!attribute key
    #   <p>Key of the tag</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of the tag</p>
    #   @return [String]
    class S3Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that returns objects that are encrypted by server-side encryption with customer-provided keys (SSE-C).</p>
    class SSECFilter < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute key_id
    #   <p>A container for the ARN of the SSE-KMS encryption. This property is read-only and
    #            follows the following format: <code>
    #                  arn:aws:kms:<i>us-east-1</i>:<i>example-account-id</i>:key/<i>example-9a73-4afc-8d29-8f5900cef44e</i>
    #               </code>
    #            </p>
    #   @return [String]
    class SSEKMS < Struct.new(
      nil,
      :key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the use of SSE-KMS to encrypt generated manifest objects.</p>
    # @!attribute key_id
    #   <p>Specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric encryption
    #            customer managed key to use for encrypting generated manifest objects.</p>
    #   @return [String]
    class SSEKMSEncryption < Struct.new(
      nil,
      :key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that returns objects that are encrypted by server-side encryption with Amazon Web Services KMS (SSE-KMS).</p>
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer managed KMS key to use for the filter 
    #            to return objects that are encrypted by the specified key. For best performance, 
    #            we recommend using the <code>KMSKeyArn</code> filter in conjunction with other object metadata filters, like <code>MatchAnyPrefix</code>, <code>CreatedAfter</code>, or 
    #            <code>MatchAnyStorageClass</code>.</p>
    #            <note>
    #               <p>You must provide the full KMS Key ARN. You can't use an alias name or alias ARN. 
    #            For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN"> 
    #               KMS keys</a> in the <i>Amazon Web Services Key Management Service Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption 
    #               using Amazon Web Services Key Management Service (Amazon Web Services KMS) keys (SSE-KMS). If specified, will filter SSE-KMS encrypted objects by S3 Bucket Key status. 
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-key.html">Reducing the cost of SSE-KMS with Amazon S3 Bucket Keys</a>
    #               in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Boolean]
    class SSEKMSFilter < Struct.new(
      nil,
      :kms_key_arn,
      :bucket_key_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bucket_key_enabled] = nil unless options.key?(:bucket_key_enabled)
        super
      end
    end

    # <p></p>
    class SSES3 < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the use of SSE-S3 to encrypt generated manifest objects.</p>
    class SSES3Encryption < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that returns objects that are encrypted by server-side encryption with Amazon S3 managed keys (SSE-S3).</p>
    class SSES3Filter < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can use the access point scope to restrict access to specific prefixes, API operations, or a
    #          combination of both.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets-manage-scope.html">Manage
    #             the scope of your access points for directory buckets</a>.</p>
    # @!attribute prefixes
    #   <p>You can specify any amount of prefixes, but the total length of characters of all
    #            prefixes must be less than 256 bytes in size.</p>
    #   @return [Array<String>]
    # @!attribute permissions
    #   <p>You can include one or more API operations as permissions.</p>
    #   @return [Array<String>]
    class Scope < Struct.new(
      nil,
      :prefixes,
      :permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute delimiter
    #   <p>A container for the delimiter of the selection criteria being used.</p>
    #   @return [String]
    # @!attribute max_depth
    #   <p>The max depth of the selection criteria</p>
    #   @return [Integer]
    # @!attribute min_storage_bytes_percentage
    #   <p>The minimum number of storage bytes percentage whose metrics will be selected.</p>
    #            <note>
    #               <p>You must choose a value greater than or equal to <code>1.0</code>.</p>
    #            </note>
    #   @return [Float]
    class SelectionCriteria < Struct.new(
      nil,
      :delimiter,
      :max_depth,
      :min_storage_bytes_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container that describes additional filters for identifying the source objects that
    #          you want to replicate. You can choose to enable or disable the replication of these
    #          objects.</p>
    # @!attribute sse_kms_encrypted_objects
    #   <p>A filter that you can use to select Amazon S3 objects that are encrypted with server-side
    #            encryption by using Key Management Service (KMS) keys. If you include
    #               <code>SourceSelectionCriteria</code> in the replication configuration, this element is
    #            required. </p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #   @return [Types::SseKmsEncryptedObjects]
    # @!attribute replica_modifications
    #   <p>A filter that you can use to specify whether replica modification sync is enabled.
    #            S3 on Outposts replica modification sync can help you keep object metadata synchronized
    #            between replicas and source objects. By default, S3 on Outposts replicates metadata from the
    #            source objects to the replicas only. When replica modification sync is enabled,
    #            S3 on Outposts replicates metadata changes made to the replica copies back to the source
    #            object, making the replication bidirectional.</p>
    #            <p>To replicate object metadata modifications on replicas, you can specify this element and
    #            set the <code>Status</code> of this element to <code>Enabled</code>.</p>
    #            <note>
    #               <p>You must enable replica modification sync on the source and destination buckets to
    #               replicate replica metadata changes between the source and the replicas.</p>
    #            </note>
    #   @return [Types::ReplicaModifications]
    class SourceSelectionCriteria < Struct.new(
      nil,
      :sse_kms_encrypted_objects,
      :replica_modifications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for filter information that you can use to select S3 objects that are
    #          encrypted with Key Management Service (KMS).</p>
    #          <note>
    #             <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #          </note>
    # @!attribute status
    #   <p>Specifies whether Amazon S3 replicates objects that are created with server-side encryption
    #            by using an KMS key stored in Key Management Service.</p>
    #   @return [String]
    class SseKmsEncryptedObjects < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services organization for your S3 Storage Lens.</p>
    # @!attribute arn
    #   <p>A container for the Amazon Resource Name (ARN) of the Amazon Web Services organization. This property
    #            is read-only and follows the following format: <code>
    #                  arn:aws:organizations:<i>us-east-1</i>:<i>example-account-id</i>:organization/<i>o-ex2l495dck</i>
    #               </code>
    #            </p>
    #   @return [String]
    class StorageLensAwsOrg < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the Amazon S3 Storage Lens configuration.</p>
    # @!attribute id
    #   <p>A container for the Amazon S3 Storage Lens configuration ID.</p>
    #   @return [String]
    # @!attribute account_level
    #   <p>A container for all the account-level configurations of your S3 Storage Lens
    #            configuration.</p>
    #   @return [Types::AccountLevel]
    # @!attribute include
    #   <p>A container for what is included in this configuration. This container can only be valid
    #            if there is no <code>Exclude</code> container submitted, and it's not empty. </p>
    #   @return [Types::Include]
    # @!attribute exclude
    #   <p>A container for what is excluded in this configuration. This container can only be valid
    #            if there is no <code>Include</code> container submitted, and it's not empty. </p>
    #   @return [Types::Exclude]
    # @!attribute data_export
    #   <p>A container to specify the properties of your S3 Storage Lens metrics export including, the
    #            destination, schema and format.</p>
    #   @return [Types::StorageLensDataExport]
    # @!attribute is_enabled
    #   <p>A container for whether the S3 Storage Lens configuration is enabled.</p>
    #   @return [Boolean]
    # @!attribute aws_org
    #   <p>A container for the Amazon Web Services organization for this S3 Storage Lens configuration.</p>
    #   @return [Types::StorageLensAwsOrg]
    # @!attribute storage_lens_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 Storage Lens configuration. This property is read-only
    #            and follows the following format: <code>
    #                  arn:aws:s3:<i>us-east-1</i>:<i>example-account-id</i>:storage-lens/<i>your-dashboard-name</i>
    #               </code>
    #            </p>
    #   @return [String]
    class StorageLensConfiguration < Struct.new(
      nil,
      :id,
      :account_level,
      :include,
      :exclude,
      :data_export,
      :is_enabled,
      :aws_org,
      :storage_lens_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_enabled] = false unless options.key?(:is_enabled)
        super
      end
    end

    # <p>A container to specify the properties of your S3 Storage Lens metrics export, including the
    #          destination, schema, and format.</p>
    # @!attribute s3_bucket_destination
    #   <p>A container for the bucket where the S3 Storage Lens metrics export will be located.</p>
    #            <note>
    #               <p>This bucket must be located in the same Region as the storage lens configuration.
    #            </p>
    #            </note>
    #   @return [Types::S3BucketDestination]
    # @!attribute cloud_watch_metrics
    #   <p>A container for enabling Amazon CloudWatch publishing for S3 Storage Lens metrics.</p>
    #   @return [Types::CloudWatchMetrics]
    class StorageLensDataExport < Struct.new(
      nil,
      :s3_bucket_destination,
      :cloud_watch_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for the encryption of the S3 Storage Lens metrics exports.</p>
    # @!attribute sses3
    #   <p></p>
    #   @return [Types::SSES3]
    # @!attribute ssekms
    #   <p></p>
    #   @return [Types::SSEKMS]
    class StorageLensDataExportEncryption < Struct.new(
      nil,
      :sses3,
      :ssekms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A custom grouping of objects that include filters for prefixes, suffixes, object tags,
    #          object size, or object age. You can create an S3 Storage Lens group that includes a single
    #          filter or multiple filter conditions. To specify multiple filter conditions, you use
    #             <code>AND</code> or <code>OR</code> logical operators. </p>
    # @!attribute name
    #   <p> Contains the name of the Storage Lens group. </p>
    #   @return [String]
    # @!attribute filter
    #   <p>Sets the criteria for the Storage Lens group data that is displayed. For multiple filter
    #            conditions, the <code>AND</code> or <code>OR</code> logical operator is used.</p>
    #   @return [Types::StorageLensGroupFilter]
    # @!attribute storage_lens_group_arn
    #   <p> Contains the Amazon Resource Name (ARN) of the Storage Lens group. This property is
    #            read-only. </p>
    #   @return [String]
    class StorageLensGroup < Struct.new(
      nil,
      :name,
      :filter,
      :storage_lens_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A logical operator that allows multiple filter conditions to be joined for more complex
    #          comparisons of Storage Lens group data. </p>
    # @!attribute match_any_prefix
    #   <p> Contains a list of prefixes. At least one prefix must be specified. Up to 10 prefixes
    #            are allowed. </p>
    #   @return [Array<String>]
    # @!attribute match_any_suffix
    #   <p> Contains a list of suffixes. At least one suffix must be specified. Up to 10 suffixes
    #            are allowed. </p>
    #   @return [Array<String>]
    # @!attribute match_any_tag
    #   <p> Contains the list of object tags. At least one object tag must be specified. Up to 10
    #            object tags are allowed. </p>
    #   @return [Array<Types::S3Tag>]
    # @!attribute match_object_age
    #   <p> Contains <code>DaysGreaterThan</code> and <code>DaysLessThan</code> to define the
    #            object age range (minimum and maximum number of days). </p>
    #   @return [Types::MatchObjectAge]
    # @!attribute match_object_size
    #   <p> Contains <code>BytesGreaterThan</code> and <code>BytesLessThan</code> to define the
    #            object size range (minimum and maximum number of Bytes). </p>
    #   @return [Types::MatchObjectSize]
    class StorageLensGroupAndOperator < Struct.new(
      nil,
      :match_any_prefix,
      :match_any_suffix,
      :match_any_tag,
      :match_object_age,
      :match_object_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter element sets the criteria for the Storage Lens group data that is displayed.
    #          For multiple filter conditions, the <code>AND</code> or <code>OR</code> logical operator is
    #          used.</p>
    # @!attribute match_any_prefix
    #   <p> Contains a list of prefixes. At least one prefix must be specified. Up to 10 prefixes
    #            are allowed. </p>
    #   @return [Array<String>]
    # @!attribute match_any_suffix
    #   <p> Contains a list of suffixes. At least one suffix must be specified. Up to 10 suffixes
    #            are allowed. </p>
    #   @return [Array<String>]
    # @!attribute match_any_tag
    #   <p> Contains the list of S3 object tags. At least one object tag must be specified. Up to
    #            10 object tags are allowed. </p>
    #   @return [Array<Types::S3Tag>]
    # @!attribute match_object_age
    #   <p> Contains <code>DaysGreaterThan</code> and <code>DaysLessThan</code> to define the
    #            object age range (minimum and maximum number of days). </p>
    #   @return [Types::MatchObjectAge]
    # @!attribute match_object_size
    #   <p> Contains <code>BytesGreaterThan</code> and <code>BytesLessThan</code> to define the
    #            object size range (minimum and maximum number of Bytes). </p>
    #   @return [Types::MatchObjectSize]
    # @!attribute and
    #   <p>A logical operator that allows multiple filter conditions to be joined for more complex
    #            comparisons of Storage Lens group data. Objects must match all of the listed filter
    #            conditions that are joined by the <code>And</code> logical operator. Only one of each
    #            filter condition is allowed.</p>
    #   @return [Types::StorageLensGroupAndOperator]
    # @!attribute or
    #   <p>A single logical operator that allows multiple filter conditions to be joined. Objects
    #            can match any of the listed filter conditions, which are joined by the <code>Or</code>
    #            logical operator. Only one of each filter condition is allowed. </p>
    #   @return [Types::StorageLensGroupOrOperator]
    class StorageLensGroupFilter < Struct.new(
      nil,
      :match_any_prefix,
      :match_any_suffix,
      :match_any_tag,
      :match_object_age,
      :match_object_size,
      :and,
      :or,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies the Storage Lens groups to include in the Storage Lens group aggregation.
    #       </p>
    # @!attribute selection_criteria
    #   <p> Indicates which Storage Lens group ARNs to include or exclude in the Storage Lens group
    #            aggregation. If this value is left null, then all Storage Lens groups are selected. </p>
    #   @return [Types::StorageLensGroupLevelSelectionCriteria]
    class StorageLensGroupLevel < Struct.new(
      nil,
      :selection_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Indicates which Storage Lens group ARNs to include or exclude in the Storage Lens group
    #          aggregation. You can only attach Storage Lens groups to your Storage Lens dashboard if
    #          they're included in your Storage Lens group aggregation. If this value is left null, then
    #          all Storage Lens groups are selected. </p>
    # @!attribute include
    #   <p> Indicates which Storage Lens group ARNs to include in the Storage Lens group
    #            aggregation. </p>
    #   @return [Array<String>]
    # @!attribute exclude
    #   <p> Indicates which Storage Lens group ARNs to exclude from the Storage Lens group
    #            aggregation. </p>
    #   @return [Array<String>]
    class StorageLensGroupLevelSelectionCriteria < Struct.new(
      nil,
      :include,
      :exclude,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container element for specifying <code>Or</code> rule conditions. The rule conditions
    #          determine the subset of objects to which the <code>Or</code> rule applies. Objects can
    #          match any of the listed filter conditions, which are joined by the <code>Or</code> logical
    #          operator. Only one of each filter condition is allowed.</p>
    # @!attribute match_any_prefix
    #   <p> Filters objects that match any of the specified prefixes. </p>
    #   @return [Array<String>]
    # @!attribute match_any_suffix
    #   <p> Filters objects that match any of the specified suffixes. </p>
    #   @return [Array<String>]
    # @!attribute match_any_tag
    #   <p> Filters objects that match any of the specified S3 object tags. </p>
    #   @return [Array<Types::S3Tag>]
    # @!attribute match_object_age
    #   <p> Filters objects that match the specified object age range. </p>
    #   @return [Types::MatchObjectAge]
    # @!attribute match_object_size
    #   <p> Filters objects that match the specified object size range. </p>
    #   @return [Types::MatchObjectSize]
    class StorageLensGroupOrOperator < Struct.new(
      nil,
      :match_any_prefix,
      :match_any_suffix,
      :match_any_tag,
      :match_object_age,
      :match_object_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute key
    #   <p></p>
    #   @return [String]
    # @!attribute value
    #   <p></p>
    #   @return [String]
    class StorageLensTag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #   @return [String]
    # @!attribute mrap
    #   <p>The Multi-Region Access Point ARN.</p>
    #   @return [String]
    # @!attribute route_updates
    #   <p>The different routes that make up the new route configuration. Active routes return a
    #            value of <code>100</code>, and passive routes return a value of <code>0</code>.</p>
    #   @return [Array<Types::MultiRegionAccessPointRoute>]
    class SubmitMultiRegionAccessPointRoutesRequest < Struct.new(
      nil,
      :account_id,
      :mrap,
      :route_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SubmitMultiRegionAccessPointRoutesResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A key-value pair that you use to label your resources. You can add tags to new
    #          resources when you create them, or you can add tags to existing resources. Tags can help
    #          you organize, track costs for, and control access to resources. </p>
    # @!attribute key
    #   <p>The key of the key-value pair of a tag added to your Amazon Web Services resource. A tag key can be up
    #            to 128 Unicode characters in length and is case-sensitive. System created tags that begin
    #            with <code>aws:</code> aren’t supported. </p>
    #   @return [String]
    # @!attribute value
    #   <p> The value of the key-value pair of a tag added to your Amazon Web Services resource. A tag value can
    #            be up to 256 Unicode characters in length and is case-sensitive. </p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>
    #   The Amazon Web Services account ID that created the S3 resource that you're trying to add tags to or the requester's account ID. 
    #   </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 resource that you're applying tags to. The
    #            tagged resource can be a directory bucket, S3 Storage Lens group or S3 Access Grants instance,
    #            registered location, or grant.</p>
    #   @return [String]
    # @!attribute tags
    #   <p> The Amazon Web Services resource tags that you want to add to the specified S3 resource. </p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :account_id,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute tag_set
    #   <p>A collection for a set of tags.</p>
    #   @return [Array<Types::S3Tag>]
    class Tagging < Struct.new(
      nil,
      :tag_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon S3 throws this exception if you have too many tags in your tag set.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies when an object transitions to a specified storage class. For more information
    #          about Amazon S3 Lifecycle configuration rules, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html">
    #             Transitioning objects using Amazon S3 Lifecycle</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    # @!attribute date
    #   <p>Indicates when objects are transitioned to the specified storage class. The date value
    #            must be in ISO 8601 format. The time is always midnight UTC.</p>
    #   @return [Time]
    # @!attribute days
    #   <p>Indicates the number of days after creation when objects are transitioned to the
    #            specified storage class. The value must be a positive integer.</p>
    #   @return [Integer]
    # @!attribute storage_class
    #   <p>The storage class to which you want the object to transition.</p>
    #   @return [String]
    class Transition < Struct.new(
      nil,
      :date,
      :days,
      :storage_class,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:days] = 0 unless options.key?(:days)
        super
      end
    end

    # @!attribute account_id
    #   <p> The Amazon Web Services account ID that owns the resource that you're trying to remove the tags from.
    #         </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 resource that you're removing tags from. The
    #            tagged resource can be a directory bucket, S3 Storage Lens group or S3 Access Grants instance,
    #            registered location, or grant.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p> The array of tag key-value pairs that you're trying to remove from of the S3 resource.
    #         </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :account_id,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    #   @return [String]
    # @!attribute access_grants_location_id
    #   <p>The ID of the registered location that you are updating. S3 Access Grants assigns this ID when you
    #            register the location. S3 Access Grants assigns the ID <code>default</code> to the default location
    #               <code>s3://</code> and assigns an auto-generated ID to other locations that you
    #            register. </p>
    #            <p>The ID of the registered location to which you are granting access. S3 Access Grants assigned this
    #            ID when you registered the location. S3 Access Grants assigns the ID <code>default</code> to the
    #            default location <code>s3://</code> and assigns an auto-generated ID to other locations
    #            that you register. </p>
    #            <p>If you are passing the <code>default</code> location, you cannot create an access grant
    #            for the entire default location. You must also specify a bucket or a bucket and prefix in
    #            the <code>Subprefix</code> field. </p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for the registered location. S3 Access Grants
    #            assumes this role to manage access to the registered location. </p>
    #   @return [String]
    class UpdateAccessGrantsLocationRequest < Struct.new(
      nil,
      :account_id,
      :access_grants_location_id,
      :iam_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_at
    #   <p>The date and time when you registered the location. </p>
    #   @return [Time]
    # @!attribute access_grants_location_id
    #   <p>The ID of the registered location to which you are granting access. S3 Access Grants assigned this
    #            ID when you registered the location. S3 Access Grants assigns the ID <code>default</code> to the
    #            default location <code>s3://</code> and assigns an auto-generated ID to other locations
    #            that you register. </p>
    #   @return [String]
    # @!attribute access_grants_location_arn
    #   <p>The Amazon Resource Name (ARN) of the registered location that you are updating. </p>
    #   @return [String]
    # @!attribute location_scope
    #   <p>The S3 URI path of the location that you are updating. You cannot update the scope of
    #            the registered location. The location scope can be the default S3 location
    #               <code>s3://</code>, the S3 path to a bucket <code>s3://<bucket></code>, or the S3
    #            path to a bucket and prefix <code>s3://<bucket>/<prefix></code>. </p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role of the registered location. S3 Access Grants
    #            assumes this role to manage access to the registered location. </p>
    #   @return [String]
    class UpdateAccessGrantsLocationResult < Struct.new(
      nil,
      :created_at,
      :access_grants_location_id,
      :access_grants_location_arn,
      :location_scope,
      :iam_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID for the job whose priority you want to update.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority you want to assign to this job.</p>
    #   @return [Integer]
    class UpdateJobPriorityRequest < Struct.new(
      nil,
      :account_id,
      :job_id,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID for the job whose priority Amazon S3 updated.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The new priority assigned to the specified job.</p>
    #   @return [Integer]
    class UpdateJobPriorityResult < Struct.new(
      nil,
      :job_id,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:priority] = 0 unless options.key?(:priority)
        super
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID of the job whose status you want to update.</p>
    #   @return [String]
    # @!attribute requested_job_status
    #   <p>The status that you want to move the specified job to.</p>
    #   @return [String]
    # @!attribute status_update_reason
    #   <p>A description of the reason why you want to change the specified job's status. This
    #            field can be any string up to the maximum length.</p>
    #   @return [String]
    class UpdateJobStatusRequest < Struct.new(
      nil,
      :account_id,
      :job_id,
      :requested_job_status,
      :status_update_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID for the job whose status was updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status for the specified job.</p>
    #   @return [String]
    # @!attribute status_update_reason
    #   <p>The reason that the specified job's status was updated.</p>
    #   @return [String]
    class UpdateJobStatusResult < Struct.new(
      nil,
      :job_id,
      :status,
      :status_update_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #   The name of the Storage Lens group that you want to update.
    #   </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>
    #   The Amazon Web Services account ID of the Storage Lens group owner.
    #   </p>
    #   @return [String]
    # @!attribute storage_lens_group
    #   <p>
    #   The JSON file that contains the Storage Lens group configuration.
    #   </p>
    #   @return [Types::StorageLensGroup]
    class UpdateStorageLensGroupRequest < Struct.new(
      nil,
      :name,
      :account_id,
      :storage_lens_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the versioning state of an Amazon S3 on Outposts bucket. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html">PutBucketVersioning</a>.</p>
    # @!attribute mfa_delete
    #   <p>Specifies whether MFA delete is enabled or disabled in the bucket versioning
    #            configuration for the S3 on Outposts bucket.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Sets the versioning state of the S3 on Outposts bucket.</p>
    #   @return [String]
    class VersioningConfiguration < Struct.new(
      nil,
      :mfa_delete,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The virtual private cloud (VPC) configuration for an access point.</p>
    # @!attribute vpc_id
    #   <p>If this field is specified, this access point will only allow connections from the specified VPC
    #            ID.</p>
    #   @return [String]
    class VpcConfiguration < Struct.new(
      nil,
      :vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
