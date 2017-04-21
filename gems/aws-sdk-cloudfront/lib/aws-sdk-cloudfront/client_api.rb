# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFront
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDenied = Shapes::StructureShape.new(name: 'AccessDenied')
    ActiveTrustedSigners = Shapes::StructureShape.new(name: 'ActiveTrustedSigners')
    AliasList = Shapes::ListShape.new(name: 'AliasList')
    Aliases = Shapes::StructureShape.new(name: 'Aliases')
    AllowedMethods = Shapes::StructureShape.new(name: 'AllowedMethods')
    AwsAccountNumberList = Shapes::ListShape.new(name: 'AwsAccountNumberList')
    BatchTooLarge = Shapes::StructureShape.new(name: 'BatchTooLarge')
    CNAMEAlreadyExists = Shapes::StructureShape.new(name: 'CNAMEAlreadyExists')
    CacheBehavior = Shapes::StructureShape.new(name: 'CacheBehavior')
    CacheBehaviorList = Shapes::ListShape.new(name: 'CacheBehaviorList')
    CacheBehaviors = Shapes::StructureShape.new(name: 'CacheBehaviors')
    CachedMethods = Shapes::StructureShape.new(name: 'CachedMethods')
    CertificateSource = Shapes::StringShape.new(name: 'CertificateSource')
    CloudFrontOriginAccessIdentity = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentity')
    CloudFrontOriginAccessIdentityAlreadyExists = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentityAlreadyExists')
    CloudFrontOriginAccessIdentityConfig = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentityConfig')
    CloudFrontOriginAccessIdentityInUse = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentityInUse')
    CloudFrontOriginAccessIdentityList = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentityList')
    CloudFrontOriginAccessIdentitySummary = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentitySummary')
    CloudFrontOriginAccessIdentitySummaryList = Shapes::ListShape.new(name: 'CloudFrontOriginAccessIdentitySummaryList')
    CookieNameList = Shapes::ListShape.new(name: 'CookieNameList')
    CookieNames = Shapes::StructureShape.new(name: 'CookieNames')
    CookiePreference = Shapes::StructureShape.new(name: 'CookiePreference')
    CreateCloudFrontOriginAccessIdentityRequest = Shapes::StructureShape.new(name: 'CreateCloudFrontOriginAccessIdentityRequest')
    CreateCloudFrontOriginAccessIdentityResult = Shapes::StructureShape.new(name: 'CreateCloudFrontOriginAccessIdentityResult')
    CreateDistributionRequest = Shapes::StructureShape.new(name: 'CreateDistributionRequest')
    CreateDistributionResult = Shapes::StructureShape.new(name: 'CreateDistributionResult')
    CreateDistributionWithTagsRequest = Shapes::StructureShape.new(name: 'CreateDistributionWithTagsRequest')
    CreateDistributionWithTagsResult = Shapes::StructureShape.new(name: 'CreateDistributionWithTagsResult')
    CreateInvalidationRequest = Shapes::StructureShape.new(name: 'CreateInvalidationRequest')
    CreateInvalidationResult = Shapes::StructureShape.new(name: 'CreateInvalidationResult')
    CreateStreamingDistributionRequest = Shapes::StructureShape.new(name: 'CreateStreamingDistributionRequest')
    CreateStreamingDistributionResult = Shapes::StructureShape.new(name: 'CreateStreamingDistributionResult')
    CreateStreamingDistributionWithTagsRequest = Shapes::StructureShape.new(name: 'CreateStreamingDistributionWithTagsRequest')
    CreateStreamingDistributionWithTagsResult = Shapes::StructureShape.new(name: 'CreateStreamingDistributionWithTagsResult')
    CustomErrorResponse = Shapes::StructureShape.new(name: 'CustomErrorResponse')
    CustomErrorResponseList = Shapes::ListShape.new(name: 'CustomErrorResponseList')
    CustomErrorResponses = Shapes::StructureShape.new(name: 'CustomErrorResponses')
    CustomHeaders = Shapes::StructureShape.new(name: 'CustomHeaders')
    CustomOriginConfig = Shapes::StructureShape.new(name: 'CustomOriginConfig')
    DefaultCacheBehavior = Shapes::StructureShape.new(name: 'DefaultCacheBehavior')
    DeleteCloudFrontOriginAccessIdentityRequest = Shapes::StructureShape.new(name: 'DeleteCloudFrontOriginAccessIdentityRequest')
    DeleteDistributionRequest = Shapes::StructureShape.new(name: 'DeleteDistributionRequest')
    DeleteStreamingDistributionRequest = Shapes::StructureShape.new(name: 'DeleteStreamingDistributionRequest')
    Distribution = Shapes::StructureShape.new(name: 'Distribution')
    DistributionAlreadyExists = Shapes::StructureShape.new(name: 'DistributionAlreadyExists')
    DistributionConfig = Shapes::StructureShape.new(name: 'DistributionConfig')
    DistributionConfigWithTags = Shapes::StructureShape.new(name: 'DistributionConfigWithTags')
    DistributionList = Shapes::StructureShape.new(name: 'DistributionList')
    DistributionNotDisabled = Shapes::StructureShape.new(name: 'DistributionNotDisabled')
    DistributionSummary = Shapes::StructureShape.new(name: 'DistributionSummary')
    DistributionSummaryList = Shapes::ListShape.new(name: 'DistributionSummaryList')
    EventType = Shapes::StringShape.new(name: 'EventType')
    ForwardedValues = Shapes::StructureShape.new(name: 'ForwardedValues')
    GeoRestriction = Shapes::StructureShape.new(name: 'GeoRestriction')
    GeoRestrictionType = Shapes::StringShape.new(name: 'GeoRestrictionType')
    GetCloudFrontOriginAccessIdentityConfigRequest = Shapes::StructureShape.new(name: 'GetCloudFrontOriginAccessIdentityConfigRequest')
    GetCloudFrontOriginAccessIdentityConfigResult = Shapes::StructureShape.new(name: 'GetCloudFrontOriginAccessIdentityConfigResult')
    GetCloudFrontOriginAccessIdentityRequest = Shapes::StructureShape.new(name: 'GetCloudFrontOriginAccessIdentityRequest')
    GetCloudFrontOriginAccessIdentityResult = Shapes::StructureShape.new(name: 'GetCloudFrontOriginAccessIdentityResult')
    GetDistributionConfigRequest = Shapes::StructureShape.new(name: 'GetDistributionConfigRequest')
    GetDistributionConfigResult = Shapes::StructureShape.new(name: 'GetDistributionConfigResult')
    GetDistributionRequest = Shapes::StructureShape.new(name: 'GetDistributionRequest')
    GetDistributionResult = Shapes::StructureShape.new(name: 'GetDistributionResult')
    GetInvalidationRequest = Shapes::StructureShape.new(name: 'GetInvalidationRequest')
    GetInvalidationResult = Shapes::StructureShape.new(name: 'GetInvalidationResult')
    GetStreamingDistributionConfigRequest = Shapes::StructureShape.new(name: 'GetStreamingDistributionConfigRequest')
    GetStreamingDistributionConfigResult = Shapes::StructureShape.new(name: 'GetStreamingDistributionConfigResult')
    GetStreamingDistributionRequest = Shapes::StructureShape.new(name: 'GetStreamingDistributionRequest')
    GetStreamingDistributionResult = Shapes::StructureShape.new(name: 'GetStreamingDistributionResult')
    HeaderList = Shapes::ListShape.new(name: 'HeaderList')
    Headers = Shapes::StructureShape.new(name: 'Headers')
    HttpVersion = Shapes::StringShape.new(name: 'HttpVersion')
    IllegalUpdate = Shapes::StructureShape.new(name: 'IllegalUpdate')
    InconsistentQuantities = Shapes::StructureShape.new(name: 'InconsistentQuantities')
    InvalidArgument = Shapes::StructureShape.new(name: 'InvalidArgument')
    InvalidDefaultRootObject = Shapes::StructureShape.new(name: 'InvalidDefaultRootObject')
    InvalidErrorCode = Shapes::StructureShape.new(name: 'InvalidErrorCode')
    InvalidForwardCookies = Shapes::StructureShape.new(name: 'InvalidForwardCookies')
    InvalidGeoRestrictionParameter = Shapes::StructureShape.new(name: 'InvalidGeoRestrictionParameter')
    InvalidHeadersForS3Origin = Shapes::StructureShape.new(name: 'InvalidHeadersForS3Origin')
    InvalidIfMatchVersion = Shapes::StructureShape.new(name: 'InvalidIfMatchVersion')
    InvalidLambdaFunctionAssociation = Shapes::StructureShape.new(name: 'InvalidLambdaFunctionAssociation')
    InvalidLocationCode = Shapes::StructureShape.new(name: 'InvalidLocationCode')
    InvalidMinimumProtocolVersion = Shapes::StructureShape.new(name: 'InvalidMinimumProtocolVersion')
    InvalidOrigin = Shapes::StructureShape.new(name: 'InvalidOrigin')
    InvalidOriginAccessIdentity = Shapes::StructureShape.new(name: 'InvalidOriginAccessIdentity')
    InvalidOriginKeepaliveTimeout = Shapes::StructureShape.new(name: 'InvalidOriginKeepaliveTimeout')
    InvalidOriginReadTimeout = Shapes::StructureShape.new(name: 'InvalidOriginReadTimeout')
    InvalidProtocolSettings = Shapes::StructureShape.new(name: 'InvalidProtocolSettings')
    InvalidQueryStringParameters = Shapes::StructureShape.new(name: 'InvalidQueryStringParameters')
    InvalidRelativePath = Shapes::StructureShape.new(name: 'InvalidRelativePath')
    InvalidRequiredProtocol = Shapes::StructureShape.new(name: 'InvalidRequiredProtocol')
    InvalidResponseCode = Shapes::StructureShape.new(name: 'InvalidResponseCode')
    InvalidTTLOrder = Shapes::StructureShape.new(name: 'InvalidTTLOrder')
    InvalidTagging = Shapes::StructureShape.new(name: 'InvalidTagging')
    InvalidViewerCertificate = Shapes::StructureShape.new(name: 'InvalidViewerCertificate')
    InvalidWebACLId = Shapes::StructureShape.new(name: 'InvalidWebACLId')
    Invalidation = Shapes::StructureShape.new(name: 'Invalidation')
    InvalidationBatch = Shapes::StructureShape.new(name: 'InvalidationBatch')
    InvalidationList = Shapes::StructureShape.new(name: 'InvalidationList')
    InvalidationSummary = Shapes::StructureShape.new(name: 'InvalidationSummary')
    InvalidationSummaryList = Shapes::ListShape.new(name: 'InvalidationSummaryList')
    ItemSelection = Shapes::StringShape.new(name: 'ItemSelection')
    KeyPairIdList = Shapes::ListShape.new(name: 'KeyPairIdList')
    KeyPairIds = Shapes::StructureShape.new(name: 'KeyPairIds')
    LambdaFunctionAssociation = Shapes::StructureShape.new(name: 'LambdaFunctionAssociation')
    LambdaFunctionAssociationList = Shapes::ListShape.new(name: 'LambdaFunctionAssociationList')
    LambdaFunctionAssociations = Shapes::StructureShape.new(name: 'LambdaFunctionAssociations')
    ListCloudFrontOriginAccessIdentitiesRequest = Shapes::StructureShape.new(name: 'ListCloudFrontOriginAccessIdentitiesRequest')
    ListCloudFrontOriginAccessIdentitiesResult = Shapes::StructureShape.new(name: 'ListCloudFrontOriginAccessIdentitiesResult')
    ListDistributionsByWebACLIdRequest = Shapes::StructureShape.new(name: 'ListDistributionsByWebACLIdRequest')
    ListDistributionsByWebACLIdResult = Shapes::StructureShape.new(name: 'ListDistributionsByWebACLIdResult')
    ListDistributionsRequest = Shapes::StructureShape.new(name: 'ListDistributionsRequest')
    ListDistributionsResult = Shapes::StructureShape.new(name: 'ListDistributionsResult')
    ListInvalidationsRequest = Shapes::StructureShape.new(name: 'ListInvalidationsRequest')
    ListInvalidationsResult = Shapes::StructureShape.new(name: 'ListInvalidationsResult')
    ListStreamingDistributionsRequest = Shapes::StructureShape.new(name: 'ListStreamingDistributionsRequest')
    ListStreamingDistributionsResult = Shapes::StructureShape.new(name: 'ListStreamingDistributionsResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    LocationList = Shapes::ListShape.new(name: 'LocationList')
    LoggingConfig = Shapes::StructureShape.new(name: 'LoggingConfig')
    Method = Shapes::StringShape.new(name: 'Method')
    MethodsList = Shapes::ListShape.new(name: 'MethodsList')
    MinimumProtocolVersion = Shapes::StringShape.new(name: 'MinimumProtocolVersion')
    MissingBody = Shapes::StructureShape.new(name: 'MissingBody')
    NoSuchCloudFrontOriginAccessIdentity = Shapes::StructureShape.new(name: 'NoSuchCloudFrontOriginAccessIdentity')
    NoSuchDistribution = Shapes::StructureShape.new(name: 'NoSuchDistribution')
    NoSuchInvalidation = Shapes::StructureShape.new(name: 'NoSuchInvalidation')
    NoSuchOrigin = Shapes::StructureShape.new(name: 'NoSuchOrigin')
    NoSuchResource = Shapes::StructureShape.new(name: 'NoSuchResource')
    NoSuchStreamingDistribution = Shapes::StructureShape.new(name: 'NoSuchStreamingDistribution')
    Origin = Shapes::StructureShape.new(name: 'Origin')
    OriginCustomHeader = Shapes::StructureShape.new(name: 'OriginCustomHeader')
    OriginCustomHeadersList = Shapes::ListShape.new(name: 'OriginCustomHeadersList')
    OriginList = Shapes::ListShape.new(name: 'OriginList')
    OriginProtocolPolicy = Shapes::StringShape.new(name: 'OriginProtocolPolicy')
    OriginSslProtocols = Shapes::StructureShape.new(name: 'OriginSslProtocols')
    Origins = Shapes::StructureShape.new(name: 'Origins')
    PathList = Shapes::ListShape.new(name: 'PathList')
    Paths = Shapes::StructureShape.new(name: 'Paths')
    PreconditionFailed = Shapes::StructureShape.new(name: 'PreconditionFailed')
    PriceClass = Shapes::StringShape.new(name: 'PriceClass')
    QueryStringCacheKeys = Shapes::StructureShape.new(name: 'QueryStringCacheKeys')
    QueryStringCacheKeysList = Shapes::ListShape.new(name: 'QueryStringCacheKeysList')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    Restrictions = Shapes::StructureShape.new(name: 'Restrictions')
    S3Origin = Shapes::StructureShape.new(name: 'S3Origin')
    S3OriginConfig = Shapes::StructureShape.new(name: 'S3OriginConfig')
    SSLSupportMethod = Shapes::StringShape.new(name: 'SSLSupportMethod')
    Signer = Shapes::StructureShape.new(name: 'Signer')
    SignerList = Shapes::ListShape.new(name: 'SignerList')
    SslProtocol = Shapes::StringShape.new(name: 'SslProtocol')
    SslProtocolsList = Shapes::ListShape.new(name: 'SslProtocolsList')
    StreamingDistribution = Shapes::StructureShape.new(name: 'StreamingDistribution')
    StreamingDistributionAlreadyExists = Shapes::StructureShape.new(name: 'StreamingDistributionAlreadyExists')
    StreamingDistributionConfig = Shapes::StructureShape.new(name: 'StreamingDistributionConfig')
    StreamingDistributionConfigWithTags = Shapes::StructureShape.new(name: 'StreamingDistributionConfigWithTags')
    StreamingDistributionList = Shapes::StructureShape.new(name: 'StreamingDistributionList')
    StreamingDistributionNotDisabled = Shapes::StructureShape.new(name: 'StreamingDistributionNotDisabled')
    StreamingDistributionSummary = Shapes::StructureShape.new(name: 'StreamingDistributionSummary')
    StreamingDistributionSummaryList = Shapes::ListShape.new(name: 'StreamingDistributionSummaryList')
    StreamingLoggingConfig = Shapes::StructureShape.new(name: 'StreamingLoggingConfig')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagKeys = Shapes::StructureShape.new(name: 'TagKeys')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::StructureShape.new(name: 'Tags')
    TooManyCacheBehaviors = Shapes::StructureShape.new(name: 'TooManyCacheBehaviors')
    TooManyCertificates = Shapes::StructureShape.new(name: 'TooManyCertificates')
    TooManyCloudFrontOriginAccessIdentities = Shapes::StructureShape.new(name: 'TooManyCloudFrontOriginAccessIdentities')
    TooManyCookieNamesInWhiteList = Shapes::StructureShape.new(name: 'TooManyCookieNamesInWhiteList')
    TooManyDistributionCNAMEs = Shapes::StructureShape.new(name: 'TooManyDistributionCNAMEs')
    TooManyDistributions = Shapes::StructureShape.new(name: 'TooManyDistributions')
    TooManyDistributionsWithLambdaAssociations = Shapes::StructureShape.new(name: 'TooManyDistributionsWithLambdaAssociations')
    TooManyHeadersInForwardedValues = Shapes::StructureShape.new(name: 'TooManyHeadersInForwardedValues')
    TooManyInvalidationsInProgress = Shapes::StructureShape.new(name: 'TooManyInvalidationsInProgress')
    TooManyLambdaFunctionAssociations = Shapes::StructureShape.new(name: 'TooManyLambdaFunctionAssociations')
    TooManyOriginCustomHeaders = Shapes::StructureShape.new(name: 'TooManyOriginCustomHeaders')
    TooManyOrigins = Shapes::StructureShape.new(name: 'TooManyOrigins')
    TooManyQueryStringParameters = Shapes::StructureShape.new(name: 'TooManyQueryStringParameters')
    TooManyStreamingDistributionCNAMEs = Shapes::StructureShape.new(name: 'TooManyStreamingDistributionCNAMEs')
    TooManyStreamingDistributions = Shapes::StructureShape.new(name: 'TooManyStreamingDistributions')
    TooManyTrustedSigners = Shapes::StructureShape.new(name: 'TooManyTrustedSigners')
    TrustedSignerDoesNotExist = Shapes::StructureShape.new(name: 'TrustedSignerDoesNotExist')
    TrustedSigners = Shapes::StructureShape.new(name: 'TrustedSigners')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateCloudFrontOriginAccessIdentityRequest = Shapes::StructureShape.new(name: 'UpdateCloudFrontOriginAccessIdentityRequest')
    UpdateCloudFrontOriginAccessIdentityResult = Shapes::StructureShape.new(name: 'UpdateCloudFrontOriginAccessIdentityResult')
    UpdateDistributionRequest = Shapes::StructureShape.new(name: 'UpdateDistributionRequest')
    UpdateDistributionResult = Shapes::StructureShape.new(name: 'UpdateDistributionResult')
    UpdateStreamingDistributionRequest = Shapes::StructureShape.new(name: 'UpdateStreamingDistributionRequest')
    UpdateStreamingDistributionResult = Shapes::StructureShape.new(name: 'UpdateStreamingDistributionResult')
    ViewerCertificate = Shapes::StructureShape.new(name: 'ViewerCertificate')
    ViewerProtocolPolicy = Shapes::StringShape.new(name: 'ViewerProtocolPolicy')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    integer = Shapes::IntegerShape.new(name: 'integer')
    long = Shapes::IntegerShape.new(name: 'long')
    string = Shapes::StringShape.new(name: 'string')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    ActiveTrustedSigners.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    ActiveTrustedSigners.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ActiveTrustedSigners.add_member(:items, Shapes::ShapeRef.new(shape: SignerList, location_name: "Items"))
    ActiveTrustedSigners.struct_class = Types::ActiveTrustedSigners

    AliasList.member = Shapes::ShapeRef.new(shape: string, location_name: "CNAME")

    Aliases.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    Aliases.add_member(:items, Shapes::ShapeRef.new(shape: AliasList, location_name: "Items"))
    Aliases.struct_class = Types::Aliases

    AllowedMethods.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    AllowedMethods.add_member(:items, Shapes::ShapeRef.new(shape: MethodsList, required: true, location_name: "Items"))
    AllowedMethods.add_member(:cached_methods, Shapes::ShapeRef.new(shape: CachedMethods, location_name: "CachedMethods"))
    AllowedMethods.struct_class = Types::AllowedMethods

    AwsAccountNumberList.member = Shapes::ShapeRef.new(shape: string, location_name: "AwsAccountNumber")

    CacheBehavior.add_member(:path_pattern, Shapes::ShapeRef.new(shape: string, required: true, location_name: "PathPattern"))
    CacheBehavior.add_member(:target_origin_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "TargetOriginId"))
    CacheBehavior.add_member(:forwarded_values, Shapes::ShapeRef.new(shape: ForwardedValues, required: true, location_name: "ForwardedValues"))
    CacheBehavior.add_member(:trusted_signers, Shapes::ShapeRef.new(shape: TrustedSigners, required: true, location_name: "TrustedSigners"))
    CacheBehavior.add_member(:viewer_protocol_policy, Shapes::ShapeRef.new(shape: ViewerProtocolPolicy, required: true, location_name: "ViewerProtocolPolicy"))
    CacheBehavior.add_member(:min_ttl, Shapes::ShapeRef.new(shape: long, required: true, location_name: "MinTTL"))
    CacheBehavior.add_member(:allowed_methods, Shapes::ShapeRef.new(shape: AllowedMethods, location_name: "AllowedMethods"))
    CacheBehavior.add_member(:smooth_streaming, Shapes::ShapeRef.new(shape: boolean, location_name: "SmoothStreaming"))
    CacheBehavior.add_member(:default_ttl, Shapes::ShapeRef.new(shape: long, location_name: "DefaultTTL"))
    CacheBehavior.add_member(:max_ttl, Shapes::ShapeRef.new(shape: long, location_name: "MaxTTL"))
    CacheBehavior.add_member(:compress, Shapes::ShapeRef.new(shape: boolean, location_name: "Compress"))
    CacheBehavior.add_member(:lambda_function_associations, Shapes::ShapeRef.new(shape: LambdaFunctionAssociations, location_name: "LambdaFunctionAssociations"))
    CacheBehavior.struct_class = Types::CacheBehavior

    CacheBehaviorList.member = Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "CacheBehavior")

    CacheBehaviors.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CacheBehaviors.add_member(:items, Shapes::ShapeRef.new(shape: CacheBehaviorList, location_name: "Items"))
    CacheBehaviors.struct_class = Types::CacheBehaviors

    CachedMethods.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CachedMethods.add_member(:items, Shapes::ShapeRef.new(shape: MethodsList, required: true, location_name: "Items"))
    CachedMethods.struct_class = Types::CachedMethods

    CloudFrontOriginAccessIdentity.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    CloudFrontOriginAccessIdentity.add_member(:s3_canonical_user_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "S3CanonicalUserId"))
    CloudFrontOriginAccessIdentity.add_member(:cloud_front_origin_access_identity_config, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, location_name: "CloudFrontOriginAccessIdentityConfig"))
    CloudFrontOriginAccessIdentity.struct_class = Types::CloudFrontOriginAccessIdentity

    CloudFrontOriginAccessIdentityConfig.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    CloudFrontOriginAccessIdentityConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    CloudFrontOriginAccessIdentityConfig.struct_class = Types::CloudFrontOriginAccessIdentityConfig

    CloudFrontOriginAccessIdentityList.add_member(:marker, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Marker"))
    CloudFrontOriginAccessIdentityList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    CloudFrontOriginAccessIdentityList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    CloudFrontOriginAccessIdentityList.add_member(:is_truncated, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsTruncated"))
    CloudFrontOriginAccessIdentityList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CloudFrontOriginAccessIdentityList.add_member(:items, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentitySummaryList, location_name: "Items"))
    CloudFrontOriginAccessIdentityList.struct_class = Types::CloudFrontOriginAccessIdentityList

    CloudFrontOriginAccessIdentitySummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    CloudFrontOriginAccessIdentitySummary.add_member(:s3_canonical_user_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "S3CanonicalUserId"))
    CloudFrontOriginAccessIdentitySummary.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    CloudFrontOriginAccessIdentitySummary.struct_class = Types::CloudFrontOriginAccessIdentitySummary

    CloudFrontOriginAccessIdentitySummaryList.member = Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentitySummary, location_name: "CloudFrontOriginAccessIdentitySummary")

    CookieNameList.member = Shapes::ShapeRef.new(shape: string, location_name: "Name")

    CookieNames.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CookieNames.add_member(:items, Shapes::ShapeRef.new(shape: CookieNameList, location_name: "Items"))
    CookieNames.struct_class = Types::CookieNames

    CookiePreference.add_member(:forward, Shapes::ShapeRef.new(shape: ItemSelection, required: true, location_name: "Forward"))
    CookiePreference.add_member(:whitelisted_names, Shapes::ShapeRef.new(shape: CookieNames, location_name: "WhitelistedNames"))
    CookiePreference.struct_class = Types::CookiePreference

    CreateCloudFrontOriginAccessIdentityRequest.add_member(:cloud_front_origin_access_identity_config, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, required: true, location_name: "CloudFrontOriginAccessIdentityConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2017-03-25/"}}))
    CreateCloudFrontOriginAccessIdentityRequest.struct_class = Types::CreateCloudFrontOriginAccessIdentityRequest
    CreateCloudFrontOriginAccessIdentityRequest[:payload] = :cloud_front_origin_access_identity_config
    CreateCloudFrontOriginAccessIdentityRequest[:payload_member] = CreateCloudFrontOriginAccessIdentityRequest.member(:cloud_front_origin_access_identity_config)

    CreateCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentity, location_name: "CloudFrontOriginAccessIdentity"))
    CreateCloudFrontOriginAccessIdentityResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateCloudFrontOriginAccessIdentityResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateCloudFrontOriginAccessIdentityResult.struct_class = Types::CreateCloudFrontOriginAccessIdentityResult
    CreateCloudFrontOriginAccessIdentityResult[:payload] = :cloud_front_origin_access_identity
    CreateCloudFrontOriginAccessIdentityResult[:payload_member] = CreateCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)

    CreateDistributionRequest.add_member(:distribution_config, Shapes::ShapeRef.new(shape: DistributionConfig, required: true, location_name: "DistributionConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2017-03-25/"}}))
    CreateDistributionRequest.struct_class = Types::CreateDistributionRequest
    CreateDistributionRequest[:payload] = :distribution_config
    CreateDistributionRequest[:payload_member] = CreateDistributionRequest.member(:distribution_config)

    CreateDistributionResult.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "Distribution"))
    CreateDistributionResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateDistributionResult.struct_class = Types::CreateDistributionResult
    CreateDistributionResult[:payload] = :distribution
    CreateDistributionResult[:payload_member] = CreateDistributionResult.member(:distribution)

    CreateDistributionWithTagsRequest.add_member(:distribution_config_with_tags, Shapes::ShapeRef.new(shape: DistributionConfigWithTags, required: true, location_name: "DistributionConfigWithTags", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2017-03-25/"}}))
    CreateDistributionWithTagsRequest.struct_class = Types::CreateDistributionWithTagsRequest
    CreateDistributionWithTagsRequest[:payload] = :distribution_config_with_tags
    CreateDistributionWithTagsRequest[:payload_member] = CreateDistributionWithTagsRequest.member(:distribution_config_with_tags)

    CreateDistributionWithTagsResult.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "Distribution"))
    CreateDistributionWithTagsResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateDistributionWithTagsResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateDistributionWithTagsResult.struct_class = Types::CreateDistributionWithTagsResult
    CreateDistributionWithTagsResult[:payload] = :distribution
    CreateDistributionWithTagsResult[:payload_member] = CreateDistributionWithTagsResult.member(:distribution)

    CreateInvalidationRequest.add_member(:distribution_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DistributionId"))
    CreateInvalidationRequest.add_member(:invalidation_batch, Shapes::ShapeRef.new(shape: InvalidationBatch, required: true, location_name: "InvalidationBatch", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2017-03-25/"}}))
    CreateInvalidationRequest.struct_class = Types::CreateInvalidationRequest
    CreateInvalidationRequest[:payload] = :invalidation_batch
    CreateInvalidationRequest[:payload_member] = CreateInvalidationRequest.member(:invalidation_batch)

    CreateInvalidationResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateInvalidationResult.add_member(:invalidation, Shapes::ShapeRef.new(shape: Invalidation, location_name: "Invalidation"))
    CreateInvalidationResult.struct_class = Types::CreateInvalidationResult
    CreateInvalidationResult[:payload] = :invalidation
    CreateInvalidationResult[:payload_member] = CreateInvalidationResult.member(:invalidation)

    CreateStreamingDistributionRequest.add_member(:streaming_distribution_config, Shapes::ShapeRef.new(shape: StreamingDistributionConfig, required: true, location_name: "StreamingDistributionConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2017-03-25/"}}))
    CreateStreamingDistributionRequest.struct_class = Types::CreateStreamingDistributionRequest
    CreateStreamingDistributionRequest[:payload] = :streaming_distribution_config
    CreateStreamingDistributionRequest[:payload_member] = CreateStreamingDistributionRequest.member(:streaming_distribution_config)

    CreateStreamingDistributionResult.add_member(:streaming_distribution, Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: "StreamingDistribution"))
    CreateStreamingDistributionResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateStreamingDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateStreamingDistributionResult.struct_class = Types::CreateStreamingDistributionResult
    CreateStreamingDistributionResult[:payload] = :streaming_distribution
    CreateStreamingDistributionResult[:payload_member] = CreateStreamingDistributionResult.member(:streaming_distribution)

    CreateStreamingDistributionWithTagsRequest.add_member(:streaming_distribution_config_with_tags, Shapes::ShapeRef.new(shape: StreamingDistributionConfigWithTags, required: true, location_name: "StreamingDistributionConfigWithTags", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2017-03-25/"}}))
    CreateStreamingDistributionWithTagsRequest.struct_class = Types::CreateStreamingDistributionWithTagsRequest
    CreateStreamingDistributionWithTagsRequest[:payload] = :streaming_distribution_config_with_tags
    CreateStreamingDistributionWithTagsRequest[:payload_member] = CreateStreamingDistributionWithTagsRequest.member(:streaming_distribution_config_with_tags)

    CreateStreamingDistributionWithTagsResult.add_member(:streaming_distribution, Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: "StreamingDistribution"))
    CreateStreamingDistributionWithTagsResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateStreamingDistributionWithTagsResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateStreamingDistributionWithTagsResult.struct_class = Types::CreateStreamingDistributionWithTagsResult
    CreateStreamingDistributionWithTagsResult[:payload] = :streaming_distribution
    CreateStreamingDistributionWithTagsResult[:payload_member] = CreateStreamingDistributionWithTagsResult.member(:streaming_distribution)

    CustomErrorResponse.add_member(:error_code, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "ErrorCode"))
    CustomErrorResponse.add_member(:response_page_path, Shapes::ShapeRef.new(shape: string, location_name: "ResponsePagePath"))
    CustomErrorResponse.add_member(:response_code, Shapes::ShapeRef.new(shape: string, location_name: "ResponseCode"))
    CustomErrorResponse.add_member(:error_caching_min_ttl, Shapes::ShapeRef.new(shape: long, location_name: "ErrorCachingMinTTL"))
    CustomErrorResponse.struct_class = Types::CustomErrorResponse

    CustomErrorResponseList.member = Shapes::ShapeRef.new(shape: CustomErrorResponse, location_name: "CustomErrorResponse")

    CustomErrorResponses.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CustomErrorResponses.add_member(:items, Shapes::ShapeRef.new(shape: CustomErrorResponseList, location_name: "Items"))
    CustomErrorResponses.struct_class = Types::CustomErrorResponses

    CustomHeaders.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CustomHeaders.add_member(:items, Shapes::ShapeRef.new(shape: OriginCustomHeadersList, location_name: "Items"))
    CustomHeaders.struct_class = Types::CustomHeaders

    CustomOriginConfig.add_member(:http_port, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "HTTPPort"))
    CustomOriginConfig.add_member(:https_port, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "HTTPSPort"))
    CustomOriginConfig.add_member(:origin_protocol_policy, Shapes::ShapeRef.new(shape: OriginProtocolPolicy, required: true, location_name: "OriginProtocolPolicy"))
    CustomOriginConfig.add_member(:origin_ssl_protocols, Shapes::ShapeRef.new(shape: OriginSslProtocols, location_name: "OriginSslProtocols"))
    CustomOriginConfig.add_member(:origin_read_timeout, Shapes::ShapeRef.new(shape: integer, location_name: "OriginReadTimeout"))
    CustomOriginConfig.add_member(:origin_keepalive_timeout, Shapes::ShapeRef.new(shape: integer, location_name: "OriginKeepaliveTimeout"))
    CustomOriginConfig.struct_class = Types::CustomOriginConfig

    DefaultCacheBehavior.add_member(:target_origin_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "TargetOriginId"))
    DefaultCacheBehavior.add_member(:forwarded_values, Shapes::ShapeRef.new(shape: ForwardedValues, required: true, location_name: "ForwardedValues"))
    DefaultCacheBehavior.add_member(:trusted_signers, Shapes::ShapeRef.new(shape: TrustedSigners, required: true, location_name: "TrustedSigners"))
    DefaultCacheBehavior.add_member(:viewer_protocol_policy, Shapes::ShapeRef.new(shape: ViewerProtocolPolicy, required: true, location_name: "ViewerProtocolPolicy"))
    DefaultCacheBehavior.add_member(:min_ttl, Shapes::ShapeRef.new(shape: long, required: true, location_name: "MinTTL"))
    DefaultCacheBehavior.add_member(:allowed_methods, Shapes::ShapeRef.new(shape: AllowedMethods, location_name: "AllowedMethods"))
    DefaultCacheBehavior.add_member(:smooth_streaming, Shapes::ShapeRef.new(shape: boolean, location_name: "SmoothStreaming"))
    DefaultCacheBehavior.add_member(:default_ttl, Shapes::ShapeRef.new(shape: long, location_name: "DefaultTTL"))
    DefaultCacheBehavior.add_member(:max_ttl, Shapes::ShapeRef.new(shape: long, location_name: "MaxTTL"))
    DefaultCacheBehavior.add_member(:compress, Shapes::ShapeRef.new(shape: boolean, location_name: "Compress"))
    DefaultCacheBehavior.add_member(:lambda_function_associations, Shapes::ShapeRef.new(shape: LambdaFunctionAssociations, location_name: "LambdaFunctionAssociations"))
    DefaultCacheBehavior.struct_class = Types::DefaultCacheBehavior

    DeleteCloudFrontOriginAccessIdentityRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteCloudFrontOriginAccessIdentityRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteCloudFrontOriginAccessIdentityRequest.struct_class = Types::DeleteCloudFrontOriginAccessIdentityRequest

    DeleteDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteDistributionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteDistributionRequest.struct_class = Types::DeleteDistributionRequest

    DeleteStreamingDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteStreamingDistributionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteStreamingDistributionRequest.struct_class = Types::DeleteStreamingDistributionRequest

    Distribution.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    Distribution.add_member(:arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ARN"))
    Distribution.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    Distribution.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    Distribution.add_member(:in_progress_invalidation_batches, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "InProgressInvalidationBatches"))
    Distribution.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    Distribution.add_member(:active_trusted_signers, Shapes::ShapeRef.new(shape: ActiveTrustedSigners, required: true, location_name: "ActiveTrustedSigners"))
    Distribution.add_member(:distribution_config, Shapes::ShapeRef.new(shape: DistributionConfig, required: true, location_name: "DistributionConfig"))
    Distribution.struct_class = Types::Distribution

    DistributionConfig.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    DistributionConfig.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, location_name: "Aliases"))
    DistributionConfig.add_member(:default_root_object, Shapes::ShapeRef.new(shape: string, location_name: "DefaultRootObject"))
    DistributionConfig.add_member(:origins, Shapes::ShapeRef.new(shape: Origins, required: true, location_name: "Origins"))
    DistributionConfig.add_member(:default_cache_behavior, Shapes::ShapeRef.new(shape: DefaultCacheBehavior, required: true, location_name: "DefaultCacheBehavior"))
    DistributionConfig.add_member(:cache_behaviors, Shapes::ShapeRef.new(shape: CacheBehaviors, location_name: "CacheBehaviors"))
    DistributionConfig.add_member(:custom_error_responses, Shapes::ShapeRef.new(shape: CustomErrorResponses, location_name: "CustomErrorResponses"))
    DistributionConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    DistributionConfig.add_member(:logging, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "Logging"))
    DistributionConfig.add_member(:price_class, Shapes::ShapeRef.new(shape: PriceClass, location_name: "PriceClass"))
    DistributionConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    DistributionConfig.add_member(:viewer_certificate, Shapes::ShapeRef.new(shape: ViewerCertificate, location_name: "ViewerCertificate"))
    DistributionConfig.add_member(:restrictions, Shapes::ShapeRef.new(shape: Restrictions, location_name: "Restrictions"))
    DistributionConfig.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: string, location_name: "WebACLId"))
    DistributionConfig.add_member(:http_version, Shapes::ShapeRef.new(shape: HttpVersion, location_name: "HttpVersion"))
    DistributionConfig.add_member(:is_ipv6_enabled, Shapes::ShapeRef.new(shape: boolean, location_name: "IsIPV6Enabled"))
    DistributionConfig.struct_class = Types::DistributionConfig

    DistributionConfigWithTags.add_member(:distribution_config, Shapes::ShapeRef.new(shape: DistributionConfig, required: true, location_name: "DistributionConfig"))
    DistributionConfigWithTags.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    DistributionConfigWithTags.struct_class = Types::DistributionConfigWithTags

    DistributionList.add_member(:marker, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Marker"))
    DistributionList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    DistributionList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    DistributionList.add_member(:is_truncated, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsTruncated"))
    DistributionList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    DistributionList.add_member(:items, Shapes::ShapeRef.new(shape: DistributionSummaryList, location_name: "Items"))
    DistributionList.struct_class = Types::DistributionList

    DistributionSummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    DistributionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ARN"))
    DistributionSummary.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    DistributionSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    DistributionSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    DistributionSummary.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, required: true, location_name: "Aliases"))
    DistributionSummary.add_member(:origins, Shapes::ShapeRef.new(shape: Origins, required: true, location_name: "Origins"))
    DistributionSummary.add_member(:default_cache_behavior, Shapes::ShapeRef.new(shape: DefaultCacheBehavior, required: true, location_name: "DefaultCacheBehavior"))
    DistributionSummary.add_member(:cache_behaviors, Shapes::ShapeRef.new(shape: CacheBehaviors, required: true, location_name: "CacheBehaviors"))
    DistributionSummary.add_member(:custom_error_responses, Shapes::ShapeRef.new(shape: CustomErrorResponses, required: true, location_name: "CustomErrorResponses"))
    DistributionSummary.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    DistributionSummary.add_member(:price_class, Shapes::ShapeRef.new(shape: PriceClass, required: true, location_name: "PriceClass"))
    DistributionSummary.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    DistributionSummary.add_member(:viewer_certificate, Shapes::ShapeRef.new(shape: ViewerCertificate, required: true, location_name: "ViewerCertificate"))
    DistributionSummary.add_member(:restrictions, Shapes::ShapeRef.new(shape: Restrictions, required: true, location_name: "Restrictions"))
    DistributionSummary.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "WebACLId"))
    DistributionSummary.add_member(:http_version, Shapes::ShapeRef.new(shape: HttpVersion, required: true, location_name: "HttpVersion"))
    DistributionSummary.add_member(:is_ipv6_enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsIPV6Enabled"))
    DistributionSummary.struct_class = Types::DistributionSummary

    DistributionSummaryList.member = Shapes::ShapeRef.new(shape: DistributionSummary, location_name: "DistributionSummary")

    ForwardedValues.add_member(:query_string, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "QueryString"))
    ForwardedValues.add_member(:cookies, Shapes::ShapeRef.new(shape: CookiePreference, required: true, location_name: "Cookies"))
    ForwardedValues.add_member(:headers, Shapes::ShapeRef.new(shape: Headers, location_name: "Headers"))
    ForwardedValues.add_member(:query_string_cache_keys, Shapes::ShapeRef.new(shape: QueryStringCacheKeys, location_name: "QueryStringCacheKeys"))
    ForwardedValues.struct_class = Types::ForwardedValues

    GeoRestriction.add_member(:restriction_type, Shapes::ShapeRef.new(shape: GeoRestrictionType, required: true, location_name: "RestrictionType"))
    GeoRestriction.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    GeoRestriction.add_member(:items, Shapes::ShapeRef.new(shape: LocationList, location_name: "Items"))
    GeoRestriction.struct_class = Types::GeoRestriction

    GetCloudFrontOriginAccessIdentityConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetCloudFrontOriginAccessIdentityConfigRequest.struct_class = Types::GetCloudFrontOriginAccessIdentityConfigRequest

    GetCloudFrontOriginAccessIdentityConfigResult.add_member(:cloud_front_origin_access_identity_config, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, location_name: "CloudFrontOriginAccessIdentityConfig"))
    GetCloudFrontOriginAccessIdentityConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetCloudFrontOriginAccessIdentityConfigResult.struct_class = Types::GetCloudFrontOriginAccessIdentityConfigResult
    GetCloudFrontOriginAccessIdentityConfigResult[:payload] = :cloud_front_origin_access_identity_config
    GetCloudFrontOriginAccessIdentityConfigResult[:payload_member] = GetCloudFrontOriginAccessIdentityConfigResult.member(:cloud_front_origin_access_identity_config)

    GetCloudFrontOriginAccessIdentityRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetCloudFrontOriginAccessIdentityRequest.struct_class = Types::GetCloudFrontOriginAccessIdentityRequest

    GetCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentity, location_name: "CloudFrontOriginAccessIdentity"))
    GetCloudFrontOriginAccessIdentityResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetCloudFrontOriginAccessIdentityResult.struct_class = Types::GetCloudFrontOriginAccessIdentityResult
    GetCloudFrontOriginAccessIdentityResult[:payload] = :cloud_front_origin_access_identity
    GetCloudFrontOriginAccessIdentityResult[:payload_member] = GetCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)

    GetDistributionConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetDistributionConfigRequest.struct_class = Types::GetDistributionConfigRequest

    GetDistributionConfigResult.add_member(:distribution_config, Shapes::ShapeRef.new(shape: DistributionConfig, location_name: "DistributionConfig"))
    GetDistributionConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetDistributionConfigResult.struct_class = Types::GetDistributionConfigResult
    GetDistributionConfigResult[:payload] = :distribution_config
    GetDistributionConfigResult[:payload_member] = GetDistributionConfigResult.member(:distribution_config)

    GetDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetDistributionRequest.struct_class = Types::GetDistributionRequest

    GetDistributionResult.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "Distribution"))
    GetDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetDistributionResult.struct_class = Types::GetDistributionResult
    GetDistributionResult[:payload] = :distribution
    GetDistributionResult[:payload_member] = GetDistributionResult.member(:distribution)

    GetInvalidationRequest.add_member(:distribution_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DistributionId"))
    GetInvalidationRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetInvalidationRequest.struct_class = Types::GetInvalidationRequest

    GetInvalidationResult.add_member(:invalidation, Shapes::ShapeRef.new(shape: Invalidation, location_name: "Invalidation"))
    GetInvalidationResult.struct_class = Types::GetInvalidationResult
    GetInvalidationResult[:payload] = :invalidation
    GetInvalidationResult[:payload_member] = GetInvalidationResult.member(:invalidation)

    GetStreamingDistributionConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetStreamingDistributionConfigRequest.struct_class = Types::GetStreamingDistributionConfigRequest

    GetStreamingDistributionConfigResult.add_member(:streaming_distribution_config, Shapes::ShapeRef.new(shape: StreamingDistributionConfig, location_name: "StreamingDistributionConfig"))
    GetStreamingDistributionConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetStreamingDistributionConfigResult.struct_class = Types::GetStreamingDistributionConfigResult
    GetStreamingDistributionConfigResult[:payload] = :streaming_distribution_config
    GetStreamingDistributionConfigResult[:payload_member] = GetStreamingDistributionConfigResult.member(:streaming_distribution_config)

    GetStreamingDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetStreamingDistributionRequest.struct_class = Types::GetStreamingDistributionRequest

    GetStreamingDistributionResult.add_member(:streaming_distribution, Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: "StreamingDistribution"))
    GetStreamingDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetStreamingDistributionResult.struct_class = Types::GetStreamingDistributionResult
    GetStreamingDistributionResult[:payload] = :streaming_distribution
    GetStreamingDistributionResult[:payload_member] = GetStreamingDistributionResult.member(:streaming_distribution)

    HeaderList.member = Shapes::ShapeRef.new(shape: string, location_name: "Name")

    Headers.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    Headers.add_member(:items, Shapes::ShapeRef.new(shape: HeaderList, location_name: "Items"))
    Headers.struct_class = Types::Headers

    Invalidation.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    Invalidation.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    Invalidation.add_member(:create_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreateTime"))
    Invalidation.add_member(:invalidation_batch, Shapes::ShapeRef.new(shape: InvalidationBatch, required: true, location_name: "InvalidationBatch"))
    Invalidation.struct_class = Types::Invalidation

    InvalidationBatch.add_member(:paths, Shapes::ShapeRef.new(shape: Paths, required: true, location_name: "Paths"))
    InvalidationBatch.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    InvalidationBatch.struct_class = Types::InvalidationBatch

    InvalidationList.add_member(:marker, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Marker"))
    InvalidationList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    InvalidationList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    InvalidationList.add_member(:is_truncated, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsTruncated"))
    InvalidationList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    InvalidationList.add_member(:items, Shapes::ShapeRef.new(shape: InvalidationSummaryList, location_name: "Items"))
    InvalidationList.struct_class = Types::InvalidationList

    InvalidationSummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    InvalidationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreateTime"))
    InvalidationSummary.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    InvalidationSummary.struct_class = Types::InvalidationSummary

    InvalidationSummaryList.member = Shapes::ShapeRef.new(shape: InvalidationSummary, location_name: "InvalidationSummary")

    KeyPairIdList.member = Shapes::ShapeRef.new(shape: string, location_name: "KeyPairId")

    KeyPairIds.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    KeyPairIds.add_member(:items, Shapes::ShapeRef.new(shape: KeyPairIdList, location_name: "Items"))
    KeyPairIds.struct_class = Types::KeyPairIds

    LambdaFunctionAssociation.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: string, location_name: "LambdaFunctionARN"))
    LambdaFunctionAssociation.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "EventType"))
    LambdaFunctionAssociation.struct_class = Types::LambdaFunctionAssociation

    LambdaFunctionAssociationList.member = Shapes::ShapeRef.new(shape: LambdaFunctionAssociation, location_name: "LambdaFunctionAssociation")

    LambdaFunctionAssociations.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    LambdaFunctionAssociations.add_member(:items, Shapes::ShapeRef.new(shape: LambdaFunctionAssociationList, location_name: "Items"))
    LambdaFunctionAssociations.struct_class = Types::LambdaFunctionAssociations

    ListCloudFrontOriginAccessIdentitiesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListCloudFrontOriginAccessIdentitiesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListCloudFrontOriginAccessIdentitiesRequest.struct_class = Types::ListCloudFrontOriginAccessIdentitiesRequest

    ListCloudFrontOriginAccessIdentitiesResult.add_member(:cloud_front_origin_access_identity_list, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityList, location_name: "CloudFrontOriginAccessIdentityList"))
    ListCloudFrontOriginAccessIdentitiesResult.struct_class = Types::ListCloudFrontOriginAccessIdentitiesResult
    ListCloudFrontOriginAccessIdentitiesResult[:payload] = :cloud_front_origin_access_identity_list
    ListCloudFrontOriginAccessIdentitiesResult[:payload_member] = ListCloudFrontOriginAccessIdentitiesResult.member(:cloud_front_origin_access_identity_list)

    ListDistributionsByWebACLIdRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListDistributionsByWebACLIdRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListDistributionsByWebACLIdRequest.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "WebACLId"))
    ListDistributionsByWebACLIdRequest.struct_class = Types::ListDistributionsByWebACLIdRequest

    ListDistributionsByWebACLIdResult.add_member(:distribution_list, Shapes::ShapeRef.new(shape: DistributionList, location_name: "DistributionList"))
    ListDistributionsByWebACLIdResult.struct_class = Types::ListDistributionsByWebACLIdResult
    ListDistributionsByWebACLIdResult[:payload] = :distribution_list
    ListDistributionsByWebACLIdResult[:payload_member] = ListDistributionsByWebACLIdResult.member(:distribution_list)

    ListDistributionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListDistributionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListDistributionsRequest.struct_class = Types::ListDistributionsRequest

    ListDistributionsResult.add_member(:distribution_list, Shapes::ShapeRef.new(shape: DistributionList, location_name: "DistributionList"))
    ListDistributionsResult.struct_class = Types::ListDistributionsResult
    ListDistributionsResult[:payload] = :distribution_list
    ListDistributionsResult[:payload_member] = ListDistributionsResult.member(:distribution_list)

    ListInvalidationsRequest.add_member(:distribution_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DistributionId"))
    ListInvalidationsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListInvalidationsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListInvalidationsRequest.struct_class = Types::ListInvalidationsRequest

    ListInvalidationsResult.add_member(:invalidation_list, Shapes::ShapeRef.new(shape: InvalidationList, location_name: "InvalidationList"))
    ListInvalidationsResult.struct_class = Types::ListInvalidationsResult
    ListInvalidationsResult[:payload] = :invalidation_list
    ListInvalidationsResult[:payload_member] = ListInvalidationsResult.member(:invalidation_list)

    ListStreamingDistributionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListStreamingDistributionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListStreamingDistributionsRequest.struct_class = Types::ListStreamingDistributionsRequest

    ListStreamingDistributionsResult.add_member(:streaming_distribution_list, Shapes::ShapeRef.new(shape: StreamingDistributionList, location_name: "StreamingDistributionList"))
    ListStreamingDistributionsResult.struct_class = Types::ListStreamingDistributionsResult
    ListStreamingDistributionsResult[:payload] = :streaming_distribution_list
    ListStreamingDistributionsResult[:payload_member] = ListStreamingDistributionsResult.member(:streaming_distribution_list)

    ListTagsForResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "querystring", location_name: "Resource"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult
    ListTagsForResourceResult[:payload] = :tags
    ListTagsForResourceResult[:payload_member] = ListTagsForResourceResult.member(:tags)

    LocationList.member = Shapes::ShapeRef.new(shape: string, location_name: "Location")

    LoggingConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    LoggingConfig.add_member(:include_cookies, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IncludeCookies"))
    LoggingConfig.add_member(:bucket, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Bucket"))
    LoggingConfig.add_member(:prefix, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Prefix"))
    LoggingConfig.struct_class = Types::LoggingConfig

    MethodsList.member = Shapes::ShapeRef.new(shape: Method, location_name: "Method")

    Origin.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    Origin.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    Origin.add_member(:origin_path, Shapes::ShapeRef.new(shape: string, location_name: "OriginPath"))
    Origin.add_member(:custom_headers, Shapes::ShapeRef.new(shape: CustomHeaders, location_name: "CustomHeaders"))
    Origin.add_member(:s3_origin_config, Shapes::ShapeRef.new(shape: S3OriginConfig, location_name: "S3OriginConfig"))
    Origin.add_member(:custom_origin_config, Shapes::ShapeRef.new(shape: CustomOriginConfig, location_name: "CustomOriginConfig"))
    Origin.struct_class = Types::Origin

    OriginCustomHeader.add_member(:header_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "HeaderName"))
    OriginCustomHeader.add_member(:header_value, Shapes::ShapeRef.new(shape: string, required: true, location_name: "HeaderValue"))
    OriginCustomHeader.struct_class = Types::OriginCustomHeader

    OriginCustomHeadersList.member = Shapes::ShapeRef.new(shape: OriginCustomHeader, location_name: "OriginCustomHeader")

    OriginList.member = Shapes::ShapeRef.new(shape: Origin, location_name: "Origin")

    OriginSslProtocols.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    OriginSslProtocols.add_member(:items, Shapes::ShapeRef.new(shape: SslProtocolsList, required: true, location_name: "Items"))
    OriginSslProtocols.struct_class = Types::OriginSslProtocols

    Origins.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    Origins.add_member(:items, Shapes::ShapeRef.new(shape: OriginList, location_name: "Items"))
    Origins.struct_class = Types::Origins

    PathList.member = Shapes::ShapeRef.new(shape: string, location_name: "Path")

    Paths.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    Paths.add_member(:items, Shapes::ShapeRef.new(shape: PathList, location_name: "Items"))
    Paths.struct_class = Types::Paths

    QueryStringCacheKeys.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    QueryStringCacheKeys.add_member(:items, Shapes::ShapeRef.new(shape: QueryStringCacheKeysList, location_name: "Items"))
    QueryStringCacheKeys.struct_class = Types::QueryStringCacheKeys

    QueryStringCacheKeysList.member = Shapes::ShapeRef.new(shape: string, location_name: "Name")

    Restrictions.add_member(:geo_restriction, Shapes::ShapeRef.new(shape: GeoRestriction, required: true, location_name: "GeoRestriction"))
    Restrictions.struct_class = Types::Restrictions

    S3Origin.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    S3Origin.add_member(:origin_access_identity, Shapes::ShapeRef.new(shape: string, required: true, location_name: "OriginAccessIdentity"))
    S3Origin.struct_class = Types::S3Origin

    S3OriginConfig.add_member(:origin_access_identity, Shapes::ShapeRef.new(shape: string, required: true, location_name: "OriginAccessIdentity"))
    S3OriginConfig.struct_class = Types::S3OriginConfig

    Signer.add_member(:aws_account_number, Shapes::ShapeRef.new(shape: string, location_name: "AwsAccountNumber"))
    Signer.add_member(:key_pair_ids, Shapes::ShapeRef.new(shape: KeyPairIds, location_name: "KeyPairIds"))
    Signer.struct_class = Types::Signer

    SignerList.member = Shapes::ShapeRef.new(shape: Signer, location_name: "Signer")

    SslProtocolsList.member = Shapes::ShapeRef.new(shape: SslProtocol, location_name: "SslProtocol")

    StreamingDistribution.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    StreamingDistribution.add_member(:arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ARN"))
    StreamingDistribution.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    StreamingDistribution.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastModifiedTime"))
    StreamingDistribution.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    StreamingDistribution.add_member(:active_trusted_signers, Shapes::ShapeRef.new(shape: ActiveTrustedSigners, required: true, location_name: "ActiveTrustedSigners"))
    StreamingDistribution.add_member(:streaming_distribution_config, Shapes::ShapeRef.new(shape: StreamingDistributionConfig, required: true, location_name: "StreamingDistributionConfig"))
    StreamingDistribution.struct_class = Types::StreamingDistribution

    StreamingDistributionConfig.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    StreamingDistributionConfig.add_member(:s3_origin, Shapes::ShapeRef.new(shape: S3Origin, required: true, location_name: "S3Origin"))
    StreamingDistributionConfig.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, location_name: "Aliases"))
    StreamingDistributionConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    StreamingDistributionConfig.add_member(:logging, Shapes::ShapeRef.new(shape: StreamingLoggingConfig, location_name: "Logging"))
    StreamingDistributionConfig.add_member(:trusted_signers, Shapes::ShapeRef.new(shape: TrustedSigners, required: true, location_name: "TrustedSigners"))
    StreamingDistributionConfig.add_member(:price_class, Shapes::ShapeRef.new(shape: PriceClass, location_name: "PriceClass"))
    StreamingDistributionConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    StreamingDistributionConfig.struct_class = Types::StreamingDistributionConfig

    StreamingDistributionConfigWithTags.add_member(:streaming_distribution_config, Shapes::ShapeRef.new(shape: StreamingDistributionConfig, required: true, location_name: "StreamingDistributionConfig"))
    StreamingDistributionConfigWithTags.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    StreamingDistributionConfigWithTags.struct_class = Types::StreamingDistributionConfigWithTags

    StreamingDistributionList.add_member(:marker, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Marker"))
    StreamingDistributionList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    StreamingDistributionList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    StreamingDistributionList.add_member(:is_truncated, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsTruncated"))
    StreamingDistributionList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    StreamingDistributionList.add_member(:items, Shapes::ShapeRef.new(shape: StreamingDistributionSummaryList, location_name: "Items"))
    StreamingDistributionList.struct_class = Types::StreamingDistributionList

    StreamingDistributionSummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    StreamingDistributionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ARN"))
    StreamingDistributionSummary.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    StreamingDistributionSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    StreamingDistributionSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    StreamingDistributionSummary.add_member(:s3_origin, Shapes::ShapeRef.new(shape: S3Origin, required: true, location_name: "S3Origin"))
    StreamingDistributionSummary.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, required: true, location_name: "Aliases"))
    StreamingDistributionSummary.add_member(:trusted_signers, Shapes::ShapeRef.new(shape: TrustedSigners, required: true, location_name: "TrustedSigners"))
    StreamingDistributionSummary.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    StreamingDistributionSummary.add_member(:price_class, Shapes::ShapeRef.new(shape: PriceClass, required: true, location_name: "PriceClass"))
    StreamingDistributionSummary.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    StreamingDistributionSummary.struct_class = Types::StreamingDistributionSummary

    StreamingDistributionSummaryList.member = Shapes::ShapeRef.new(shape: StreamingDistributionSummary, location_name: "StreamingDistributionSummary")

    StreamingLoggingConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    StreamingLoggingConfig.add_member(:bucket, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Bucket"))
    StreamingLoggingConfig.add_member(:prefix, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Prefix"))
    StreamingLoggingConfig.struct_class = Types::StreamingLoggingConfig

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey, location_name: "Key")

    TagKeys.add_member(:items, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "Items"))
    TagKeys.struct_class = Types::TagKeys

    TagList.member = Shapes::ShapeRef.new(shape: Tag, location_name: "Tag")

    TagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "querystring", location_name: "Resource"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2017-03-25/"}}))
    TagResourceRequest.struct_class = Types::TagResourceRequest
    TagResourceRequest[:payload] = :tags
    TagResourceRequest[:payload_member] = TagResourceRequest.member(:tags)

    Tags.add_member(:items, Shapes::ShapeRef.new(shape: TagList, location_name: "Items"))
    Tags.struct_class = Types::Tags

    TrustedSigners.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    TrustedSigners.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    TrustedSigners.add_member(:items, Shapes::ShapeRef.new(shape: AwsAccountNumberList, location_name: "Items"))
    TrustedSigners.struct_class = Types::TrustedSigners

    UntagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "querystring", location_name: "Resource"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2017-03-25/"}}))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest
    UntagResourceRequest[:payload] = :tag_keys
    UntagResourceRequest[:payload_member] = UntagResourceRequest.member(:tag_keys)

    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:cloud_front_origin_access_identity_config, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, required: true, location_name: "CloudFrontOriginAccessIdentityConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2017-03-25/"}}))
    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateCloudFrontOriginAccessIdentityRequest.struct_class = Types::UpdateCloudFrontOriginAccessIdentityRequest
    UpdateCloudFrontOriginAccessIdentityRequest[:payload] = :cloud_front_origin_access_identity_config
    UpdateCloudFrontOriginAccessIdentityRequest[:payload_member] = UpdateCloudFrontOriginAccessIdentityRequest.member(:cloud_front_origin_access_identity_config)

    UpdateCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentity, location_name: "CloudFrontOriginAccessIdentity"))
    UpdateCloudFrontOriginAccessIdentityResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateCloudFrontOriginAccessIdentityResult.struct_class = Types::UpdateCloudFrontOriginAccessIdentityResult
    UpdateCloudFrontOriginAccessIdentityResult[:payload] = :cloud_front_origin_access_identity
    UpdateCloudFrontOriginAccessIdentityResult[:payload_member] = UpdateCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)

    UpdateDistributionRequest.add_member(:distribution_config, Shapes::ShapeRef.new(shape: DistributionConfig, required: true, location_name: "DistributionConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2017-03-25/"}}))
    UpdateDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateDistributionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateDistributionRequest.struct_class = Types::UpdateDistributionRequest
    UpdateDistributionRequest[:payload] = :distribution_config
    UpdateDistributionRequest[:payload_member] = UpdateDistributionRequest.member(:distribution_config)

    UpdateDistributionResult.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "Distribution"))
    UpdateDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateDistributionResult.struct_class = Types::UpdateDistributionResult
    UpdateDistributionResult[:payload] = :distribution
    UpdateDistributionResult[:payload_member] = UpdateDistributionResult.member(:distribution)

    UpdateStreamingDistributionRequest.add_member(:streaming_distribution_config, Shapes::ShapeRef.new(shape: StreamingDistributionConfig, required: true, location_name: "StreamingDistributionConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2017-03-25/"}}))
    UpdateStreamingDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateStreamingDistributionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateStreamingDistributionRequest.struct_class = Types::UpdateStreamingDistributionRequest
    UpdateStreamingDistributionRequest[:payload] = :streaming_distribution_config
    UpdateStreamingDistributionRequest[:payload_member] = UpdateStreamingDistributionRequest.member(:streaming_distribution_config)

    UpdateStreamingDistributionResult.add_member(:streaming_distribution, Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: "StreamingDistribution"))
    UpdateStreamingDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateStreamingDistributionResult.struct_class = Types::UpdateStreamingDistributionResult
    UpdateStreamingDistributionResult[:payload] = :streaming_distribution
    UpdateStreamingDistributionResult[:payload_member] = UpdateStreamingDistributionResult.member(:streaming_distribution)

    ViewerCertificate.add_member(:cloud_front_default_certificate, Shapes::ShapeRef.new(shape: boolean, location_name: "CloudFrontDefaultCertificate"))
    ViewerCertificate.add_member(:iam_certificate_id, Shapes::ShapeRef.new(shape: string, location_name: "IAMCertificateId"))
    ViewerCertificate.add_member(:acm_certificate_arn, Shapes::ShapeRef.new(shape: string, location_name: "ACMCertificateArn"))
    ViewerCertificate.add_member(:ssl_support_method, Shapes::ShapeRef.new(shape: SSLSupportMethod, location_name: "SSLSupportMethod"))
    ViewerCertificate.add_member(:minimum_protocol_version, Shapes::ShapeRef.new(shape: MinimumProtocolVersion, location_name: "MinimumProtocolVersion"))
    ViewerCertificate.add_member(:certificate, Shapes::ShapeRef.new(shape: string, deprecated: true, location_name: "Certificate"))
    ViewerCertificate.add_member(:certificate_source, Shapes::ShapeRef.new(shape: CertificateSource, deprecated: true, location_name: "CertificateSource"))
    ViewerCertificate.struct_class = Types::ViewerCertificate


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-03-25"

      api.metadata = {
        "endpointPrefix" => "cloudfront",
        "protocol" => "rest-xml",
        "serviceFullName" => "Amazon CloudFront",
        "signatureVersion" => "v4",
      }

      api.add_operation(:create_cloud_front_origin_access_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCloudFrontOriginAccessIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/2017-03-25/origin-access-identity/cloudfront"
        o.input = Shapes::ShapeRef.new(shape: CreateCloudFrontOriginAccessIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCloudFrontOriginAccessIdentityResult)
        o.errors << Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCloudFrontOriginAccessIdentities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
      end)

      api.add_operation(:create_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDistribution"
        o.http_method = "POST"
        o.http_request_uri = "/2017-03-25/distribution"
        o.input = Shapes::ShapeRef.new(shape: CreateDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: DistributionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOrigin)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributions)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRelativePath)
        o.errors << Shapes::ShapeRef.new(shape: InvalidErrorCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResponseCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrigin)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOrigins)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        o.errors << Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificates)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLocationCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidProtocolSettings)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebACLId)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
      end)

      api.add_operation(:create_distribution_with_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDistributionWithTags"
        o.http_method = "POST"
        o.http_request_uri = "/2017-03-25/distribution?WithTags"
        o.input = Shapes::ShapeRef.new(shape: CreateDistributionWithTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDistributionWithTagsResult)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: DistributionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOrigin)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributions)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRelativePath)
        o.errors << Shapes::ShapeRef.new(shape: InvalidErrorCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResponseCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrigin)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOrigins)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        o.errors << Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificates)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLocationCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidProtocolSettings)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebACLId)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagging)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
      end)

      api.add_operation(:create_invalidation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInvalidation"
        o.http_method = "POST"
        o.http_request_uri = "/2017-03-25/distribution/{DistributionId}/invalidation"
        o.input = Shapes::ShapeRef.new(shape: CreateInvalidationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInvalidationResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: BatchTooLarge)
        o.errors << Shapes::ShapeRef.new(shape: TooManyInvalidationsInProgress)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
      end)

      api.add_operation(:create_streaming_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingDistribution"
        o.http_method = "POST"
        o.http_request_uri = "/2017-03-25/streaming-distribution"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: StreamingDistributionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOrigin)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: TooManyStreamingDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: TooManyStreamingDistributions)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
      end)

      api.add_operation(:create_streaming_distribution_with_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingDistributionWithTags"
        o.http_method = "POST"
        o.http_request_uri = "/2017-03-25/streaming-distribution?WithTags"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingDistributionWithTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingDistributionWithTagsResult)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: StreamingDistributionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOrigin)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: TooManyStreamingDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: TooManyStreamingDistributions)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagging)
      end)

      api.add_operation(:delete_cloud_front_origin_access_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCloudFrontOriginAccessIdentity"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-03-25/origin-access-identity/cloudfront/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCloudFrontOriginAccessIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityInUse)
      end)

      api.add_operation(:delete_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDistribution"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-03-25/distribution/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: DistributionNotDisabled)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
      end)

      api.add_operation(:delete_streaming_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStreamingDistribution"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-03-25/streaming-distribution/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamingDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: StreamingDistributionNotDisabled)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
      end)

      api.add_operation(:get_cloud_front_origin_access_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudFrontOriginAccessIdentity"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/origin-access-identity/cloudfront/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_cloud_front_origin_access_identity_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudFrontOriginAccessIdentityConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/origin-access-identity/cloudfront/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDistribution"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/distribution/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_distribution_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDistributionConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/distribution/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetDistributionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDistributionConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_invalidation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvalidation"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/distribution/{DistributionId}/invalidation/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetInvalidationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvalidationResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchInvalidation)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_streaming_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamingDistribution"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/streaming-distribution/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetStreamingDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamingDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_streaming_distribution_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamingDistributionConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/streaming-distribution/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetStreamingDistributionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamingDistributionConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:list_cloud_front_origin_access_identities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCloudFrontOriginAccessIdentities"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/origin-access-identity/cloudfront"
        o.input = Shapes::ShapeRef.new(shape: ListCloudFrontOriginAccessIdentitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCloudFrontOriginAccessIdentitiesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o[:pager] = Aws::Pager.new(
          more_results: "cloud_front_origin_access_identity_list.is_truncated",
          limit_key: "max_items",
          tokens: {
            "cloud_front_origin_access_identity_list.next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_distributions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDistributions"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/distribution"
        o.input = Shapes::ShapeRef.new(shape: ListDistributionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDistributionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o[:pager] = Aws::Pager.new(
          more_results: "distribution_list.is_truncated",
          limit_key: "max_items",
          tokens: {
            "distribution_list.next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_distributions_by_web_acl_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDistributionsByWebACLId"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/distributionsByWebACLId/{WebACLId}"
        o.input = Shapes::ShapeRef.new(shape: ListDistributionsByWebACLIdRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDistributionsByWebACLIdResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebACLId)
      end)

      api.add_operation(:list_invalidations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvalidations"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/distribution/{DistributionId}/invalidation"
        o.input = Shapes::ShapeRef.new(shape: ListInvalidationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvalidationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o[:pager] = Aws::Pager.new(
          more_results: "invalidation_list.is_truncated",
          limit_key: "max_items",
          tokens: {
            "invalidation_list.next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_streaming_distributions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamingDistributions"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/streaming-distribution"
        o.input = Shapes::ShapeRef.new(shape: ListStreamingDistributionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStreamingDistributionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o[:pager] = Aws::Pager.new(
          more_results: "streaming_distribution_list.is_truncated",
          limit_key: "max_items",
          tokens: {
            "streaming_distribution_list.next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-25/tagging"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagging)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResource)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2017-03-25/tagging?Operation=Tag"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagging)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResource)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2017-03-25/tagging?Operation=Untag"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagging)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResource)
      end)

      api.add_operation(:update_cloud_front_origin_access_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCloudFrontOriginAccessIdentity"
        o.http_method = "PUT"
        o.http_request_uri = "/2017-03-25/origin-access-identity/cloudfront/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateCloudFrontOriginAccessIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCloudFrontOriginAccessIdentityResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
      end)

      api.add_operation(:update_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDistribution"
        o.http_method = "PUT"
        o.http_request_uri = "/2017-03-25/distribution/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRelativePath)
        o.errors << Shapes::ShapeRef.new(shape: InvalidErrorCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResponseCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrigin)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOrigins)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        o.errors << Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificates)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLocationCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebACLId)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
      end)

      api.add_operation(:update_streaming_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStreamingDistribution"
        o.http_method = "PUT"
        o.http_request_uri = "/2017-03-25/streaming-distribution/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateStreamingDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStreamingDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: TooManyStreamingDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
      end)
    end

  end
end
