# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SimpleDB
  # @api private
  module ClientApi

    include Seahorse::Model

    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeDoesNotExist = Shapes::StructureShape.new(name: 'AttributeDoesNotExist')
    AttributeList = Shapes::ListShape.new(name: 'AttributeList', flattened: true)
    AttributeNameList = Shapes::ListShape.new(name: 'AttributeNameList', flattened: true)
    BatchDeleteAttributesRequest = Shapes::StructureShape.new(name: 'BatchDeleteAttributesRequest')
    BatchPutAttributesRequest = Shapes::StructureShape.new(name: 'BatchPutAttributesRequest')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    DeletableItem = Shapes::StructureShape.new(name: 'DeletableItem')
    DeletableItemList = Shapes::ListShape.new(name: 'DeletableItemList', flattened: true)
    DeleteAttributesRequest = Shapes::StructureShape.new(name: 'DeleteAttributesRequest')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DomainMetadataRequest = Shapes::StructureShape.new(name: 'DomainMetadataRequest')
    DomainMetadataResult = Shapes::StructureShape.new(name: 'DomainMetadataResult')
    DomainNameList = Shapes::ListShape.new(name: 'DomainNameList', flattened: true)
    DuplicateItemName = Shapes::StructureShape.new(name: 'DuplicateItemName')
    Float = Shapes::FloatShape.new(name: 'Float')
    GetAttributesRequest = Shapes::StructureShape.new(name: 'GetAttributesRequest')
    GetAttributesResult = Shapes::StructureShape.new(name: 'GetAttributesResult')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidNextToken = Shapes::StructureShape.new(name: 'InvalidNextToken')
    InvalidNumberPredicates = Shapes::StructureShape.new(name: 'InvalidNumberPredicates')
    InvalidNumberValueTests = Shapes::StructureShape.new(name: 'InvalidNumberValueTests')
    InvalidParameterValue = Shapes::StructureShape.new(name: 'InvalidParameterValue')
    InvalidQueryExpression = Shapes::StructureShape.new(name: 'InvalidQueryExpression')
    Item = Shapes::StructureShape.new(name: 'Item')
    ItemList = Shapes::ListShape.new(name: 'ItemList', flattened: true)
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResult = Shapes::StructureShape.new(name: 'ListDomainsResult')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MissingParameter = Shapes::StructureShape.new(name: 'MissingParameter')
    NoSuchDomain = Shapes::StructureShape.new(name: 'NoSuchDomain')
    NumberDomainAttributesExceeded = Shapes::StructureShape.new(name: 'NumberDomainAttributesExceeded')
    NumberDomainBytesExceeded = Shapes::StructureShape.new(name: 'NumberDomainBytesExceeded')
    NumberDomainsExceeded = Shapes::StructureShape.new(name: 'NumberDomainsExceeded')
    NumberItemAttributesExceeded = Shapes::StructureShape.new(name: 'NumberItemAttributesExceeded')
    NumberSubmittedAttributesExceeded = Shapes::StructureShape.new(name: 'NumberSubmittedAttributesExceeded')
    NumberSubmittedItemsExceeded = Shapes::StructureShape.new(name: 'NumberSubmittedItemsExceeded')
    PutAttributesRequest = Shapes::StructureShape.new(name: 'PutAttributesRequest')
    ReplaceableAttribute = Shapes::StructureShape.new(name: 'ReplaceableAttribute')
    ReplaceableAttributeList = Shapes::ListShape.new(name: 'ReplaceableAttributeList', flattened: true)
    ReplaceableItem = Shapes::StructureShape.new(name: 'ReplaceableItem')
    ReplaceableItemList = Shapes::ListShape.new(name: 'ReplaceableItemList', flattened: true)
    RequestTimeout = Shapes::StructureShape.new(name: 'RequestTimeout')
    SelectRequest = Shapes::StructureShape.new(name: 'SelectRequest')
    SelectResult = Shapes::StructureShape.new(name: 'SelectResult')
    String = Shapes::StringShape.new(name: 'String')
    TooManyRequestedAttributes = Shapes::StructureShape.new(name: 'TooManyRequestedAttributes')
    UpdateCondition = Shapes::StructureShape.new(name: 'UpdateCondition')

    Attribute.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Attribute.add_member(:alternate_name_encoding, Shapes::ShapeRef.new(shape: String, location_name: "AlternateNameEncoding"))
    Attribute.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    Attribute.add_member(:alternate_value_encoding, Shapes::ShapeRef.new(shape: String, location_name: "AlternateValueEncoding"))
    Attribute.struct_class = Types::Attribute

    AttributeList.member = Shapes::ShapeRef.new(shape: Attribute, location_name: "Attribute")

    AttributeNameList.member = Shapes::ShapeRef.new(shape: String, location_name: "AttributeName")

    BatchDeleteAttributesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DomainName"))
    BatchDeleteAttributesRequest.add_member(:items, Shapes::ShapeRef.new(shape: DeletableItemList, required: true, location_name: "Items"))
    BatchDeleteAttributesRequest.struct_class = Types::BatchDeleteAttributesRequest

    BatchPutAttributesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DomainName"))
    BatchPutAttributesRequest.add_member(:items, Shapes::ShapeRef.new(shape: ReplaceableItemList, required: true, location_name: "Items"))
    BatchPutAttributesRequest.struct_class = Types::BatchPutAttributesRequest

    CreateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DomainName"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    DeletableItem.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ItemName"))
    DeletableItem.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, location_name: "Attributes"))
    DeletableItem.struct_class = Types::DeletableItem

    DeletableItemList.member = Shapes::ShapeRef.new(shape: DeletableItem, location_name: "Item")

    DeleteAttributesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DomainName"))
    DeleteAttributesRequest.add_member(:item_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ItemName"))
    DeleteAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, location_name: "Attributes"))
    DeleteAttributesRequest.add_member(:expected, Shapes::ShapeRef.new(shape: UpdateCondition, location_name: "Expected"))
    DeleteAttributesRequest.struct_class = Types::DeleteAttributesRequest

    DeleteDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DomainName"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DomainMetadataRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DomainName"))
    DomainMetadataRequest.struct_class = Types::DomainMetadataRequest

    DomainMetadataResult.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ItemCount"))
    DomainMetadataResult.add_member(:item_names_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "ItemNamesSizeBytes"))
    DomainMetadataResult.add_member(:attribute_name_count, Shapes::ShapeRef.new(shape: Integer, location_name: "AttributeNameCount"))
    DomainMetadataResult.add_member(:attribute_names_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "AttributeNamesSizeBytes"))
    DomainMetadataResult.add_member(:attribute_value_count, Shapes::ShapeRef.new(shape: Integer, location_name: "AttributeValueCount"))
    DomainMetadataResult.add_member(:attribute_values_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "AttributeValuesSizeBytes"))
    DomainMetadataResult.add_member(:timestamp, Shapes::ShapeRef.new(shape: Integer, location_name: "Timestamp"))
    DomainMetadataResult.struct_class = Types::DomainMetadataResult

    DomainNameList.member = Shapes::ShapeRef.new(shape: String, location_name: "DomainName")

    GetAttributesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DomainName"))
    GetAttributesRequest.add_member(:item_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ItemName"))
    GetAttributesRequest.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributeNames"))
    GetAttributesRequest.add_member(:consistent_read, Shapes::ShapeRef.new(shape: Boolean, location_name: "ConsistentRead"))
    GetAttributesRequest.struct_class = Types::GetAttributesRequest

    GetAttributesResult.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, location_name: "Attributes"))
    GetAttributesResult.struct_class = Types::GetAttributesResult

    Item.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Item.add_member(:alternate_name_encoding, Shapes::ShapeRef.new(shape: String, location_name: "AlternateNameEncoding"))
    Item.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, required: true, location_name: "Attributes"))
    Item.struct_class = Types::Item

    ItemList.member = Shapes::ShapeRef.new(shape: Item, location_name: "Item")

    ListDomainsRequest.add_member(:max_number_of_domains, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxNumberOfDomains"))
    ListDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResult.add_member(:domain_names, Shapes::ShapeRef.new(shape: DomainNameList, location_name: "DomainNames"))
    ListDomainsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDomainsResult.struct_class = Types::ListDomainsResult

    PutAttributesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DomainName"))
    PutAttributesRequest.add_member(:item_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ItemName"))
    PutAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: ReplaceableAttributeList, required: true, location_name: "Attributes"))
    PutAttributesRequest.add_member(:expected, Shapes::ShapeRef.new(shape: UpdateCondition, location_name: "Expected"))
    PutAttributesRequest.struct_class = Types::PutAttributesRequest

    ReplaceableAttribute.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ReplaceableAttribute.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    ReplaceableAttribute.add_member(:replace, Shapes::ShapeRef.new(shape: Boolean, location_name: "Replace"))
    ReplaceableAttribute.struct_class = Types::ReplaceableAttribute

    ReplaceableAttributeList.member = Shapes::ShapeRef.new(shape: ReplaceableAttribute, location_name: "Attribute")

    ReplaceableItem.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ItemName"))
    ReplaceableItem.add_member(:attributes, Shapes::ShapeRef.new(shape: ReplaceableAttributeList, required: true, location_name: "Attributes"))
    ReplaceableItem.struct_class = Types::ReplaceableItem

    ReplaceableItemList.member = Shapes::ShapeRef.new(shape: ReplaceableItem, location_name: "Item")

    SelectRequest.add_member(:select_expression, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SelectExpression"))
    SelectRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SelectRequest.add_member(:consistent_read, Shapes::ShapeRef.new(shape: Boolean, location_name: "ConsistentRead"))
    SelectRequest.struct_class = Types::SelectRequest

    SelectResult.add_member(:items, Shapes::ShapeRef.new(shape: ItemList, location_name: "Items"))
    SelectResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SelectResult.struct_class = Types::SelectResult

    UpdateCondition.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    UpdateCondition.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    UpdateCondition.add_member(:exists, Shapes::ShapeRef.new(shape: Boolean, location_name: "Exists"))
    UpdateCondition.struct_class = Types::UpdateCondition


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2009-04-15"

      api.metadata = {
        "apiVersion" => "2009-04-15",
        "endpointPrefix" => "sdb",
        "protocol" => "query",
        "serviceFullName" => "Amazon SimpleDB",
        "signatureVersion" => "v2",
        "uid" => "sdb-2009-04-15",
        "xmlNamespace" => "http://sdb.amazonaws.com/doc/2009-04-15/",
      }

      api.add_operation(:batch_delete_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:batch_put_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchPutAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DuplicateItemName)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValue)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameter)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDomain)
        o.errors << Shapes::ShapeRef.new(shape: NumberItemAttributesExceeded)
        o.errors << Shapes::ShapeRef.new(shape: NumberDomainAttributesExceeded)
        o.errors << Shapes::ShapeRef.new(shape: NumberDomainBytesExceeded)
        o.errors << Shapes::ShapeRef.new(shape: NumberSubmittedItemsExceeded)
        o.errors << Shapes::ShapeRef.new(shape: NumberSubmittedAttributesExceeded)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValue)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameter)
        o.errors << Shapes::ShapeRef.new(shape: NumberDomainsExceeded)
      end)

      api.add_operation(:delete_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValue)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameter)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDomain)
        o.errors << Shapes::ShapeRef.new(shape: AttributeDoesNotExist)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: MissingParameter)
      end)

      api.add_operation(:domain_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DomainMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DomainMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: DomainMetadataResult)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameter)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDomain)
      end)

      api.add_operation(:get_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAttributesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValue)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameter)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDomain)
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValue)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_number_of_domains",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValue)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameter)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDomain)
        o.errors << Shapes::ShapeRef.new(shape: NumberDomainAttributesExceeded)
        o.errors << Shapes::ShapeRef.new(shape: NumberDomainBytesExceeded)
        o.errors << Shapes::ShapeRef.new(shape: NumberItemAttributesExceeded)
        o.errors << Shapes::ShapeRef.new(shape: AttributeDoesNotExist)
      end)

      api.add_operation(:select, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Select"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SelectRequest)
        o.output = Shapes::ShapeRef.new(shape: SelectResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValue)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNumberPredicates)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNumberValueTests)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryExpression)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameter)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDomain)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeout)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestedAttributes)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
