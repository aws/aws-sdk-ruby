# frozen_string_literal: true

# This is generated code!

module Aws::CloudSearchDomain
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Adds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearchdomain#Adds", name: "Adds", traits: {"smithy.api#default" => 0})
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.cloudsearchdomain#Blob", name: "Blob", traits: {"smithy.api#streaming" => {}})
    Bucket = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#Bucket", name: "Bucket")
    BucketInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#BucketInfo", name: "BucketInfo")
    BucketList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearchdomain#BucketList", name: "BucketList")
    ContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudsearchdomain#ContentType", name: "ContentType")
    Cursor = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#Cursor", name: "Cursor")
    Deletes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearchdomain#Deletes", name: "Deletes", traits: {"smithy.api#default" => 0})
    DocumentServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#DocumentServiceException", name: "DocumentServiceException", traits: {"smithy.api#error" => "client"})
    DocumentServiceWarning = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#DocumentServiceWarning", name: "DocumentServiceWarning")
    DocumentServiceWarnings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearchdomain#DocumentServiceWarnings", name: "DocumentServiceWarnings")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudsearchdomain#Double", name: "Double", traits: {"smithy.api#default" => 0})
    Expr = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#Expr", name: "Expr")
    Exprs = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudsearchdomain#Exprs", name: "Exprs")
    Facet = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#Facet", name: "Facet")
    Facets = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudsearchdomain#Facets", name: "Facets")
    FieldStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#FieldStats", name: "FieldStats")
    FieldValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearchdomain#FieldValue", name: "FieldValue")
    Fields = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudsearchdomain#Fields", name: "Fields")
    FilterQuery = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#FilterQuery", name: "FilterQuery")
    Highlight = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#Highlight", name: "Highlight")
    Highlights = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudsearchdomain#Highlights", name: "Highlights")
    Hit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#Hit", name: "Hit")
    HitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearchdomain#HitList", name: "HitList")
    Hits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#Hits", name: "Hits")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearchdomain#Long", name: "Long", traits: {"smithy.api#default" => 0})
    Partial = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudsearchdomain#Partial", name: "Partial", traits: {"smithy.api#default" => false})
    Query = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#Query", name: "Query")
    QueryOptions = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#QueryOptions", name: "QueryOptions")
    QueryParser = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudsearchdomain#QueryParser", name: "QueryParser")
    Return = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#Return", name: "Return")
    SearchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#SearchException", name: "SearchException", traits: {"smithy.api#error" => "client"})
    SearchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#SearchRequest", name: "SearchRequest")
    SearchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#SearchResponse", name: "SearchResponse")
    SearchStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#SearchStatus", name: "SearchStatus")
    Size = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearchdomain#Size", name: "Size", traits: {"smithy.api#default" => 0})
    Sort = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#Sort", name: "Sort")
    Start = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearchdomain#Start", name: "Start", traits: {"smithy.api#default" => 0})
    Stat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#Stat", name: "Stat")
    Stats = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudsearchdomain#Stats", name: "Stats")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#String", name: "String")
    SuggestModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#SuggestModel", name: "SuggestModel")
    SuggestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#SuggestRequest", name: "SuggestRequest")
    SuggestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#SuggestResponse", name: "SuggestResponse")
    SuggestStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#SuggestStatus", name: "SuggestStatus")
    Suggester = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearchdomain#Suggester", name: "Suggester")
    SuggestionMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#SuggestionMatch", name: "SuggestionMatch")
    Suggestions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearchdomain#Suggestions", name: "Suggestions")
    SuggestionsSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearchdomain#SuggestionsSize", name: "SuggestionsSize", traits: {"smithy.api#default" => 0})
    UploadDocumentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#UploadDocumentsRequest", name: "UploadDocumentsRequest")
    UploadDocumentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearchdomain#UploadDocumentsResponse", name: "UploadDocumentsResponse")

    Bucket.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    Bucket.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "count", traits: {"smithy.api#default" => 0}))
    Bucket.type = Types::Bucket
    BucketInfo.add_member(:buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketList, name: "buckets"))
    BucketInfo.type = Types::BucketInfo
    BucketList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, name: "member"))
    ContentType.add_member(:application_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "application_json", traits: {"smithy.api#enumValue" => "application/json"}))
    ContentType.add_member(:application_xml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "application_xml", traits: {"smithy.api#enumValue" => "application/xml"}))
    DocumentServiceException.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    DocumentServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    DocumentServiceException.type = Types::DocumentServiceException
    DocumentServiceWarning.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    DocumentServiceWarning.type = Types::DocumentServiceWarning
    DocumentServiceWarnings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentServiceWarning, name: "member"))
    Exprs.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    Exprs.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    Facets.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    Facets.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketInfo, name: "value"))
    FieldStats.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "min"))
    FieldStats.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "max"))
    FieldStats.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "count", traits: {"smithy.api#default" => 0}))
    FieldStats.add_member(:missing, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "missing", traits: {"smithy.api#default" => 0}))
    FieldStats.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "sum", traits: {"smithy.api#default" => 0}))
    FieldStats.add_member(:sum_of_squares, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "sumOfSquares", traits: {"smithy.api#default" => 0}))
    FieldStats.add_member(:mean, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mean"))
    FieldStats.add_member(:stddev, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "stddev", traits: {"smithy.api#default" => 0}))
    FieldStats.type = Types::FieldStats
    FieldValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Fields.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    Fields.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValue, name: "value"))
    Highlights.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    Highlights.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    Hit.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    Hit.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: Fields, name: "fields"))
    Hit.add_member(:exprs, ::Smithy::Schema::Shapes::MemberShape.new(target: Exprs, name: "exprs"))
    Hit.add_member(:highlights, ::Smithy::Schema::Shapes::MemberShape.new(target: Highlights, name: "highlights"))
    Hit.type = Types::Hit
    HitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Hit, name: "member"))
    Hits.add_member(:found, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "found", traits: {"smithy.api#default" => 0}))
    Hits.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "start", traits: {"smithy.api#default" => 0}))
    Hits.add_member(:cursor, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cursor"))
    Hits.add_member(:hit, ::Smithy::Schema::Shapes::MemberShape.new(target: HitList, name: "hit"))
    Hits.type = Types::Hits
    QueryParser.add_member(:simple, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "simple", traits: {"smithy.api#enumValue" => "simple"}))
    QueryParser.add_member(:structured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "structured", traits: {"smithy.api#enumValue" => "structured"}))
    QueryParser.add_member(:lucene, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "lucene", traits: {"smithy.api#enumValue" => "lucene"}))
    QueryParser.add_member(:dismax, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dismax", traits: {"smithy.api#enumValue" => "dismax"}))
    SearchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    SearchException.type = Types::SearchException
    SearchRequest.add_member(:cursor, ::Smithy::Schema::Shapes::MemberShape.new(target: Cursor, name: "cursor", traits: {"smithy.api#httpQuery" => "cursor"}))
    SearchRequest.add_member(:expr, ::Smithy::Schema::Shapes::MemberShape.new(target: Expr, name: "expr", traits: {"smithy.api#httpQuery" => "expr"}))
    SearchRequest.add_member(:facet, ::Smithy::Schema::Shapes::MemberShape.new(target: Facet, name: "facet", traits: {"smithy.api#httpQuery" => "facet"}))
    SearchRequest.add_member(:filter_query, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterQuery, name: "filterQuery", traits: {"smithy.api#httpQuery" => "fq"}))
    SearchRequest.add_member(:highlight, ::Smithy::Schema::Shapes::MemberShape.new(target: Highlight, name: "highlight", traits: {"smithy.api#httpQuery" => "highlight"}))
    SearchRequest.add_member(:partial, ::Smithy::Schema::Shapes::MemberShape.new(target: Partial, name: "partial", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "partial"}))
    SearchRequest.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: Query, name: "query", traits: {"smithy.api#httpQuery" => "q", "smithy.api#required" => {}}))
    SearchRequest.add_member(:query_options, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryOptions, name: "queryOptions", traits: {"smithy.api#httpQuery" => "q.options"}))
    SearchRequest.add_member(:query_parser, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParser, name: "queryParser", traits: {"smithy.api#httpQuery" => "q.parser"}))
    SearchRequest.add_member(:return, ::Smithy::Schema::Shapes::MemberShape.new(target: Return, name: "return", traits: {"smithy.api#httpQuery" => "return"}))
    SearchRequest.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "size", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "size"}))
    SearchRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: Sort, name: "sort", traits: {"smithy.api#httpQuery" => "sort"}))
    SearchRequest.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: Start, name: "start", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "start"}))
    SearchRequest.add_member(:stats, ::Smithy::Schema::Shapes::MemberShape.new(target: Stat, name: "stats", traits: {"smithy.api#httpQuery" => "stats"}))
    SearchRequest.type = Types::SearchRequest
    SearchResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchStatus, name: "status"))
    SearchResponse.add_member(:hits, ::Smithy::Schema::Shapes::MemberShape.new(target: Hits, name: "hits"))
    SearchResponse.add_member(:facets, ::Smithy::Schema::Shapes::MemberShape.new(target: Facets, name: "facets"))
    SearchResponse.add_member(:stats, ::Smithy::Schema::Shapes::MemberShape.new(target: Stats, name: "stats"))
    SearchResponse.type = Types::SearchResponse
    SearchStatus.add_member(:timems, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "timems", traits: {"smithy.api#default" => 0}))
    SearchStatus.add_member(:rid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rid"))
    SearchStatus.type = Types::SearchStatus
    Stats.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    Stats.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldStats, name: "value"))
    SuggestModel.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "query"))
    SuggestModel.add_member(:found, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "found", traits: {"smithy.api#default" => 0}))
    SuggestModel.add_member(:suggestions, ::Smithy::Schema::Shapes::MemberShape.new(target: Suggestions, name: "suggestions"))
    SuggestModel.type = Types::SuggestModel
    SuggestRequest.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: Query, name: "query", traits: {"smithy.api#httpQuery" => "q", "smithy.api#required" => {}}))
    SuggestRequest.add_member(:suggester, ::Smithy::Schema::Shapes::MemberShape.new(target: Suggester, name: "suggester", traits: {"smithy.api#httpQuery" => "suggester", "smithy.api#required" => {}}))
    SuggestRequest.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestionsSize, name: "size", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "size"}))
    SuggestRequest.type = Types::SuggestRequest
    SuggestResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestStatus, name: "status"))
    SuggestResponse.add_member(:suggest, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestModel, name: "suggest"))
    SuggestResponse.type = Types::SuggestResponse
    SuggestStatus.add_member(:timems, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "timems", traits: {"smithy.api#default" => 0}))
    SuggestStatus.add_member(:rid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rid"))
    SuggestStatus.type = Types::SuggestStatus
    SuggestionMatch.add_member(:suggestion, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "suggestion"))
    SuggestionMatch.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "score", traits: {"smithy.api#default" => 0}))
    SuggestionMatch.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    SuggestionMatch.type = Types::SuggestionMatch
    Suggestions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestionMatch, name: "member"))
    UploadDocumentsRequest.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "documents", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UploadDocumentsRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    UploadDocumentsRequest[:http_payload] = :documents
    UploadDocumentsRequest[:http_payload_member] = UploadDocumentsRequest.member(:documents)
    UploadDocumentsRequest.type = Types::UploadDocumentsRequest
    UploadDocumentsResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    UploadDocumentsResponse.add_member(:adds, ::Smithy::Schema::Shapes::MemberShape.new(target: Adds, name: "adds", traits: {"smithy.api#default" => 0}))
    UploadDocumentsResponse.add_member(:deletes, ::Smithy::Schema::Shapes::MemberShape.new(target: Deletes, name: "deletes", traits: {"smithy.api#default" => 0}))
    UploadDocumentsResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentServiceWarnings, name: "warnings"))
    UploadDocumentsResponse.type = Types::UploadDocumentsResponse

    AmazonCloudSearch2013 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudsearchdomain#AmazonCloudSearch2013"
      service.name = "AmazonCloudSearch2013"
      service.version = "2013-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudSearch Domain", "arnNamespace" => "cloudsearch", "cloudFormationName" => "CloudSearchDomain", "cloudTrailEventSource" => "cloudsearchdomain.amazonaws.com", "docId" => "cloudsearchdomain-2013-01-01", "endpointPrefix" => "cloudsearchdomain"}, "aws.auth#sigv4" => {"name" => "cloudsearch"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon CloudSearch Domain", "smithy.api#xmlNamespace" => {"uri" => "http://cloudsearch.amazonaws.com/doc/2013-01-01/"}}
      service.add_operation(:search, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearchdomain#Search"
        operation.name = "Search"
        operation.input = SearchRequest
        operation.output = SearchResponse
        operation.errors << SearchException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-01-01/search?format=sdk&pretty=true", "code" => 200}}
      end)
      service.add_operation(:suggest, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearchdomain#Suggest"
        operation.name = "Suggest"
        operation.input = SuggestRequest
        operation.output = SuggestResponse
        operation.errors << SearchException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-01-01/suggest?format=sdk&pretty=true", "code" => 200}}
      end)
      service.add_operation(:upload_documents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearchdomain#UploadDocuments"
        operation.name = "UploadDocuments"
        operation.input = UploadDocumentsRequest
        operation.output = UploadDocumentsResponse
        operation.errors << DocumentServiceException
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
