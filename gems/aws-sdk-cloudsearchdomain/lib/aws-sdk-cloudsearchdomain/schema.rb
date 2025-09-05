# frozen_string_literal: true

# This is generated code!

module Aws::CloudSearchDomain
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Adds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearchdomain#Adds', name: 'Adds', traits: {"smithy.api#default" => 0})
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.cloudsearchdomain#Blob', name: 'Blob', traits: {"smithy.api#streaming" => {}})
    Bucket = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#Bucket', name: 'Bucket')
    BucketInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#BucketInfo', name: 'BucketInfo')
    BucketList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearchdomain#BucketList', name: 'BucketList')
    ContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudsearchdomain#ContentType', name: 'ContentType')
    Cursor = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#Cursor', name: 'Cursor')
    Deletes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearchdomain#Deletes', name: 'Deletes', traits: {"smithy.api#default" => 0})
    DocumentServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#DocumentServiceException', name: 'DocumentServiceException', traits: {"smithy.api#error" => "client"})
    DocumentServiceWarning = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#DocumentServiceWarning', name: 'DocumentServiceWarning')
    DocumentServiceWarnings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearchdomain#DocumentServiceWarnings', name: 'DocumentServiceWarnings')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.cloudsearchdomain#Double', name: 'Double', traits: {"smithy.api#default" => 0})
    Expr = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#Expr', name: 'Expr')
    Exprs = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudsearchdomain#Exprs', name: 'Exprs')
    Facet = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#Facet', name: 'Facet')
    Facets = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudsearchdomain#Facets', name: 'Facets')
    FieldStats = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#FieldStats', name: 'FieldStats')
    FieldValue = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearchdomain#FieldValue', name: 'FieldValue')
    Fields = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudsearchdomain#Fields', name: 'Fields')
    FilterQuery = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#FilterQuery', name: 'FilterQuery')
    Highlight = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#Highlight', name: 'Highlight')
    Highlights = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudsearchdomain#Highlights', name: 'Highlights')
    Hit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#Hit', name: 'Hit')
    HitList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearchdomain#HitList', name: 'HitList')
    Hits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#Hits', name: 'Hits')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearchdomain#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    Partial = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudsearchdomain#Partial', name: 'Partial', traits: {"smithy.api#default" => false})
    Query = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#Query', name: 'Query')
    QueryOptions = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#QueryOptions', name: 'QueryOptions')
    QueryParser = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudsearchdomain#QueryParser', name: 'QueryParser')
    Return = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#Return', name: 'Return')
    SearchException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#SearchException', name: 'SearchException', traits: {"smithy.api#error" => "client"})
    SearchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#SearchRequest', name: 'SearchRequest')
    SearchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#SearchResponse', name: 'SearchResponse')
    SearchStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#SearchStatus', name: 'SearchStatus')
    Size = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearchdomain#Size', name: 'Size', traits: {"smithy.api#default" => 0})
    Sort = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#Sort', name: 'Sort')
    Start = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearchdomain#Start', name: 'Start', traits: {"smithy.api#default" => 0})
    Stat = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#Stat', name: 'Stat')
    Stats = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudsearchdomain#Stats', name: 'Stats')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#String', name: 'String')
    SuggestModel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#SuggestModel', name: 'SuggestModel')
    SuggestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#SuggestRequest', name: 'SuggestRequest')
    SuggestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#SuggestResponse', name: 'SuggestResponse')
    SuggestStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#SuggestStatus', name: 'SuggestStatus')
    Suggester = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearchdomain#Suggester', name: 'Suggester')
    SuggestionMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#SuggestionMatch', name: 'SuggestionMatch')
    Suggestions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearchdomain#Suggestions', name: 'Suggestions')
    SuggestionsSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearchdomain#SuggestionsSize', name: 'SuggestionsSize', traits: {"smithy.api#default" => 0})
    UploadDocumentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#UploadDocumentsRequest', name: 'UploadDocumentsRequest')
    UploadDocumentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearchdomain#UploadDocumentsResponse', name: 'UploadDocumentsResponse')

    Bucket.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value'))
    Bucket.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#default" => 0}))
    Bucket.type = Types::Bucket
    BucketInfo.add_member(:buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketList, location_name: 'buckets'))
    BucketInfo.type = Types::BucketInfo
    BucketList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bucket)
    ContentType.add_member(:application_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'application_json', traits: {"smithy.api#enumValue" => "application/json"}))
    ContentType.add_member(:application_xml, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'application_xml', traits: {"smithy.api#enumValue" => "application/xml"}))
    DocumentServiceException.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    DocumentServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    DocumentServiceException.type = Types::DocumentServiceException
    DocumentServiceWarning.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    DocumentServiceWarning.type = Types::DocumentServiceWarning
    DocumentServiceWarnings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentServiceWarning)
    Exprs.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Exprs.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Facets.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Facets.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketInfo)
    FieldStats.add_member(:min, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'min'))
    FieldStats.add_member(:max, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'max'))
    FieldStats.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#default" => 0}))
    FieldStats.add_member(:missing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'missing', traits: {"smithy.api#default" => 0}))
    FieldStats.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'sum', traits: {"smithy.api#default" => 0}))
    FieldStats.add_member(:sum_of_squares, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'sumOfSquares', traits: {"smithy.api#default" => 0}))
    FieldStats.add_member(:mean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mean'))
    FieldStats.add_member(:stddev, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'stddev', traits: {"smithy.api#default" => 0}))
    FieldStats.type = Types::FieldStats
    FieldValue.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Fields.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Fields.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue)
    Highlights.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Highlights.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Hit.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    Hit.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fields, location_name: 'fields'))
    Hit.add_member(:exprs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Exprs, location_name: 'exprs'))
    Hit.add_member(:highlights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Highlights, location_name: 'highlights'))
    Hit.type = Types::Hit
    HitList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hit)
    Hits.add_member(:found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'found', traits: {"smithy.api#default" => 0}))
    Hits.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'start', traits: {"smithy.api#default" => 0}))
    Hits.add_member(:cursor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cursor'))
    Hits.add_member(:hit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HitList, location_name: 'hit'))
    Hits.type = Types::Hits
    QueryParser.add_member(:simple, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'simple', traits: {"smithy.api#enumValue" => "simple"}))
    QueryParser.add_member(:structured, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'structured', traits: {"smithy.api#enumValue" => "structured"}))
    QueryParser.add_member(:lucene, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'lucene', traits: {"smithy.api#enumValue" => "lucene"}))
    QueryParser.add_member(:dismax, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'dismax', traits: {"smithy.api#enumValue" => "dismax"}))
    SearchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    SearchException.type = Types::SearchException
    SearchRequest.add_member(:cursor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cursor, location_name: 'cursor', traits: {"smithy.api#httpQuery" => "cursor"}))
    SearchRequest.add_member(:expr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expr, location_name: 'expr', traits: {"smithy.api#httpQuery" => "expr"}))
    SearchRequest.add_member(:facet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Facet, location_name: 'facet', traits: {"smithy.api#httpQuery" => "facet"}))
    SearchRequest.add_member(:filter_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterQuery, location_name: 'filterQuery', traits: {"smithy.api#httpQuery" => "fq"}))
    SearchRequest.add_member(:highlight, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Highlight, location_name: 'highlight', traits: {"smithy.api#httpQuery" => "highlight"}))
    SearchRequest.add_member(:partial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Partial, location_name: 'partial', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "partial"}))
    SearchRequest.add_member(:query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Query, location_name: 'query', traits: {"smithy.api#httpQuery" => "q", "smithy.api#required" => {}}))
    SearchRequest.add_member(:query_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryOptions, location_name: 'queryOptions', traits: {"smithy.api#httpQuery" => "q.options"}))
    SearchRequest.add_member(:query_parser, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryParser, location_name: 'queryParser', traits: {"smithy.api#httpQuery" => "q.parser"}))
    SearchRequest.add_member(:return, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Return, location_name: 'return', traits: {"smithy.api#httpQuery" => "return"}))
    SearchRequest.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: 'size', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "size"}))
    SearchRequest.add_member(:sort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sort, location_name: 'sort', traits: {"smithy.api#httpQuery" => "sort"}))
    SearchRequest.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Start, location_name: 'start', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "start"}))
    SearchRequest.add_member(:stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stat, location_name: 'stats', traits: {"smithy.api#httpQuery" => "stats"}))
    SearchRequest.type = Types::SearchRequest
    SearchResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchStatus, location_name: 'status'))
    SearchResponse.add_member(:hits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hits, location_name: 'hits'))
    SearchResponse.add_member(:facets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Facets, location_name: 'facets'))
    SearchResponse.add_member(:stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stats, location_name: 'stats'))
    SearchResponse.type = Types::SearchResponse
    SearchStatus.add_member(:timems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'timems', traits: {"smithy.api#default" => 0}))
    SearchStatus.add_member(:rid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'rid'))
    SearchStatus.type = Types::SearchStatus
    Stats.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Stats.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldStats)
    SuggestModel.add_member(:query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'query'))
    SuggestModel.add_member(:found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'found', traits: {"smithy.api#default" => 0}))
    SuggestModel.add_member(:suggestions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Suggestions, location_name: 'suggestions'))
    SuggestModel.type = Types::SuggestModel
    SuggestRequest.add_member(:query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Query, location_name: 'query', traits: {"smithy.api#httpQuery" => "q", "smithy.api#required" => {}}))
    SuggestRequest.add_member(:suggester, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Suggester, location_name: 'suggester', traits: {"smithy.api#httpQuery" => "suggester", "smithy.api#required" => {}}))
    SuggestRequest.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuggestionsSize, location_name: 'size', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "size"}))
    SuggestRequest.type = Types::SuggestRequest
    SuggestResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuggestStatus, location_name: 'status'))
    SuggestResponse.add_member(:suggest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuggestModel, location_name: 'suggest'))
    SuggestResponse.type = Types::SuggestResponse
    SuggestStatus.add_member(:timems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'timems', traits: {"smithy.api#default" => 0}))
    SuggestStatus.add_member(:rid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'rid'))
    SuggestStatus.type = Types::SuggestStatus
    SuggestionMatch.add_member(:suggestion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'suggestion'))
    SuggestionMatch.add_member(:score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'score', traits: {"smithy.api#default" => 0}))
    SuggestionMatch.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    SuggestionMatch.type = Types::SuggestionMatch
    Suggestions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuggestionMatch)
    UploadDocumentsRequest.add_member(:documents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'documents', traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UploadDocumentsRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    UploadDocumentsRequest[:http_payload] = :documents
    UploadDocumentsRequest[:http_payload_member] = UploadDocumentsRequest.member(:documents)
    UploadDocumentsRequest.type = Types::UploadDocumentsRequest
    UploadDocumentsResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    UploadDocumentsResponse.add_member(:adds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Adds, location_name: 'adds', traits: {"smithy.api#default" => 0}))
    UploadDocumentsResponse.add_member(:deletes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Deletes, location_name: 'deletes', traits: {"smithy.api#default" => 0}))
    UploadDocumentsResponse.add_member(:warnings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentServiceWarnings, location_name: 'warnings'))
    UploadDocumentsResponse.type = Types::UploadDocumentsResponse

    AmazonCloudSearch2013 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudsearchdomain#AmazonCloudSearch2013"
      service.name = "AmazonCloudSearch2013"
      service.version = "2013-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudSearch Domain", "arnNamespace" => "cloudsearch", "cloudFormationName" => "CloudSearchDomain", "cloudTrailEventSource" => "cloudsearchdomain.amazonaws.com", "docId" => "cloudsearchdomain-2013-01-01", "endpointPrefix" => "cloudsearchdomain"}, "aws.auth#sigv4" => {"name" => "cloudsearch"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon CloudSearch Domain", "smithy.api#xmlNamespace" => {"uri" => "http://cloudsearch.amazonaws.com/doc/2013-01-01/"}}
      service.add_operation(:search, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearchdomain#Search"
        operation.name = "Search"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-01-01/search?format=sdk&pretty=true", "code" => 200}}
      end)
      service.add_operation(:suggest, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearchdomain#Suggest"
        operation.name = "Suggest"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuggestRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuggestResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-01-01/suggest?format=sdk&pretty=true", "code" => 200}}
      end)
      service.add_operation(:upload_documents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearchdomain#UploadDocuments"
        operation.name = "UploadDocuments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadDocumentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadDocumentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentServiceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-01-01/documents/batch?format=sdk", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
