# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudSearchDomain
  # @api private
  module ClientApi

    include Seahorse::Model

    Adds = Shapes::IntegerShape.new(name: 'Adds')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Bucket = Shapes::StructureShape.new(name: 'Bucket')
    BucketInfo = Shapes::StructureShape.new(name: 'BucketInfo')
    BucketList = Shapes::ListShape.new(name: 'BucketList')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    Cursor = Shapes::StringShape.new(name: 'Cursor')
    Deletes = Shapes::IntegerShape.new(name: 'Deletes')
    DocumentServiceException = Shapes::StructureShape.new(name: 'DocumentServiceException')
    DocumentServiceWarning = Shapes::StructureShape.new(name: 'DocumentServiceWarning')
    DocumentServiceWarnings = Shapes::ListShape.new(name: 'DocumentServiceWarnings')
    Double = Shapes::FloatShape.new(name: 'Double')
    Expr = Shapes::StringShape.new(name: 'Expr')
    Exprs = Shapes::MapShape.new(name: 'Exprs')
    Facet = Shapes::StringShape.new(name: 'Facet')
    Facets = Shapes::MapShape.new(name: 'Facets')
    FieldStats = Shapes::StructureShape.new(name: 'FieldStats')
    FieldValue = Shapes::ListShape.new(name: 'FieldValue')
    Fields = Shapes::MapShape.new(name: 'Fields')
    FilterQuery = Shapes::StringShape.new(name: 'FilterQuery')
    Highlight = Shapes::StringShape.new(name: 'Highlight')
    Highlights = Shapes::MapShape.new(name: 'Highlights')
    Hit = Shapes::StructureShape.new(name: 'Hit')
    HitList = Shapes::ListShape.new(name: 'HitList')
    Hits = Shapes::StructureShape.new(name: 'Hits')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Partial = Shapes::BooleanShape.new(name: 'Partial')
    Query = Shapes::StringShape.new(name: 'Query')
    QueryOptions = Shapes::StringShape.new(name: 'QueryOptions')
    QueryParser = Shapes::StringShape.new(name: 'QueryParser')
    Return = Shapes::StringShape.new(name: 'Return')
    SearchException = Shapes::StructureShape.new(name: 'SearchException')
    SearchRequest = Shapes::StructureShape.new(name: 'SearchRequest')
    SearchResponse = Shapes::StructureShape.new(name: 'SearchResponse')
    SearchStatus = Shapes::StructureShape.new(name: 'SearchStatus')
    Size = Shapes::IntegerShape.new(name: 'Size')
    Sort = Shapes::StringShape.new(name: 'Sort')
    Start = Shapes::IntegerShape.new(name: 'Start')
    Stat = Shapes::StringShape.new(name: 'Stat')
    Stats = Shapes::MapShape.new(name: 'Stats')
    String = Shapes::StringShape.new(name: 'String')
    SuggestModel = Shapes::StructureShape.new(name: 'SuggestModel')
    SuggestRequest = Shapes::StructureShape.new(name: 'SuggestRequest')
    SuggestResponse = Shapes::StructureShape.new(name: 'SuggestResponse')
    SuggestStatus = Shapes::StructureShape.new(name: 'SuggestStatus')
    Suggester = Shapes::StringShape.new(name: 'Suggester')
    SuggestionMatch = Shapes::StructureShape.new(name: 'SuggestionMatch')
    Suggestions = Shapes::ListShape.new(name: 'Suggestions')
    SuggestionsSize = Shapes::IntegerShape.new(name: 'SuggestionsSize')
    UploadDocumentsRequest = Shapes::StructureShape.new(name: 'UploadDocumentsRequest')
    UploadDocumentsResponse = Shapes::StructureShape.new(name: 'UploadDocumentsResponse')

    Bucket.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    Bucket.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "count"))
    Bucket.struct_class = Types::Bucket

    BucketInfo.add_member(:buckets, Shapes::ShapeRef.new(shape: BucketList, location_name: "buckets"))
    BucketInfo.struct_class = Types::BucketInfo

    BucketList.member = Shapes::ShapeRef.new(shape: Bucket)

    DocumentServiceWarning.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DocumentServiceWarning.struct_class = Types::DocumentServiceWarning

    DocumentServiceWarnings.member = Shapes::ShapeRef.new(shape: DocumentServiceWarning)

    Exprs.key = Shapes::ShapeRef.new(shape: String)
    Exprs.value = Shapes::ShapeRef.new(shape: String)

    Facets.key = Shapes::ShapeRef.new(shape: String)
    Facets.value = Shapes::ShapeRef.new(shape: BucketInfo)

    FieldStats.add_member(:min, Shapes::ShapeRef.new(shape: String, location_name: "min"))
    FieldStats.add_member(:max, Shapes::ShapeRef.new(shape: String, location_name: "max"))
    FieldStats.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "count"))
    FieldStats.add_member(:missing, Shapes::ShapeRef.new(shape: Long, location_name: "missing"))
    FieldStats.add_member(:sum, Shapes::ShapeRef.new(shape: Double, location_name: "sum"))
    FieldStats.add_member(:sum_of_squares, Shapes::ShapeRef.new(shape: Double, location_name: "sumOfSquares"))
    FieldStats.add_member(:mean, Shapes::ShapeRef.new(shape: String, location_name: "mean"))
    FieldStats.add_member(:stddev, Shapes::ShapeRef.new(shape: Double, location_name: "stddev"))
    FieldStats.struct_class = Types::FieldStats

    FieldValue.member = Shapes::ShapeRef.new(shape: String)

    Fields.key = Shapes::ShapeRef.new(shape: String)
    Fields.value = Shapes::ShapeRef.new(shape: FieldValue)

    Highlights.key = Shapes::ShapeRef.new(shape: String)
    Highlights.value = Shapes::ShapeRef.new(shape: String)

    Hit.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Hit.add_member(:fields, Shapes::ShapeRef.new(shape: Fields, location_name: "fields"))
    Hit.add_member(:exprs, Shapes::ShapeRef.new(shape: Exprs, location_name: "exprs"))
    Hit.add_member(:highlights, Shapes::ShapeRef.new(shape: Highlights, location_name: "highlights"))
    Hit.struct_class = Types::Hit

    HitList.member = Shapes::ShapeRef.new(shape: Hit)

    Hits.add_member(:found, Shapes::ShapeRef.new(shape: Long, location_name: "found"))
    Hits.add_member(:start, Shapes::ShapeRef.new(shape: Long, location_name: "start"))
    Hits.add_member(:cursor, Shapes::ShapeRef.new(shape: String, location_name: "cursor"))
    Hits.add_member(:hit, Shapes::ShapeRef.new(shape: HitList, location_name: "hit"))
    Hits.struct_class = Types::Hits

    SearchRequest.add_member(:cursor, Shapes::ShapeRef.new(shape: Cursor, location: "querystring", location_name: "cursor"))
    SearchRequest.add_member(:expr, Shapes::ShapeRef.new(shape: Expr, location: "querystring", location_name: "expr"))
    SearchRequest.add_member(:facet, Shapes::ShapeRef.new(shape: Facet, location: "querystring", location_name: "facet"))
    SearchRequest.add_member(:filter_query, Shapes::ShapeRef.new(shape: FilterQuery, location: "querystring", location_name: "fq"))
    SearchRequest.add_member(:highlight, Shapes::ShapeRef.new(shape: Highlight, location: "querystring", location_name: "highlight"))
    SearchRequest.add_member(:partial, Shapes::ShapeRef.new(shape: Partial, location: "querystring", location_name: "partial"))
    SearchRequest.add_member(:query, Shapes::ShapeRef.new(shape: Query, required: true, location: "querystring", location_name: "q"))
    SearchRequest.add_member(:query_options, Shapes::ShapeRef.new(shape: QueryOptions, location: "querystring", location_name: "q.options"))
    SearchRequest.add_member(:query_parser, Shapes::ShapeRef.new(shape: QueryParser, location: "querystring", location_name: "q.parser"))
    SearchRequest.add_member(:return, Shapes::ShapeRef.new(shape: Return, location: "querystring", location_name: "return"))
    SearchRequest.add_member(:size, Shapes::ShapeRef.new(shape: Size, location: "querystring", location_name: "size"))
    SearchRequest.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location: "querystring", location_name: "sort"))
    SearchRequest.add_member(:start, Shapes::ShapeRef.new(shape: Start, location: "querystring", location_name: "start"))
    SearchRequest.add_member(:stats, Shapes::ShapeRef.new(shape: Stat, location: "querystring", location_name: "stats"))
    SearchRequest.struct_class = Types::SearchRequest

    SearchResponse.add_member(:status, Shapes::ShapeRef.new(shape: SearchStatus, location_name: "status"))
    SearchResponse.add_member(:hits, Shapes::ShapeRef.new(shape: Hits, location_name: "hits"))
    SearchResponse.add_member(:facets, Shapes::ShapeRef.new(shape: Facets, location_name: "facets"))
    SearchResponse.add_member(:stats, Shapes::ShapeRef.new(shape: Stats, location_name: "stats"))
    SearchResponse.struct_class = Types::SearchResponse

    SearchStatus.add_member(:timems, Shapes::ShapeRef.new(shape: Long, location_name: "timems"))
    SearchStatus.add_member(:rid, Shapes::ShapeRef.new(shape: String, location_name: "rid"))
    SearchStatus.struct_class = Types::SearchStatus

    Stats.key = Shapes::ShapeRef.new(shape: String)
    Stats.value = Shapes::ShapeRef.new(shape: FieldStats)

    SuggestModel.add_member(:query, Shapes::ShapeRef.new(shape: String, location_name: "query"))
    SuggestModel.add_member(:found, Shapes::ShapeRef.new(shape: Long, location_name: "found"))
    SuggestModel.add_member(:suggestions, Shapes::ShapeRef.new(shape: Suggestions, location_name: "suggestions"))
    SuggestModel.struct_class = Types::SuggestModel

    SuggestRequest.add_member(:query, Shapes::ShapeRef.new(shape: Query, required: true, location: "querystring", location_name: "q"))
    SuggestRequest.add_member(:suggester, Shapes::ShapeRef.new(shape: Suggester, required: true, location: "querystring", location_name: "suggester"))
    SuggestRequest.add_member(:size, Shapes::ShapeRef.new(shape: SuggestionsSize, location: "querystring", location_name: "size"))
    SuggestRequest.struct_class = Types::SuggestRequest

    SuggestResponse.add_member(:status, Shapes::ShapeRef.new(shape: SuggestStatus, location_name: "status"))
    SuggestResponse.add_member(:suggest, Shapes::ShapeRef.new(shape: SuggestModel, location_name: "suggest"))
    SuggestResponse.struct_class = Types::SuggestResponse

    SuggestStatus.add_member(:timems, Shapes::ShapeRef.new(shape: Long, location_name: "timems"))
    SuggestStatus.add_member(:rid, Shapes::ShapeRef.new(shape: String, location_name: "rid"))
    SuggestStatus.struct_class = Types::SuggestStatus

    SuggestionMatch.add_member(:suggestion, Shapes::ShapeRef.new(shape: String, location_name: "suggestion"))
    SuggestionMatch.add_member(:score, Shapes::ShapeRef.new(shape: Long, location_name: "score"))
    SuggestionMatch.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    SuggestionMatch.struct_class = Types::SuggestionMatch

    Suggestions.member = Shapes::ShapeRef.new(shape: SuggestionMatch)

    UploadDocumentsRequest.add_member(:documents, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "documents"))
    UploadDocumentsRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location: "header", location_name: "Content-Type"))
    UploadDocumentsRequest.struct_class = Types::UploadDocumentsRequest
    UploadDocumentsRequest[:payload] = :documents
    UploadDocumentsRequest[:payload_member] = UploadDocumentsRequest.member(:documents)

    UploadDocumentsResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    UploadDocumentsResponse.add_member(:adds, Shapes::ShapeRef.new(shape: Adds, location_name: "adds"))
    UploadDocumentsResponse.add_member(:deletes, Shapes::ShapeRef.new(shape: Deletes, location_name: "deletes"))
    UploadDocumentsResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: DocumentServiceWarnings, location_name: "warnings"))
    UploadDocumentsResponse.struct_class = Types::UploadDocumentsResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2013-01-01"

      api.metadata = {
        "apiVersion" => "2013-01-01",
        "endpointPrefix" => "cloudsearchdomain",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon CloudSearch Domain",
        "signatureVersion" => "v4",
        "signingName" => "cloudsearch",
        "uid" => "cloudsearchdomain-2013-01-01",
      }

      api.add_operation(:search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Search"
        o.http_method = "GET"
        o.http_request_uri = "/2013-01-01/search?format=sdk&pretty=true"
        o.input = Shapes::ShapeRef.new(shape: SearchRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchResponse)
        o.errors << Shapes::ShapeRef.new(shape: SearchException)
      end)

      api.add_operation(:suggest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Suggest"
        o.http_method = "GET"
        o.http_request_uri = "/2013-01-01/suggest?format=sdk&pretty=true"
        o.input = Shapes::ShapeRef.new(shape: SuggestRequest)
        o.output = Shapes::ShapeRef.new(shape: SuggestResponse)
        o.errors << Shapes::ShapeRef.new(shape: SearchException)
      end)

      api.add_operation(:upload_documents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UploadDocuments"
        o.http_method = "POST"
        o.http_request_uri = "/2013-01-01/documents/batch?format=sdk"
        o.input = Shapes::ShapeRef.new(shape: UploadDocumentsRequest)
        o.output = Shapes::ShapeRef.new(shape: UploadDocumentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DocumentServiceException)
      end)
    end

  end
end
