# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ComputeOptimizer
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIds = Shapes::ListShape.new(name: 'AccountIds')
    AutoScalingGroupArn = Shapes::StringShape.new(name: 'AutoScalingGroupArn')
    AutoScalingGroupArns = Shapes::ListShape.new(name: 'AutoScalingGroupArns')
    AutoScalingGroupConfiguration = Shapes::StructureShape.new(name: 'AutoScalingGroupConfiguration')
    AutoScalingGroupName = Shapes::StringShape.new(name: 'AutoScalingGroupName')
    AutoScalingGroupRecommendation = Shapes::StructureShape.new(name: 'AutoScalingGroupRecommendation')
    AutoScalingGroupRecommendationOption = Shapes::StructureShape.new(name: 'AutoScalingGroupRecommendationOption')
    AutoScalingGroupRecommendationOptions = Shapes::ListShape.new(name: 'AutoScalingGroupRecommendationOptions')
    AutoScalingGroupRecommendations = Shapes::ListShape.new(name: 'AutoScalingGroupRecommendations')
    Code = Shapes::StringShape.new(name: 'Code')
    CreationTimestamp = Shapes::TimestampShape.new(name: 'CreationTimestamp')
    CurrentInstanceType = Shapes::StringShape.new(name: 'CurrentInstanceType')
    DescribeRecommendationExportJobsRequest = Shapes::StructureShape.new(name: 'DescribeRecommendationExportJobsRequest')
    DescribeRecommendationExportJobsResponse = Shapes::StructureShape.new(name: 'DescribeRecommendationExportJobsResponse')
    DesiredCapacity = Shapes::IntegerShape.new(name: 'DesiredCapacity')
    DestinationBucket = Shapes::StringShape.new(name: 'DestinationBucket')
    DestinationKey = Shapes::StringShape.new(name: 'DestinationKey')
    DestinationKeyPrefix = Shapes::StringShape.new(name: 'DestinationKeyPrefix')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExportAutoScalingGroupRecommendationsRequest = Shapes::StructureShape.new(name: 'ExportAutoScalingGroupRecommendationsRequest')
    ExportAutoScalingGroupRecommendationsResponse = Shapes::StructureShape.new(name: 'ExportAutoScalingGroupRecommendationsResponse')
    ExportDestination = Shapes::StructureShape.new(name: 'ExportDestination')
    ExportEC2InstanceRecommendationsRequest = Shapes::StructureShape.new(name: 'ExportEC2InstanceRecommendationsRequest')
    ExportEC2InstanceRecommendationsResponse = Shapes::StructureShape.new(name: 'ExportEC2InstanceRecommendationsResponse')
    ExportableAutoScalingGroupField = Shapes::StringShape.new(name: 'ExportableAutoScalingGroupField')
    ExportableAutoScalingGroupFields = Shapes::ListShape.new(name: 'ExportableAutoScalingGroupFields')
    ExportableInstanceField = Shapes::StringShape.new(name: 'ExportableInstanceField')
    ExportableInstanceFields = Shapes::ListShape.new(name: 'ExportableInstanceFields')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FileFormat = Shapes::StringShape.new(name: 'FileFormat')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    Filters = Shapes::ListShape.new(name: 'Filters')
    Finding = Shapes::StringShape.new(name: 'Finding')
    GetAutoScalingGroupRecommendationsRequest = Shapes::StructureShape.new(name: 'GetAutoScalingGroupRecommendationsRequest')
    GetAutoScalingGroupRecommendationsResponse = Shapes::StructureShape.new(name: 'GetAutoScalingGroupRecommendationsResponse')
    GetEC2InstanceRecommendationsRequest = Shapes::StructureShape.new(name: 'GetEC2InstanceRecommendationsRequest')
    GetEC2InstanceRecommendationsResponse = Shapes::StructureShape.new(name: 'GetEC2InstanceRecommendationsResponse')
    GetEC2RecommendationProjectedMetricsRequest = Shapes::StructureShape.new(name: 'GetEC2RecommendationProjectedMetricsRequest')
    GetEC2RecommendationProjectedMetricsResponse = Shapes::StructureShape.new(name: 'GetEC2RecommendationProjectedMetricsResponse')
    GetEnrollmentStatusRequest = Shapes::StructureShape.new(name: 'GetEnrollmentStatusRequest')
    GetEnrollmentStatusResponse = Shapes::StructureShape.new(name: 'GetEnrollmentStatusResponse')
    GetRecommendationError = Shapes::StructureShape.new(name: 'GetRecommendationError')
    GetRecommendationErrors = Shapes::ListShape.new(name: 'GetRecommendationErrors')
    GetRecommendationSummariesRequest = Shapes::StructureShape.new(name: 'GetRecommendationSummariesRequest')
    GetRecommendationSummariesResponse = Shapes::StructureShape.new(name: 'GetRecommendationSummariesResponse')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    IncludeMemberAccounts = Shapes::BooleanShape.new(name: 'IncludeMemberAccounts')
    InstanceArn = Shapes::StringShape.new(name: 'InstanceArn')
    InstanceArns = Shapes::ListShape.new(name: 'InstanceArns')
    InstanceName = Shapes::StringShape.new(name: 'InstanceName')
    InstanceRecommendation = Shapes::StructureShape.new(name: 'InstanceRecommendation')
    InstanceRecommendationOption = Shapes::StructureShape.new(name: 'InstanceRecommendationOption')
    InstanceRecommendations = Shapes::ListShape.new(name: 'InstanceRecommendations')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    JobFilter = Shapes::StructureShape.new(name: 'JobFilter')
    JobFilterName = Shapes::StringShape.new(name: 'JobFilterName')
    JobFilters = Shapes::ListShape.new(name: 'JobFilters')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobIds = Shapes::ListShape.new(name: 'JobIds')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    LastRefreshTimestamp = Shapes::TimestampShape.new(name: 'LastRefreshTimestamp')
    LastUpdatedTimestamp = Shapes::TimestampShape.new(name: 'LastUpdatedTimestamp')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LookBackPeriodInDays = Shapes::FloatShape.new(name: 'LookBackPeriodInDays')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxSize = Shapes::IntegerShape.new(name: 'MaxSize')
    MemberAccountsEnrolled = Shapes::BooleanShape.new(name: 'MemberAccountsEnrolled')
    Message = Shapes::StringShape.new(name: 'Message')
    MetadataKey = Shapes::StringShape.new(name: 'MetadataKey')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricStatistic = Shapes::StringShape.new(name: 'MetricStatistic')
    MetricValue = Shapes::FloatShape.new(name: 'MetricValue')
    MetricValues = Shapes::ListShape.new(name: 'MetricValues')
    MinSize = Shapes::IntegerShape.new(name: 'MinSize')
    MissingAuthenticationToken = Shapes::StructureShape.new(name: 'MissingAuthenticationToken')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OptInRequiredException = Shapes::StructureShape.new(name: 'OptInRequiredException')
    PerformanceRisk = Shapes::FloatShape.new(name: 'PerformanceRisk')
    Period = Shapes::IntegerShape.new(name: 'Period')
    ProjectedMetric = Shapes::StructureShape.new(name: 'ProjectedMetric')
    ProjectedMetrics = Shapes::ListShape.new(name: 'ProjectedMetrics')
    ProjectedUtilizationMetrics = Shapes::ListShape.new(name: 'ProjectedUtilizationMetrics')
    Rank = Shapes::IntegerShape.new(name: 'Rank')
    RecommendationExportJob = Shapes::StructureShape.new(name: 'RecommendationExportJob')
    RecommendationExportJobs = Shapes::ListShape.new(name: 'RecommendationExportJobs')
    RecommendationOptions = Shapes::ListShape.new(name: 'RecommendationOptions')
    RecommendationSource = Shapes::StructureShape.new(name: 'RecommendationSource')
    RecommendationSourceArn = Shapes::StringShape.new(name: 'RecommendationSourceArn')
    RecommendationSourceType = Shapes::StringShape.new(name: 'RecommendationSourceType')
    RecommendationSources = Shapes::ListShape.new(name: 'RecommendationSources')
    RecommendationSummaries = Shapes::ListShape.new(name: 'RecommendationSummaries')
    RecommendationSummary = Shapes::StructureShape.new(name: 'RecommendationSummary')
    RecommendedInstanceType = Shapes::StringShape.new(name: 'RecommendedInstanceType')
    RecommendedOptionProjectedMetric = Shapes::StructureShape.new(name: 'RecommendedOptionProjectedMetric')
    RecommendedOptionProjectedMetrics = Shapes::ListShape.new(name: 'RecommendedOptionProjectedMetrics')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    S3Destination = Shapes::StructureShape.new(name: 'S3Destination')
    S3DestinationConfig = Shapes::StructureShape.new(name: 'S3DestinationConfig')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    Summaries = Shapes::ListShape.new(name: 'Summaries')
    Summary = Shapes::StructureShape.new(name: 'Summary')
    SummaryValue = Shapes::FloatShape.new(name: 'SummaryValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Timestamps = Shapes::ListShape.new(name: 'Timestamps')
    UpdateEnrollmentStatusRequest = Shapes::StructureShape.new(name: 'UpdateEnrollmentStatusRequest')
    UpdateEnrollmentStatusResponse = Shapes::StructureShape.new(name: 'UpdateEnrollmentStatusResponse')
    UtilizationMetric = Shapes::StructureShape.new(name: 'UtilizationMetric')
    UtilizationMetrics = Shapes::ListShape.new(name: 'UtilizationMetrics')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIds.member = Shapes::ShapeRef.new(shape: AccountId)

    AutoScalingGroupArns.member = Shapes::ShapeRef.new(shape: AutoScalingGroupArn)

    AutoScalingGroupConfiguration.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: DesiredCapacity, location_name: "desiredCapacity"))
    AutoScalingGroupConfiguration.add_member(:min_size, Shapes::ShapeRef.new(shape: MinSize, location_name: "minSize"))
    AutoScalingGroupConfiguration.add_member(:max_size, Shapes::ShapeRef.new(shape: MaxSize, location_name: "maxSize"))
    AutoScalingGroupConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    AutoScalingGroupConfiguration.struct_class = Types::AutoScalingGroupConfiguration

    AutoScalingGroupRecommendation.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    AutoScalingGroupRecommendation.add_member(:auto_scaling_group_arn, Shapes::ShapeRef.new(shape: AutoScalingGroupArn, location_name: "autoScalingGroupArn"))
    AutoScalingGroupRecommendation.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: AutoScalingGroupName, location_name: "autoScalingGroupName"))
    AutoScalingGroupRecommendation.add_member(:finding, Shapes::ShapeRef.new(shape: Finding, location_name: "finding"))
    AutoScalingGroupRecommendation.add_member(:utilization_metrics, Shapes::ShapeRef.new(shape: UtilizationMetrics, location_name: "utilizationMetrics"))
    AutoScalingGroupRecommendation.add_member(:look_back_period_in_days, Shapes::ShapeRef.new(shape: LookBackPeriodInDays, location_name: "lookBackPeriodInDays"))
    AutoScalingGroupRecommendation.add_member(:current_configuration, Shapes::ShapeRef.new(shape: AutoScalingGroupConfiguration, location_name: "currentConfiguration"))
    AutoScalingGroupRecommendation.add_member(:recommendation_options, Shapes::ShapeRef.new(shape: AutoScalingGroupRecommendationOptions, location_name: "recommendationOptions"))
    AutoScalingGroupRecommendation.add_member(:last_refresh_timestamp, Shapes::ShapeRef.new(shape: LastRefreshTimestamp, location_name: "lastRefreshTimestamp"))
    AutoScalingGroupRecommendation.struct_class = Types::AutoScalingGroupRecommendation

    AutoScalingGroupRecommendationOption.add_member(:configuration, Shapes::ShapeRef.new(shape: AutoScalingGroupConfiguration, location_name: "configuration"))
    AutoScalingGroupRecommendationOption.add_member(:projected_utilization_metrics, Shapes::ShapeRef.new(shape: ProjectedUtilizationMetrics, location_name: "projectedUtilizationMetrics"))
    AutoScalingGroupRecommendationOption.add_member(:performance_risk, Shapes::ShapeRef.new(shape: PerformanceRisk, location_name: "performanceRisk"))
    AutoScalingGroupRecommendationOption.add_member(:rank, Shapes::ShapeRef.new(shape: Rank, location_name: "rank"))
    AutoScalingGroupRecommendationOption.struct_class = Types::AutoScalingGroupRecommendationOption

    AutoScalingGroupRecommendationOptions.member = Shapes::ShapeRef.new(shape: AutoScalingGroupRecommendationOption)

    AutoScalingGroupRecommendations.member = Shapes::ShapeRef.new(shape: AutoScalingGroupRecommendation)

    DescribeRecommendationExportJobsRequest.add_member(:job_ids, Shapes::ShapeRef.new(shape: JobIds, location_name: "jobIds"))
    DescribeRecommendationExportJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: JobFilters, location_name: "filters"))
    DescribeRecommendationExportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRecommendationExportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeRecommendationExportJobsRequest.struct_class = Types::DescribeRecommendationExportJobsRequest

    DescribeRecommendationExportJobsResponse.add_member(:recommendation_export_jobs, Shapes::ShapeRef.new(shape: RecommendationExportJobs, location_name: "recommendationExportJobs"))
    DescribeRecommendationExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRecommendationExportJobsResponse.struct_class = Types::DescribeRecommendationExportJobsResponse

    ExportAutoScalingGroupRecommendationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    ExportAutoScalingGroupRecommendationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    ExportAutoScalingGroupRecommendationsRequest.add_member(:fields_to_export, Shapes::ShapeRef.new(shape: ExportableAutoScalingGroupFields, location_name: "fieldsToExport"))
    ExportAutoScalingGroupRecommendationsRequest.add_member(:s3_destination_config, Shapes::ShapeRef.new(shape: S3DestinationConfig, required: true, location_name: "s3DestinationConfig"))
    ExportAutoScalingGroupRecommendationsRequest.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, location_name: "fileFormat"))
    ExportAutoScalingGroupRecommendationsRequest.add_member(:include_member_accounts, Shapes::ShapeRef.new(shape: IncludeMemberAccounts, location_name: "includeMemberAccounts"))
    ExportAutoScalingGroupRecommendationsRequest.struct_class = Types::ExportAutoScalingGroupRecommendationsRequest

    ExportAutoScalingGroupRecommendationsResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    ExportAutoScalingGroupRecommendationsResponse.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3Destination, location_name: "s3Destination"))
    ExportAutoScalingGroupRecommendationsResponse.struct_class = Types::ExportAutoScalingGroupRecommendationsResponse

    ExportDestination.add_member(:s3, Shapes::ShapeRef.new(shape: S3Destination, location_name: "s3"))
    ExportDestination.struct_class = Types::ExportDestination

    ExportEC2InstanceRecommendationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    ExportEC2InstanceRecommendationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    ExportEC2InstanceRecommendationsRequest.add_member(:fields_to_export, Shapes::ShapeRef.new(shape: ExportableInstanceFields, location_name: "fieldsToExport"))
    ExportEC2InstanceRecommendationsRequest.add_member(:s3_destination_config, Shapes::ShapeRef.new(shape: S3DestinationConfig, required: true, location_name: "s3DestinationConfig"))
    ExportEC2InstanceRecommendationsRequest.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, location_name: "fileFormat"))
    ExportEC2InstanceRecommendationsRequest.add_member(:include_member_accounts, Shapes::ShapeRef.new(shape: IncludeMemberAccounts, location_name: "includeMemberAccounts"))
    ExportEC2InstanceRecommendationsRequest.struct_class = Types::ExportEC2InstanceRecommendationsRequest

    ExportEC2InstanceRecommendationsResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    ExportEC2InstanceRecommendationsResponse.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3Destination, location_name: "s3Destination"))
    ExportEC2InstanceRecommendationsResponse.struct_class = Types::ExportEC2InstanceRecommendationsResponse

    ExportableAutoScalingGroupFields.member = Shapes::ShapeRef.new(shape: ExportableAutoScalingGroupField)

    ExportableInstanceFields.member = Shapes::ShapeRef.new(shape: ExportableInstanceField)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "values"))
    Filter.struct_class = Types::Filter

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetAutoScalingGroupRecommendationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    GetAutoScalingGroupRecommendationsRequest.add_member(:auto_scaling_group_arns, Shapes::ShapeRef.new(shape: AutoScalingGroupArns, location_name: "autoScalingGroupArns"))
    GetAutoScalingGroupRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAutoScalingGroupRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetAutoScalingGroupRecommendationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    GetAutoScalingGroupRecommendationsRequest.struct_class = Types::GetAutoScalingGroupRecommendationsRequest

    GetAutoScalingGroupRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAutoScalingGroupRecommendationsResponse.add_member(:auto_scaling_group_recommendations, Shapes::ShapeRef.new(shape: AutoScalingGroupRecommendations, location_name: "autoScalingGroupRecommendations"))
    GetAutoScalingGroupRecommendationsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: GetRecommendationErrors, location_name: "errors"))
    GetAutoScalingGroupRecommendationsResponse.struct_class = Types::GetAutoScalingGroupRecommendationsResponse

    GetEC2InstanceRecommendationsRequest.add_member(:instance_arns, Shapes::ShapeRef.new(shape: InstanceArns, location_name: "instanceArns"))
    GetEC2InstanceRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetEC2InstanceRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetEC2InstanceRecommendationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    GetEC2InstanceRecommendationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    GetEC2InstanceRecommendationsRequest.struct_class = Types::GetEC2InstanceRecommendationsRequest

    GetEC2InstanceRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetEC2InstanceRecommendationsResponse.add_member(:instance_recommendations, Shapes::ShapeRef.new(shape: InstanceRecommendations, location_name: "instanceRecommendations"))
    GetEC2InstanceRecommendationsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: GetRecommendationErrors, location_name: "errors"))
    GetEC2InstanceRecommendationsResponse.struct_class = Types::GetEC2InstanceRecommendationsResponse

    GetEC2RecommendationProjectedMetricsRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "instanceArn"))
    GetEC2RecommendationProjectedMetricsRequest.add_member(:stat, Shapes::ShapeRef.new(shape: MetricStatistic, required: true, location_name: "stat"))
    GetEC2RecommendationProjectedMetricsRequest.add_member(:period, Shapes::ShapeRef.new(shape: Period, required: true, location_name: "period"))
    GetEC2RecommendationProjectedMetricsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    GetEC2RecommendationProjectedMetricsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    GetEC2RecommendationProjectedMetricsRequest.struct_class = Types::GetEC2RecommendationProjectedMetricsRequest

    GetEC2RecommendationProjectedMetricsResponse.add_member(:recommended_option_projected_metrics, Shapes::ShapeRef.new(shape: RecommendedOptionProjectedMetrics, location_name: "recommendedOptionProjectedMetrics"))
    GetEC2RecommendationProjectedMetricsResponse.struct_class = Types::GetEC2RecommendationProjectedMetricsResponse

    GetEnrollmentStatusRequest.struct_class = Types::GetEnrollmentStatusRequest

    GetEnrollmentStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    GetEnrollmentStatusResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    GetEnrollmentStatusResponse.add_member(:member_accounts_enrolled, Shapes::ShapeRef.new(shape: MemberAccountsEnrolled, location_name: "memberAccountsEnrolled"))
    GetEnrollmentStatusResponse.struct_class = Types::GetEnrollmentStatusResponse

    GetRecommendationError.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "identifier"))
    GetRecommendationError.add_member(:code, Shapes::ShapeRef.new(shape: Code, location_name: "code"))
    GetRecommendationError.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    GetRecommendationError.struct_class = Types::GetRecommendationError

    GetRecommendationErrors.member = Shapes::ShapeRef.new(shape: GetRecommendationError)

    GetRecommendationSummariesRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    GetRecommendationSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetRecommendationSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetRecommendationSummariesRequest.struct_class = Types::GetRecommendationSummariesRequest

    GetRecommendationSummariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetRecommendationSummariesResponse.add_member(:recommendation_summaries, Shapes::ShapeRef.new(shape: RecommendationSummaries, location_name: "recommendationSummaries"))
    GetRecommendationSummariesResponse.struct_class = Types::GetRecommendationSummariesResponse

    InstanceArns.member = Shapes::ShapeRef.new(shape: InstanceArn)

    InstanceRecommendation.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "instanceArn"))
    InstanceRecommendation.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    InstanceRecommendation.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, location_name: "instanceName"))
    InstanceRecommendation.add_member(:current_instance_type, Shapes::ShapeRef.new(shape: CurrentInstanceType, location_name: "currentInstanceType"))
    InstanceRecommendation.add_member(:finding, Shapes::ShapeRef.new(shape: Finding, location_name: "finding"))
    InstanceRecommendation.add_member(:utilization_metrics, Shapes::ShapeRef.new(shape: UtilizationMetrics, location_name: "utilizationMetrics"))
    InstanceRecommendation.add_member(:look_back_period_in_days, Shapes::ShapeRef.new(shape: LookBackPeriodInDays, location_name: "lookBackPeriodInDays"))
    InstanceRecommendation.add_member(:recommendation_options, Shapes::ShapeRef.new(shape: RecommendationOptions, location_name: "recommendationOptions"))
    InstanceRecommendation.add_member(:recommendation_sources, Shapes::ShapeRef.new(shape: RecommendationSources, location_name: "recommendationSources"))
    InstanceRecommendation.add_member(:last_refresh_timestamp, Shapes::ShapeRef.new(shape: LastRefreshTimestamp, location_name: "lastRefreshTimestamp"))
    InstanceRecommendation.struct_class = Types::InstanceRecommendation

    InstanceRecommendationOption.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    InstanceRecommendationOption.add_member(:projected_utilization_metrics, Shapes::ShapeRef.new(shape: ProjectedUtilizationMetrics, location_name: "projectedUtilizationMetrics"))
    InstanceRecommendationOption.add_member(:performance_risk, Shapes::ShapeRef.new(shape: PerformanceRisk, location_name: "performanceRisk"))
    InstanceRecommendationOption.add_member(:rank, Shapes::ShapeRef.new(shape: Rank, location_name: "rank"))
    InstanceRecommendationOption.struct_class = Types::InstanceRecommendationOption

    InstanceRecommendations.member = Shapes::ShapeRef.new(shape: InstanceRecommendation)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    JobFilter.add_member(:name, Shapes::ShapeRef.new(shape: JobFilterName, location_name: "name"))
    JobFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "values"))
    JobFilter.struct_class = Types::JobFilter

    JobFilters.member = Shapes::ShapeRef.new(shape: JobFilter)

    JobIds.member = Shapes::ShapeRef.new(shape: JobId)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    MetricValues.member = Shapes::ShapeRef.new(shape: MetricValue)

    MissingAuthenticationToken.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    MissingAuthenticationToken.struct_class = Types::MissingAuthenticationToken

    OptInRequiredException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    OptInRequiredException.struct_class = Types::OptInRequiredException

    ProjectedMetric.add_member(:name, Shapes::ShapeRef.new(shape: MetricName, location_name: "name"))
    ProjectedMetric.add_member(:timestamps, Shapes::ShapeRef.new(shape: Timestamps, location_name: "timestamps"))
    ProjectedMetric.add_member(:values, Shapes::ShapeRef.new(shape: MetricValues, location_name: "values"))
    ProjectedMetric.struct_class = Types::ProjectedMetric

    ProjectedMetrics.member = Shapes::ShapeRef.new(shape: ProjectedMetric)

    ProjectedUtilizationMetrics.member = Shapes::ShapeRef.new(shape: UtilizationMetric)

    RecommendationExportJob.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    RecommendationExportJob.add_member(:destination, Shapes::ShapeRef.new(shape: ExportDestination, location_name: "destination"))
    RecommendationExportJob.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    RecommendationExportJob.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    RecommendationExportJob.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "creationTimestamp"))
    RecommendationExportJob.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: LastUpdatedTimestamp, location_name: "lastUpdatedTimestamp"))
    RecommendationExportJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    RecommendationExportJob.struct_class = Types::RecommendationExportJob

    RecommendationExportJobs.member = Shapes::ShapeRef.new(shape: RecommendationExportJob)

    RecommendationOptions.member = Shapes::ShapeRef.new(shape: InstanceRecommendationOption)

    RecommendationSource.add_member(:recommendation_source_arn, Shapes::ShapeRef.new(shape: RecommendationSourceArn, location_name: "recommendationSourceArn"))
    RecommendationSource.add_member(:recommendation_source_type, Shapes::ShapeRef.new(shape: RecommendationSourceType, location_name: "recommendationSourceType"))
    RecommendationSource.struct_class = Types::RecommendationSource

    RecommendationSources.member = Shapes::ShapeRef.new(shape: RecommendationSource)

    RecommendationSummaries.member = Shapes::ShapeRef.new(shape: RecommendationSummary)

    RecommendationSummary.add_member(:summaries, Shapes::ShapeRef.new(shape: Summaries, location_name: "summaries"))
    RecommendationSummary.add_member(:recommendation_resource_type, Shapes::ShapeRef.new(shape: RecommendationSourceType, location_name: "recommendationResourceType"))
    RecommendationSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    RecommendationSummary.struct_class = Types::RecommendationSummary

    RecommendedOptionProjectedMetric.add_member(:recommended_instance_type, Shapes::ShapeRef.new(shape: RecommendedInstanceType, location_name: "recommendedInstanceType"))
    RecommendedOptionProjectedMetric.add_member(:rank, Shapes::ShapeRef.new(shape: Rank, location_name: "rank"))
    RecommendedOptionProjectedMetric.add_member(:projected_metrics, Shapes::ShapeRef.new(shape: ProjectedMetrics, location_name: "projectedMetrics"))
    RecommendedOptionProjectedMetric.struct_class = Types::RecommendedOptionProjectedMetric

    RecommendedOptionProjectedMetrics.member = Shapes::ShapeRef.new(shape: RecommendedOptionProjectedMetric)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Destination.add_member(:bucket, Shapes::ShapeRef.new(shape: DestinationBucket, location_name: "bucket"))
    S3Destination.add_member(:key, Shapes::ShapeRef.new(shape: DestinationKey, location_name: "key"))
    S3Destination.add_member(:metadata_key, Shapes::ShapeRef.new(shape: MetadataKey, location_name: "metadataKey"))
    S3Destination.struct_class = Types::S3Destination

    S3DestinationConfig.add_member(:bucket, Shapes::ShapeRef.new(shape: DestinationBucket, location_name: "bucket"))
    S3DestinationConfig.add_member(:key_prefix, Shapes::ShapeRef.new(shape: DestinationKeyPrefix, location_name: "keyPrefix"))
    S3DestinationConfig.struct_class = Types::S3DestinationConfig

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    Summaries.member = Shapes::ShapeRef.new(shape: Summary)

    Summary.add_member(:name, Shapes::ShapeRef.new(shape: Finding, location_name: "name"))
    Summary.add_member(:value, Shapes::ShapeRef.new(shape: SummaryValue, location_name: "value"))
    Summary.struct_class = Types::Summary

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Timestamps.member = Shapes::ShapeRef.new(shape: Timestamp)

    UpdateEnrollmentStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    UpdateEnrollmentStatusRequest.add_member(:include_member_accounts, Shapes::ShapeRef.new(shape: IncludeMemberAccounts, location_name: "includeMemberAccounts"))
    UpdateEnrollmentStatusRequest.struct_class = Types::UpdateEnrollmentStatusRequest

    UpdateEnrollmentStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    UpdateEnrollmentStatusResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    UpdateEnrollmentStatusResponse.struct_class = Types::UpdateEnrollmentStatusResponse

    UtilizationMetric.add_member(:name, Shapes::ShapeRef.new(shape: MetricName, location_name: "name"))
    UtilizationMetric.add_member(:statistic, Shapes::ShapeRef.new(shape: MetricStatistic, location_name: "statistic"))
    UtilizationMetric.add_member(:value, Shapes::ShapeRef.new(shape: MetricValue, location_name: "value"))
    UtilizationMetric.struct_class = Types::UtilizationMetric

    UtilizationMetrics.member = Shapes::ShapeRef.new(shape: UtilizationMetric)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-11-01"

      api.metadata = {
        "apiVersion" => "2019-11-01",
        "endpointPrefix" => "compute-optimizer",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "AWS Compute Optimizer",
        "serviceId" => "Compute Optimizer",
        "signatureVersion" => "v4",
        "signingName" => "compute-optimizer",
        "targetPrefix" => "ComputeOptimizerService",
        "uid" => "compute-optimizer-2019-11-01",
      }

      api.add_operation(:describe_recommendation_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRecommendationExportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRecommendationExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRecommendationExportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MissingAuthenticationToken)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:export_auto_scaling_group_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportAutoScalingGroupRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExportAutoScalingGroupRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportAutoScalingGroupRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingAuthenticationToken)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:export_ec2_instance_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportEC2InstanceRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExportEC2InstanceRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportEC2InstanceRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingAuthenticationToken)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_auto_scaling_group_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutoScalingGroupRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAutoScalingGroupRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutoScalingGroupRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MissingAuthenticationToken)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_ec2_instance_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEC2InstanceRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEC2InstanceRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEC2InstanceRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MissingAuthenticationToken)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_ec2_recommendation_projected_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEC2RecommendationProjectedMetrics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEC2RecommendationProjectedMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEC2RecommendationProjectedMetricsResponse)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MissingAuthenticationToken)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_enrollment_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnrollmentStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEnrollmentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEnrollmentStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingAuthenticationToken)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_recommendation_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecommendationSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRecommendationSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecommendationSummariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: OptInRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingAuthenticationToken)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_enrollment_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnrollmentStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnrollmentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnrollmentStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MissingAuthenticationToken)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
