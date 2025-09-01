# frozen_string_literal: true

# This is generated code!

module Aws::Textract
  # This module contains the types returned by client operations.
  module Types

    # <p>You aren't authorized to perform the action. Use the Amazon Resource Name (ARN) 
    #             of an authorized user or IAM role to perform the operation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An adapter selected for use when analyzing documents. Contains an adapter ID and a version number. 
    #          Contains information on pages selected for analysis when analyzing documents asychronously.</p>
    # @!attribute adapter_id
    #   <p>A unique identifier for the adapter resource.</p>
    #   @return [String]
    # @!attribute pages
    #   <p>Pages is a parameter that the user inputs to specify which pages to apply an adapter to. The following is a 
    #            list of rules for using this parameter.</p>
    #            <ul>
    #               <li>
    #                  <p>If a page is not specified, it is set to <code>["1"]</code> by default.</p>
    #               </li>
    #               <li>
    #                  <p>The following characters are allowed in the parameter's string: 
    #                  <code>0 1 2 3 4 5 6 7 8 9 - *</code>. No whitespace is allowed.</p>
    #               </li>
    #               <li>
    #                  <p>When using * to indicate all pages, it must be the only element in the list.</p>
    #               </li>
    #               <li>
    #                  <p>You can use page intervals, such as <code>["1-3", "1-1", "4-*"]</code>. Where <code>*</code> indicates last page of 
    #                  document.</p>
    #               </li>
    #               <li>
    #                  <p>Specified pages must be greater than 0 and less than or equal to the number of pages in the document.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute version
    #   <p>A string that identifies the version of the adapter.</p>
    #   @return [String]
    class Adapter < Struct.new(
      :adapter_id,
      :pages,
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information on the adapter, including the adapter ID, Name, Creation time, and feature types.</p>
    # @!attribute adapter_id
    #   <p>A unique identifier for the adapter resource.</p>
    #   @return [String]
    # @!attribute adapter_name
    #   <p>A string naming the adapter resource.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time that the adapter was created.</p>
    #   @return [Time]
    # @!attribute feature_types
    #   <p>The feature types that the adapter is operating on.</p>
    #   @return [Array<String>]
    class AdapterOverview < Struct.new(
      :adapter_id,
      :adapter_name,
      :creation_time,
      :feature_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The dataset configuration options for a given version of an adapter. 
    #          Can include an Amazon S3 bucket if specified.</p>
    # @!attribute manifest_s3_object
    #   <p>The S3 bucket name and file name that identifies the document.</p>
    #            <p>The AWS Region for the S3 bucket that contains the document must match the Region that
    #            you use for Amazon Textract operations.</p>
    #            <p>For Amazon Textract to process a file in an S3 bucket, the user must have
    #            permission to access the S3 bucket and file.
    #            
    #         </p>
    #   @return [Types::S3Object]
    class AdapterVersionDatasetConfig < Struct.new(
      :manifest_s3_object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information on the metrics used to evalute the peformance of a given adapter version. Includes data for 
    #          baseline model performance and individual adapter version perfromance.</p>
    # @!attribute baseline
    #   <p>The F1 score, precision, and recall metrics for the baseline model.</p>
    #   @return [Types::EvaluationMetric]
    # @!attribute adapter_version
    #   <p>The F1 score, precision, and recall metrics for the baseline model.</p>
    #   @return [Types::EvaluationMetric]
    # @!attribute feature_type
    #   <p>Indicates the feature type being analyzed by a given adapter version.</p>
    #   @return [String]
    class AdapterVersionEvaluationMetric < Struct.new(
      :baseline,
      :adapter_version,
      :feature_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary info for an adapter version. Contains information on the AdapterId, AdapterVersion, CreationTime, FeatureTypes, and Status.</p>
    # @!attribute adapter_id
    #   <p>A unique identifier for the adapter associated with a given adapter version.</p>
    #   @return [String]
    # @!attribute adapter_version
    #   <p>An identified for a given adapter version.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time that a given adapter version was created.</p>
    #   @return [Time]
    # @!attribute feature_types
    #   <p>The feature types that the adapter version is operating on.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>Contains information on the status of a given adapter version.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message explaining the status of a given adapter vesion.</p>
    #   @return [String]
    class AdapterVersionOverview < Struct.new(
      :adapter_id,
      :adapter_version,
      :creation_time,
      :feature_types,
      :status,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AdapterVersionStatus
      ACTIVE = 'ACTIVE'
      AT_RISK = 'AT_RISK'
      DEPRECATED = 'DEPRECATED'
      CREATION_ERROR = 'CREATION_ERROR'
      CREATION_IN_PROGRESS = 'CREATION_IN_PROGRESS'
    end

    # <p>Contains information about adapters used when analyzing a document, 
    #          with each adapter specified using an AdapterId and version</p>
    # @!attribute adapters
    #   <p>A list of adapters to be used when analyzing the specified document.</p>
    #   @return [Array<Types::Adapter>]
    class AdaptersConfig < Struct.new(
      :adapters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document
    #   <p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS
    #            CLI to call Amazon Textract operations, you can't pass image bytes. The document must be an
    #            image in JPEG, PNG, PDF, or TIFF format.</p>
    #            <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
    #            image bytes that are passed using the <code>Bytes</code> field. </p>
    #   @return [Types::Document]
    # @!attribute feature_types
    #   <p>A list of the types of analysis to perform. Add TABLES to the list to return information
    #            about the tables that are detected in the input document. Add FORMS to return detected form
    #            data. Add SIGNATURES to return the locations of detected signatures. Add LAYOUT to the list
    #            to return information about the layout of the document.  All lines and words detected in the document are included in the response (including
    #            text that isn't related to the value of <code>FeatureTypes</code>). </p>
    #   @return [Array<String>]
    # @!attribute human_loop_config
    #   <p>Sets the configuration for the human in the loop workflow for analyzing
    #            documents.</p>
    #   @return [Types::HumanLoopConfig]
    # @!attribute queries_config
    #   <p>Contains Queries and the alias for those Queries, as determined by the input. </p>
    #   @return [Types::QueriesConfig]
    # @!attribute adapters_config
    #   <p>Specifies the adapter to be used when analyzing a document.</p>
    #   @return [Types::AdaptersConfig]
    class AnalyzeDocumentRequest < Struct.new(
      :document,
      :feature_types,
      :human_loop_config,
      :queries_config,
      :adapters_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_metadata
    #   <p>Metadata about the analyzed document. An example is the number of pages.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute blocks
    #   <p>The items that are detected and analyzed by <code>AnalyzeDocument</code>.</p>
    #   @return [Array<Types::Block>]
    # @!attribute human_loop_activation_output
    #   <p>Shows the results of the human in the loop evaluation.</p>
    #   @return [Types::HumanLoopActivationOutput]
    # @!attribute analyze_document_model_version
    #   <p>The version of the model used to analyze the document.</p>
    #   @return [String]
    class AnalyzeDocumentResponse < Struct.new(
      :document_metadata,
      :blocks,
      :human_loop_activation_output,
      :analyze_document_model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document
    #   <p>The input document, either as bytes or as an S3 object.</p>
    #            <p>You pass image bytes to an Amazon Textract API operation by using the <code>Bytes</code>
    #            property. For example, you would use the <code>Bytes</code> property to pass a document
    #            loaded from a local file system. Image bytes passed by using the <code>Bytes</code>
    #            property must be base64 encoded. Your code might not need to encode document file bytes if
    #            you're using an AWS SDK to call Amazon Textract API operations. </p>
    #            <p>You pass images stored in an S3 bucket to an Amazon Textract API operation by using the
    #               <code>S3Object</code> property. Documents stored in an S3 bucket don't need to be base64
    #            encoded.</p>
    #            <p>The AWS Region for the S3 bucket that contains the S3 object must match the AWS
    #            Region that you use for Amazon Textract operations.</p>
    #            <p>If you use the AWS CLI to call Amazon Textract operations, passing image bytes using
    #            the Bytes property isn't supported. You must first upload the document to an Amazon S3
    #            bucket, and then call the operation using the S3Object property.</p>
    #            <p>For Amazon Textract to process an S3 object, the user must have permission
    #            to access the S3 object. </p>
    #   @return [Types::Document]
    class AnalyzeExpenseRequest < Struct.new(
      :document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_metadata
    #   <p>Information about the input document.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute expense_documents
    #   <p>The expenses detected by Amazon Textract.</p>
    #   @return [Array<Types::ExpenseDocument>]
    class AnalyzeExpenseResponse < Struct.new(
      :document_metadata,
      :expense_documents,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Used to contain the information detected by an AnalyzeID operation.</p>
    # @!attribute text
    #   <p>Text of either the normalized field or value associated with it.</p>
    #   @return [String]
    # @!attribute normalized_value
    #   <p>Only returned for dates, returns the type of value detected and the date
    #            written in a more machine readable way.</p>
    #   @return [Types::NormalizedValue]
    # @!attribute confidence
    #   <p>The confidence score of the detected text.</p>
    #   @return [Float]
    class AnalyzeIDDetections < Struct.new(
      :text,
      :normalized_value,
      :confidence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_pages
    #   <p>The document being passed to AnalyzeID.</p>
    #   @return [Array<Types::Document>]
    class AnalyzeIDRequest < Struct.new(
      :document_pages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identity_documents
    #   <p>The list of documents processed by AnalyzeID. Includes a number denoting their place in
    #            the list and the response structure for the document.</p>
    #   @return [Array<Types::IdentityDocument>]
    # @!attribute document_metadata
    #   <p>Information about the input document.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute analyze_id_model_version
    #   <p>The version of the AnalyzeIdentity API being used to process documents.</p>
    #   @return [String]
    class AnalyzeIDResponse < Struct.new(
      :identity_documents,
      :document_metadata,
      :analyze_id_model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AutoUpdate
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Amazon Textract isn't able to read the document. For more information on the document
    #          limits in Amazon Textract, see <a>limits</a>.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class BadDocumentException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A <code>Block</code> represents items that are recognized in a document within a group
    #          of pixels close to each other. The information returned in a <code>Block</code> object
    #          depends on the type of operation. In text detection for documents (for example <a>DetectDocumentText</a>), you get information about the detected words and lines
    #          of text. In text analysis (for example <a>AnalyzeDocument</a>), you can also get
    #          information about the fields, tables, and selection elements that are detected in the
    #          document.</p>
    #          <p>An array of <code>Block</code> objects is returned by both synchronous and asynchronous
    #          operations. In synchronous operations, such as <a>DetectDocumentText</a>, the
    #          array of <code>Block</code> objects is the entire set of results. In asynchronous
    #          operations, such as <a>GetDocumentAnalysis</a>, the array is returned over one
    #          or more responses.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works.html">How Amazon Textract Works</a>.</p>
    # @!attribute block_type
    #   <p>The type of text item that's recognized. In operations for text detection, the following
    #            types are returned:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>PAGE</i> - Contains a list of the LINE <code>Block</code> objects
    #                  that are detected on a document page.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>WORD</i> - A word detected on a document page. A word is one or
    #                  more ISO basic Latin script characters that aren't separated by spaces.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>LINE</i> - A string of space-delimited, contiguous words that are
    #                  detected on a document page.</p>
    #               </li>
    #            </ul>
    #            <p>In text analysis operations, the following types are returned:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>PAGE</i> - Contains a list of child <code>Block</code> objects
    #                  that are detected on a document page.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>KEY_VALUE_SET</i> - Stores the KEY and VALUE <code>Block</code>
    #                  objects for linked text that's detected on a document page. Use the
    #                     <code>EntityType</code> field to determine if a KEY_VALUE_SET object is a KEY
    #                     <code>Block</code> object or a VALUE <code>Block</code> object. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>WORD</i> - A word that's detected on a document page. A word is
    #                  one or more ISO basic Latin script characters that aren't separated by spaces.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>LINE</i> - A string of tab-delimited, contiguous words that are
    #                  detected on a document page.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TABLE</i> - A table that's detected on a document page. A table
    #                  is grid-based information with two or more rows or columns, with a cell span of one
    #                  row and one column each. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TABLE_TITLE</i> - The title of a table. A title is typically a
    #                  line of text above or below a table, or embedded as the first row of a table. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TABLE_FOOTER</i> - The footer associated with a table. A footer
    #                  is typically a line or lines of text below a table or embedded as the last row of a
    #                  table. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>CELL</i> - A cell within a detected table. The cell is the parent
    #                  of the block that contains the text in the cell.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>MERGED_CELL</i>  - A cell in a table whose content spans more than
    #                  one row or column. The <code>Relationships</code> array for this cell contain data
    #                  from individual cells.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>SELECTION_ELEMENT</i> - A selection element such as an option
    #                  button (radio button) or a check box that's detected on a document page. Use the
    #                  value of <code>SelectionStatus</code> to determine the status of the selection
    #                  element.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>SIGNATURE</i> - The location and confidence score of a signature detected on a
    #                  document page. Can be returned as part of a Key-Value pair or a detected cell.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>QUERY</i> - A question asked during the call of AnalyzeDocument. Contains an
    #                  alias and an ID that attaches it to its answer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>QUERY_RESULT</i> - A response to a question asked during the call
    #                  of analyze document. Comes with an alias and ID for ease of locating in a 
    #                  response. Also contains location and confidence score.</p>
    #               </li>
    #            </ul>
    #            <p>The following BlockTypes are only returned for Amazon Textract Layout.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LAYOUT_TITLE</code> - The main title of the document.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAYOUT_HEADER</code> - Text located in the top margin of the document.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAYOUT_FOOTER</code> - Text located in the bottom margin of the document.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAYOUT_SECTION_HEADER</code> - The titles of sections within a document.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAYOUT_PAGE_NUMBER</code> - The page number of the documents.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAYOUT_LIST</code> - Any information grouped together in list form. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAYOUT_FIGURE</code> - Indicates the location of an image in a document.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAYOUT_TABLE</code> - Indicates the location of a table in the document.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAYOUT_KEY_VALUE</code> - Indicates the location of form key-values in a document.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAYOUT_TEXT</code> - Text that is present typically as a part of paragraphs in documents.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score that Amazon Textract has in the accuracy of the recognized text and
    #            the accuracy of the geometry points around the recognized text.</p>
    #   @return [Float]
    # @!attribute text
    #   <p>The word or line of text that's recognized by Amazon Textract. </p>
    #   @return [String]
    # @!attribute text_type
    #   <p>The kind of text that Amazon Textract has detected. Can check for handwritten text and
    #            printed text.</p>
    #   @return [String]
    # @!attribute row_index
    #   <p>The row in which a table cell is located. The first row position is 1.
    #               <code>RowIndex</code> isn't returned by <code>DetectDocumentText</code> and
    #               <code>GetDocumentTextDetection</code>.</p>
    #   @return [Integer]
    # @!attribute column_index
    #   <p>The column in which a table cell appears. The first column position is 1.
    #               <code>ColumnIndex</code> isn't returned by <code>DetectDocumentText</code> and
    #               <code>GetDocumentTextDetection</code>.</p>
    #   @return [Integer]
    # @!attribute row_span
    #   <p>The number of rows that a table cell spans. <code>RowSpan</code> isn't returned by
    #               <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>.</p>
    #   @return [Integer]
    # @!attribute column_span
    #   <p>The number of columns that a table cell spans. <code>ColumnSpan</code> isn't returned by
    #               <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>. </p>
    #   @return [Integer]
    # @!attribute geometry
    #   <p>The location of the recognized text on the image. It includes an axis-aligned, coarse
    #            bounding box that surrounds the text, and a finer-grain polygon for more accurate spatial
    #            information. </p>
    #   @return [Types::Geometry]
    # @!attribute id
    #   <p>The identifier for the recognized text. The identifier is only unique for a single
    #            operation. </p>
    #   @return [String]
    # @!attribute relationships
    #   <p>A list of relationship objects that describe how blocks are related to each other. For
    #            example, a LINE block object contains a CHILD relationship type with the WORD blocks that
    #            make up the line of text. There aren't Relationship objects in the list for relationships
    #            that don't exist, such as when the current block has no child blocks.</p>
    #   @return [Array<Types::Relationship>]
    # @!attribute entity_types
    #   <p>The type of entity. </p>
    #            <p>The following entity types can be returned by FORMS analysis:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>KEY</i> - An identifier for a field on the document.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>VALUE</i> - The field text.</p>
    #               </li>
    #            </ul>
    #            <p>The following entity types can be returned by TABLES analysis:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>COLUMN_HEADER</i> - Identifies a cell that is a header of a column. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TABLE_TITLE</i> - Identifies a cell that is a title within the
    #                  table. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TABLE_SECTION_TITLE</i> - Identifies a cell that is a title of a
    #                  section within a table. A section title is a cell that typically spans an entire row
    #                  above a section. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TABLE_FOOTER</i> - Identifies a cell that is a footer of a table. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TABLE_SUMMARY</i> - Identifies a summary cell of a table. A
    #                  summary cell can be a row of a table or an additional, smaller table that contains
    #                  summary information for another table. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>STRUCTURED_TABLE </i> - Identifies a table with column headers
    #                  where the content of each row corresponds to the headers. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>SEMI_STRUCTURED_TABLE</i> - Identifies a non-structured table. </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>EntityTypes</code> isn't returned by <code>DetectDocumentText</code> and
    #               <code>GetDocumentTextDetection</code>.</p>
    #   @return [Array<String>]
    # @!attribute selection_status
    #   <p>The selection status of a selection element, such as an option button or check box.
    #         </p>
    #   @return [String]
    # @!attribute page
    #   <p>The page on which a block was detected. <code>Page</code> is returned by synchronous and
    #            asynchronous operations. Page values greater than 1 are only returned for multipage
    #            documents that are in PDF or TIFF format. A scanned image (JPEG/PNG) provided to an
    #            asynchronous operation, even if it contains multiple document pages, is considered a
    #            single-page document. This means that for scanned images the value of <code>Page</code> is
    #            always 1. </p>
    #   @return [Integer]
    # @!attribute query
    #   <p></p>
    #   @return [Types::Query]
    class Block < Struct.new(
      :block_type,
      :confidence,
      :text,
      :text_type,
      :row_index,
      :column_index,
      :row_span,
      :column_span,
      :geometry,
      :id,
      :relationships,
      :entity_types,
      :selection_status,
      :page,
      :query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BlockType
      KEY_VALUE_SET = 'KEY_VALUE_SET'
      PAGE = 'PAGE'
      LINE = 'LINE'
      WORD = 'WORD'
      TABLE = 'TABLE'
      CELL = 'CELL'
      SELECTION_ELEMENT = 'SELECTION_ELEMENT'
      MERGED_CELL = 'MERGED_CELL'
      TITLE = 'TITLE'
      QUERY = 'QUERY'
      QUERY_RESULT = 'QUERY_RESULT'
      SIGNATURE = 'SIGNATURE'
      TABLE_TITLE = 'TABLE_TITLE'
      TABLE_FOOTER = 'TABLE_FOOTER'
      LAYOUT_TEXT = 'LAYOUT_TEXT'
      LAYOUT_TITLE = 'LAYOUT_TITLE'
      LAYOUT_HEADER = 'LAYOUT_HEADER'
      LAYOUT_FOOTER = 'LAYOUT_FOOTER'
      LAYOUT_SECTION_HEADER = 'LAYOUT_SECTION_HEADER'
      LAYOUT_PAGE_NUMBER = 'LAYOUT_PAGE_NUMBER'
      LAYOUT_LIST = 'LAYOUT_LIST'
      LAYOUT_FIGURE = 'LAYOUT_FIGURE'
      LAYOUT_TABLE = 'LAYOUT_TABLE'
      LAYOUT_KEY_VALUE = 'LAYOUT_KEY_VALUE'
    end

    # <p>The bounding box around the detected page, text, key-value pair, table, table cell, or
    #          selection element on a document page. The <code>left</code> (x-coordinate) and
    #             <code>top</code> (y-coordinate) are coordinates that represent the top and left sides of
    #          the bounding box. Note that the upper-left corner of the image is the origin (0,0). </p>
    #          <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall
    #          document page size. For example, if the input image is 700 x 200 pixels, and the top-left
    #          coordinate of the bounding box is 350 x 50 pixels, the API returns a <code>left</code>
    #          value of 0.5 (350/700) and a <code>top</code> value of 0.25 (50/200).</p>
    #          <p>The <code>width</code> and <code>height</code> values represent the dimensions of the
    #          bounding box as a ratio of the overall document page dimension. For example, if the
    #          document page size is 700 x 200 pixels, and the bounding box width is 70 pixels, the width
    #          returned is 0.1. </p>
    # @!attribute width
    #   <p>The width of the bounding box as a ratio of the overall document page
    #            width.</p>
    #   @return [Float]
    # @!attribute height
    #   <p>The height of the bounding box as a ratio of the overall document page
    #            height.</p>
    #   @return [Float]
    # @!attribute left
    #   <p>The left coordinate of the bounding box as a ratio of overall document page
    #            width.</p>
    #   @return [Float]
    # @!attribute top
    #   <p>The top coordinate of the bounding box as a ratio of overall document page
    #            height.</p>
    #   @return [Float]
    class BoundingBox < Struct.new(
      :width,
      :height,
      :left,
      :top,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:width] = 0 unless options.key?(:width)
        options[:height] = 0 unless options.key?(:height)
        options[:left] = 0 unless options.key?(:left)
        options[:top] = 0 unless options.key?(:top)
        super
      end
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ContentClassifier
      FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION = 'FreeOfPersonallyIdentifiableInformation'
      FREE_OF_ADULT_CONTENT = 'FreeOfAdultContent'
    end

    # @!attribute adapter_name
    #   <p>The name to be assigned to the adapter being created.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>Idempotent token is used to recognize the request. If the same token is used with multiple 
    #            CreateAdapter requests, the same session is returned. 
    #            This token is employed to avoid unintentionally creating the same session multiple times.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be assigned to the adapter being created.</p>
    #   @return [String]
    # @!attribute feature_types
    #   <p>The type of feature that the adapter is being trained on. Currrenly, supported feature
    #            types are: <code>QUERIES</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute auto_update
    #   <p>Controls whether or not the adapter should automatically update.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to the adapter.</p>
    #   @return [Hash<String, String>]
    class CreateAdapterRequest < Struct.new(
      :adapter_name,
      :client_request_token,
      :description,
      :feature_types,
      :auto_update,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string containing the unique ID for the adapter that has been created.</p>
    #   @return [String]
    class CreateAdapterResponse < Struct.new(
      :adapter_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string containing a unique ID for the adapter that will receive a new version.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>Idempotent token is used to recognize the request. If the same token is used with multiple 
    #            CreateAdapterVersion requests, the same session is returned. 
    #            This token is employed to avoid unintentionally creating the same session multiple times.</p>
    #   @return [String]
    # @!attribute dataset_config
    #   <p>Specifies a dataset used to train a new adapter version. Takes a ManifestS3Object as the
    #            value.</p>
    #   @return [Types::AdapterVersionDatasetConfig]
    # @!attribute kms_key_id
    #   <p>The identifier for your AWS Key Management Service key (AWS KMS key). Used to encrypt your documents.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>Sets whether or not your output will go to a user created bucket. Used to set the name
    #            of the bucket, and the prefix on the output file.</p>
    #            <p>
    #               <code>OutputConfig</code> is an optional parameter which lets you adjust where your
    #            output will be placed. By default, Amazon Textract will store the results internally and can
    #            only be accessed by the Get API operations. With <code>OutputConfig</code> enabled, you can
    #            set the name of the bucket the output will be sent to the file prefix of the results where
    #            you can download your results. Additionally, you can set the <code>KMSKeyID</code>
    #            parameter to a customer master key (CMK) to encrypt your output. Without this parameter set
    #            Amazon Textract will encrypt server-side using the AWS managed CMK for Amazon S3.</p>
    #            <p>Decryption of Customer Content is necessary for processing of the documents by Amazon Textract. If your account 
    #            is opted out under an AI services opt out policy then all unencrypted Customer Content is immediately and permanently deleted after 
    #            the Customer Content has been processed by the service. No copy of of the output is retained by Amazon Textract. For information about how to opt out, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html"> Managing AI services opt-out policy. </a>
    #            </p>
    #            <p>For more information on data privacy,
    #            see the <a href="https://aws.amazon.com/compliance/data-privacy-faq/">Data Privacy
    #               FAQ</a>.</p>
    #   @return [Types::OutputConfig]
    # @!attribute tags
    #   <p>A set of tags (key-value pairs) that you want to attach to the adapter version. </p>
    #   @return [Hash<String, String>]
    class CreateAdapterVersionRequest < Struct.new(
      :adapter_id,
      :client_request_token,
      :dataset_config,
      :kms_key_id,
      :output_config,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string containing the unique ID for the adapter that has received a new version.</p>
    #   @return [String]
    # @!attribute adapter_version
    #   <p>A string describing the new version of the adapter.</p>
    #   @return [String]
    class CreateAdapterVersionResponse < Struct.new(
      :adapter_id,
      :adapter_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string containing a unique ID for the adapter to be deleted.</p>
    #   @return [String]
    class DeleteAdapterRequest < Struct.new(
      :adapter_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAdapterResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string containing a unique ID for the adapter version that will be deleted.</p>
    #   @return [String]
    # @!attribute adapter_version
    #   <p>Specifies the adapter version to be deleted.</p>
    #   @return [String]
    class DeleteAdapterVersionRequest < Struct.new(
      :adapter_id,
      :adapter_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAdapterVersionResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document
    #   <p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
    #            to call Amazon Textract operations, you can't pass image bytes. The document must be an image 
    #         in JPEG or PNG format.</p>
    #            <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
    #            image bytes that are passed using the <code>Bytes</code> field. </p>
    #   @return [Types::Document]
    class DetectDocumentTextRequest < Struct.new(
      :document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_metadata
    #   <p>Metadata about the document. It contains the number of pages that are detected in the
    #            document.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute blocks
    #   <p>An array of <code>Block</code> objects that contain the text that's detected in the
    #            document.</p>
    #   @return [Array<Types::Block>]
    # @!attribute detect_document_text_model_version
    #   <p></p>
    #   @return [String]
    class DetectDocumentTextResponse < Struct.new(
      :document_metadata,
      :blocks,
      :detect_document_text_model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that holds information regarding a detected signature on a page.</p>
    # @!attribute page
    #   <p>The page a detected signature was found on.</p>
    #   @return [Integer]
    class DetectedSignature < Struct.new(
      :page,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input document, either as bytes or as an S3 object.</p>
    #          <p>You pass image bytes to an Amazon Textract API operation by using the <code>Bytes</code>
    #          property. For example, you would use the <code>Bytes</code> property to pass a document
    #          loaded from a local file system. Image bytes passed by using the <code>Bytes</code>
    #          property must be base64 encoded. Your code might not need to encode document file bytes if
    #          you're using an AWS SDK to call Amazon Textract API operations. </p>
    #          <p>You pass images stored in an S3 bucket to an Amazon Textract API operation by using the
    #             <code>S3Object</code> property. Documents stored in an S3 bucket don't need to be base64
    #          encoded.</p>
    #          <p>The AWS Region for the S3 bucket that contains the S3 object must match the AWS
    #          Region that you use for Amazon Textract operations.</p>
    #          <p>If you use the AWS CLI to call Amazon Textract operations, passing image bytes using
    #          the Bytes property isn't supported. You must first upload the document to an Amazon S3
    #          bucket, and then call the operation using the S3Object property.</p>
    #          <p>For Amazon Textract to process an S3 object, the user must have permission
    #          to access the S3 object. </p>
    # @!attribute bytes
    #   <p>A blob of base64-encoded document bytes. The maximum size of a document that's provided
    #            in a blob of bytes is 5 MB. The document bytes must be in PNG or JPEG format.</p>
    #            <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
    #            image bytes passed using the <code>Bytes</code> field. </p>
    #   @return [String]
    # @!attribute s3_object
    #   <p>Identifies an S3 object as the document source. The maximum size of a document that's
    #            stored in an S3 bucket is 5 MB.</p>
    #   @return [Types::S3Object]
    class Document < Struct.new(
      :bytes,
      :s3_object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information about documents grouped by the same document type.</p>
    # @!attribute type
    #   <p>The type of document that Amazon Textract has detected. See <a href="https://docs.aws.amazon.com/textract/latest/dg/lending-response-objects.html">Analyze Lending Response Objects</a> for a list of all types returned by Textract.</p>
    #   @return [String]
    # @!attribute split_documents
    #   <p>An array that contains information about the pages of a document, defined by logical boundary.</p>
    #   @return [Array<Types::SplitDocument>]
    # @!attribute detected_signatures
    #   <p>A list of the detected signatures found in a document group.</p>
    #   @return [Array<Types::DetectedSignature>]
    # @!attribute undetected_signatures
    #   <p>A list of any expected signatures not found in a document group.</p>
    #   @return [Array<Types::UndetectedSignature>]
    class DocumentGroup < Struct.new(
      :type,
      :split_documents,
      :detected_signatures,
      :undetected_signatures,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon S3 bucket that contains the document to be processed. It's used by asynchronous
    #          operations.</p>
    #          <p>The input document can be an image file in JPEG or PNG format. It can also be a file in
    #          PDF format.</p>
    # @!attribute s3_object
    #   <p>The Amazon S3 bucket that contains the input document.</p>
    #   @return [Types::S3Object]
    class DocumentLocation < Struct.new(
      :s3_object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the input document.</p>
    # @!attribute pages
    #   <p>The number of pages that are detected in the document.</p>
    #   @return [Integer]
    class DocumentMetadata < Struct.new(
      :pages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The document can't be processed because it's too large. The maximum document size for
    #          synchronous operations 10 MB. The maximum document size for asynchronous operations is 500
    #          MB for PDF files.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class DocumentTooLargeException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EntityType
      KEY = 'KEY'
      VALUE = 'VALUE'
      COLUMN_HEADER = 'COLUMN_HEADER'
      TABLE_TITLE = 'TABLE_TITLE'
      TABLE_FOOTER = 'TABLE_FOOTER'
      TABLE_SECTION_TITLE = 'TABLE_SECTION_TITLE'
      TABLE_SUMMARY = 'TABLE_SUMMARY'
      STRUCTURED_TABLE = 'STRUCTURED_TABLE'
      SEMI_STRUCTURED_TABLE = 'SEMI_STRUCTURED_TABLE'
    end

    # <p>The evaluation metrics (F1 score, Precision, and Recall) for an adapter version.</p>
    # @!attribute f1_score
    #   <p>The F1 score for an adapter version.</p>
    #   @return [Float]
    # @!attribute precision
    #   <p>The Precision score for an adapter version.</p>
    #   @return [Float]
    # @!attribute recall
    #   <p>The Recall score for an adapter version.</p>
    #   @return [Float]
    class EvaluationMetric < Struct.new(
      :f1_score,
      :precision,
      :recall,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:f1_score] = 0 unless options.key?(:f1_score)
        options[:precision] = 0 unless options.key?(:precision)
        options[:recall] = 0 unless options.key?(:recall)
        super
      end
    end

    # <p>Returns the kind of currency detected.</p>
    # @!attribute code
    #   <p>Currency code for detected currency. the current supported codes are:</p>
    #            <ul>
    #               <li>
    #                  <p>USD</p>
    #               </li>
    #               <li>
    #                  <p>EUR</p>
    #               </li>
    #               <li>
    #                  <p>GBP</p>
    #               </li>
    #               <li>
    #                  <p>CAD</p>
    #               </li>
    #               <li>
    #                  <p>INR</p>
    #               </li>
    #               <li>
    #                  <p>JPY</p>
    #               </li>
    #               <li>
    #                  <p>CHF</p>
    #               </li>
    #               <li>
    #                  <p>AUD</p>
    #               </li>
    #               <li>
    #                  <p>CNY</p>
    #               </li>
    #               <li>
    #                  <p>BZR</p>
    #               </li>
    #               <li>
    #                  <p>SEK</p>
    #               </li>
    #               <li>
    #                  <p>HKD</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute confidence
    #   <p>Percentage confideence in the detected currency.</p>
    #   @return [Float]
    class ExpenseCurrency < Struct.new(
      :code,
      :confidence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object used to store information about the Value or Label detected by Amazon Textract.</p>
    # @!attribute text
    #   <p>The word or line of text recognized by Amazon Textract</p>
    #   @return [String]
    # @!attribute geometry
    #   <p>Information about where the following items are located on a document page: detected
    #            page, text, key-value pairs, tables, table cells, and selection elements.</p>
    #   @return [Types::Geometry]
    # @!attribute confidence
    #   <p>The confidence in detection, as a percentage</p>
    #   @return [Float]
    class ExpenseDetection < Struct.new(
      :text,
      :geometry,
      :confidence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure holding all the information returned by AnalyzeExpense</p>
    # @!attribute expense_index
    #   <p>Denotes which invoice or receipt in the document the information is coming from. 
    #         First document will be 1, the second 2, and so on.</p>
    #   @return [Integer]
    # @!attribute summary_fields
    #   <p>Any information found outside of a table by Amazon Textract.</p>
    #   @return [Array<Types::ExpenseField>]
    # @!attribute line_item_groups
    #   <p>Information detected on each table of a document, seperated into <code>LineItems</code>.</p>
    #   @return [Array<Types::LineItemGroup>]
    # @!attribute blocks
    #   <p>This is a block object, the same as reported when DetectDocumentText is run on a document.
    #         It provides word level recognition of text.</p>
    #   @return [Array<Types::Block>]
    class ExpenseDocument < Struct.new(
      :expense_index,
      :summary_fields,
      :line_item_groups,
      :blocks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Breakdown of detected information, seperated into 
    #          the catagories Type, LabelDetection, and ValueDetection</p>
    # @!attribute type
    #   <p>The implied label of a detected element. Present alongside LabelDetection for explicit elements.</p>
    #   @return [Types::ExpenseType]
    # @!attribute label_detection
    #   <p>The explicitly stated label of a detected element.</p>
    #   @return [Types::ExpenseDetection]
    # @!attribute value_detection
    #   <p>The value of a detected element. Present in explicit and implicit elements.</p>
    #   @return [Types::ExpenseDetection]
    # @!attribute page_number
    #   <p>The page number the value was detected on.</p>
    #   @return [Integer]
    # @!attribute currency
    #   <p>Shows the kind of currency, both the code and confidence associated with any monatary value
    #            detected.</p>
    #   @return [Types::ExpenseCurrency]
    # @!attribute group_properties
    #   <p>Shows which group a response object belongs to, such as whether an address line
    #            belongs to the vendor's address or the recipent's address.</p>
    #   @return [Array<Types::ExpenseGroupProperty>]
    class ExpenseField < Struct.new(
      :type,
      :label_detection,
      :value_detection,
      :page_number,
      :currency,
      :group_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Shows the group that a certain key belongs to. This helps differentiate between
    #          names and addresses for different organizations, that can be hard to determine
    #          via JSON response.</p>
    # @!attribute types
    #   <p>Informs you on whether the expense group is a name or an address.</p>
    #   @return [Array<String>]
    # @!attribute id
    #   <p>Provides a group Id number, which will be the same for each in the group.</p>
    #   @return [String]
    class ExpenseGroupProperty < Struct.new(
      :types,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object used to store information about the Type detected by Amazon Textract.</p>
    # @!attribute text
    #   <p>The word or line of text detected by Amazon Textract.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence of accuracy, as a percentage.</p>
    #   @return [Float]
    class ExpenseType < Struct.new(
      :text,
      :confidence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information extracted by an analysis operation after using StartLendingAnalysis.</p>
    # @!attribute lending_document
    #   <p>Holds the structured data returned by AnalyzeDocument for lending documents.</p>
    #   @return [Types::LendingDocument]
    # @!attribute expense_document
    #   <p>The structure holding all the information returned by AnalyzeExpense</p>
    #   @return [Types::ExpenseDocument]
    # @!attribute identity_document
    #   <p>The structure that lists each document processed in an AnalyzeID operation.</p>
    #   @return [Types::IdentityDocument]
    class Extraction < Struct.new(
      :lending_document,
      :expense_document,
      :identity_document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FeatureType
      TABLES = 'TABLES'
      FORMS = 'FORMS'
      QUERIES = 'QUERIES'
      SIGNATURES = 'SIGNATURES'
      LAYOUT = 'LAYOUT'
    end

    # <p>Information about where the following items are located on a document page: detected
    #          page, text, key-value pairs, tables, table cells, and selection elements.</p>
    # @!attribute bounding_box
    #   <p>An axis-aligned coarse representation of the location of the recognized item on the
    #            document page.</p>
    #   @return [Types::BoundingBox]
    # @!attribute polygon
    #   <p>Within the bounding box, a fine-grained polygon around the recognized item.</p>
    #   @return [Array<Types::Point>]
    # @!attribute rotation_angle
    #   <p>Provides a numerical value corresponding to the rotation of the text.</p>
    #   @return [Float]
    class Geometry < Struct.new(
      :bounding_box,
      :polygon,
      :rotation_angle,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string containing a unique ID for the adapter.</p>
    #   @return [String]
    class GetAdapterRequest < Struct.new(
      :adapter_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string identifying the adapter that information has been retrieved for.</p>
    #   @return [String]
    # @!attribute adapter_name
    #   <p>The name of the requested adapter.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time the requested adapter was created at.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for the requested adapter.</p>
    #   @return [String]
    # @!attribute feature_types
    #   <p>List of the targeted feature types for the requested adapter.</p>
    #   @return [Array<String>]
    # @!attribute auto_update
    #   <p>Binary value indicating if the adapter is being automatically updated or not.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of tags (key-value pairs) associated with the adapter that has been retrieved.</p>
    #   @return [Hash<String, String>]
    class GetAdapterResponse < Struct.new(
      :adapter_id,
      :adapter_name,
      :creation_time,
      :description,
      :feature_types,
      :auto_update,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string specifying a unique ID for the adapter version you want to retrieve information for.</p>
    #   @return [String]
    # @!attribute adapter_version
    #   <p>A string specifying the adapter version you want to retrieve information for.</p>
    #   @return [String]
    class GetAdapterVersionRequest < Struct.new(
      :adapter_id,
      :adapter_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string containing a unique ID for the adapter version being retrieved.</p>
    #   @return [String]
    # @!attribute adapter_version
    #   <p>A string containing the adapter version that has been retrieved.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the adapter version was created.</p>
    #   @return [Time]
    # @!attribute feature_types
    #   <p>List of the targeted feature types for the requested adapter version.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the adapter version that has been requested.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message that describes the status of the requested adapter version.</p>
    #   @return [String]
    # @!attribute dataset_config
    #   <p>Specifies a dataset used to train a new adapter version. Takes a ManifestS3Objec as the
    #            value.</p>
    #   @return [Types::AdapterVersionDatasetConfig]
    # @!attribute kms_key_id
    #   <p>The identifier for your AWS Key Management Service key (AWS KMS key). Used to encrypt your documents.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>Sets whether or not your output will go to a user created bucket. Used to set the name
    #            of the bucket, and the prefix on the output file.</p>
    #            <p>
    #               <code>OutputConfig</code> is an optional parameter which lets you adjust where your
    #            output will be placed. By default, Amazon Textract will store the results internally and can
    #            only be accessed by the Get API operations. With <code>OutputConfig</code> enabled, you can
    #            set the name of the bucket the output will be sent to the file prefix of the results where
    #            you can download your results. Additionally, you can set the <code>KMSKeyID</code>
    #            parameter to a customer master key (CMK) to encrypt your output. Without this parameter set
    #            Amazon Textract will encrypt server-side using the AWS managed CMK for Amazon S3.</p>
    #            <p>Decryption of Customer Content is necessary for processing of the documents by Amazon Textract. If your account 
    #            is opted out under an AI services opt out policy then all unencrypted Customer Content is immediately and permanently deleted after 
    #            the Customer Content has been processed by the service. No copy of of the output is retained by Amazon Textract. For information about how to opt out, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html"> Managing AI services opt-out policy. </a>
    #            </p>
    #            <p>For more information on data privacy,
    #            see the <a href="https://aws.amazon.com/compliance/data-privacy-faq/">Data Privacy
    #               FAQ</a>.</p>
    #   @return [Types::OutputConfig]
    # @!attribute evaluation_metrics
    #   <p>The evaluation metrics (F1 score, Precision, and Recall) for the requested version, 
    #            grouped by baseline metrics and adapter version.</p>
    #   @return [Array<Types::AdapterVersionEvaluationMetric>]
    # @!attribute tags
    #   <p>A set of tags (key-value pairs) that are associated with the adapter version.</p>
    #   @return [Hash<String, String>]
    class GetAdapterVersionResponse < Struct.new(
      :adapter_id,
      :adapter_version,
      :creation_time,
      :feature_types,
      :status,
      :status_message,
      :dataset_config,
      :kms_key_id,
      :output_config,
      :evaluation_metrics,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>A unique identifier for the text-detection job. The <code>JobId</code> is returned from
    #               <code>StartDocumentAnalysis</code>. A <code>JobId</code> value is only valid for 7
    #            days.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value that you
    #            can specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results
    #            is returned. The default value is 1,000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve),
    #            Amazon Textract returns a pagination token in the response. You can use this pagination
    #            token to retrieve the next set of blocks.</p>
    #   @return [String]
    class GetDocumentAnalysisRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_metadata
    #   <p>Information about a document that Amazon Textract processed.
    #               <code>DocumentMetadata</code> is returned in every page of paginated responses from an
    #            Amazon Textract video operation.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute job_status
    #   <p>The current status of the text detection job.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Textract returns this token. You can use this token
    #            in the subsequent request to retrieve the next set of text detection results.</p>
    #   @return [String]
    # @!attribute blocks
    #   <p>The results of the text-analysis operation.</p>
    #   @return [Array<Types::Block>]
    # @!attribute warnings
    #   <p>A list of warnings that occurred during the document-analysis operation.</p>
    #   @return [Array<Types::Warning>]
    # @!attribute status_message
    #   <p>Returns if the detection job could not be completed. Contains explanation for what error
    #            occured.</p>
    #   @return [String]
    # @!attribute analyze_document_model_version
    #   <p></p>
    #   @return [String]
    class GetDocumentAnalysisResponse < Struct.new(
      :document_metadata,
      :job_status,
      :next_token,
      :blocks,
      :warnings,
      :status_message,
      :analyze_document_model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    #            <code>StartDocumentTextDetection</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can
    #            specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results is
    #            returned. The default value is 1,000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
    #            token in the response. You can use this pagination token to retrieve the next set of blocks.</p>
    #   @return [String]
    class GetDocumentTextDetectionRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_metadata
    #   <p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is
    #            returned in every page of paginated responses from an Amazon Textract video operation.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute job_status
    #   <p>The current status of the text detection job.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Textract returns this token. You can use this token in
    #            the subsequent request to retrieve the next set of text-detection results.</p>
    #   @return [String]
    # @!attribute blocks
    #   <p>The results of the text-detection operation.</p>
    #   @return [Array<Types::Block>]
    # @!attribute warnings
    #   <p>A list of warnings that occurred during the text-detection operation for the
    #            document.</p>
    #   @return [Array<Types::Warning>]
    # @!attribute status_message
    #   <p>Returns if the detection job could not be completed. Contains explanation for what error occured. </p>
    #   @return [String]
    # @!attribute detect_document_text_model_version
    #   <p></p>
    #   @return [String]
    class GetDocumentTextDetectionResponse < Struct.new(
      :document_metadata,
      :job_status,
      :next_token,
      :blocks,
      :warnings,
      :status_message,
      :detect_document_text_model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    #       <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can
    #      specify is 20. If you specify a value greater than 20, a maximum of 20 results is
    #      returned. The default value is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
    #      token in the response. You can use this pagination token to retrieve the next set of blocks.</p>
    #   @return [String]
    class GetExpenseAnalysisRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_metadata
    #   <p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is
    #      returned in every page of paginated responses from an Amazon Textract operation.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute job_status
    #   <p>The current status of the text detection job.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Textract returns this token. You can use this token in
    #      the subsequent request to retrieve the next set of text-detection results.</p>
    #   @return [String]
    # @!attribute expense_documents
    #   <p>The expenses detected by Amazon Textract.</p>
    #   @return [Array<Types::ExpenseDocument>]
    # @!attribute warnings
    #   <p>A list of warnings that occurred during the text-detection operation for the
    #      document.</p>
    #   @return [Array<Types::Warning>]
    # @!attribute status_message
    #   <p>Returns if the detection job could not be completed. Contains explanation for what error occured. </p>
    #   @return [String]
    # @!attribute analyze_expense_model_version
    #   <p>The current model version of AnalyzeExpense.</p>
    #   @return [String]
    class GetExpenseAnalysisResponse < Struct.new(
      :document_metadata,
      :job_status,
      :next_token,
      :expense_documents,
      :warnings,
      :status_message,
      :analyze_expense_model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>A unique identifier for the lending or text-detection job. The <code>JobId</code> is
    #               returned from <code>StartLendingAnalysis</code>. A <code>JobId</code> value is only
    #               valid for 7 days.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value that you
    #               can specify is 30. If you specify a value greater than 30, a maximum of 30 results is
    #               returned. The default value is 30.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous response was incomplete, Amazon Textract returns a pagination token in
    #               the response. You can use this pagination token to retrieve the next set of lending
    #               results.</p>
    #   @return [String]
    class GetLendingAnalysisRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_metadata
    #   <p>Information about the input document.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute job_status
    #   <p> The current status of the lending analysis job.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Textract returns this token. 
    #               You can use this token in the subsequent request to retrieve the next set of lending results.</p>
    #   @return [String]
    # @!attribute results
    #   <p> Holds the information returned by one of AmazonTextract's document analysis
    #               operations for the pinstripe.</p>
    #   @return [Array<Types::LendingResult>]
    # @!attribute warnings
    #   <p> A list of warnings that occurred during the lending analysis operation. </p>
    #   @return [Array<Types::Warning>]
    # @!attribute status_message
    #   <p>  Returns if the lending analysis job could not be completed. Contains explanation for
    #               what error occurred. </p>
    #   @return [String]
    # @!attribute analyze_lending_model_version
    #   <p> The current model version of the Analyze Lending API.</p>
    #   @return [String]
    class GetLendingAnalysisResponse < Struct.new(
      :document_metadata,
      :job_status,
      :next_token,
      :results,
      :warnings,
      :status_message,
      :analyze_lending_model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p> A unique identifier for the lending or text-detection job. The <code>JobId</code> is
    #      returned from StartLendingAnalysis. A <code>JobId</code> value is only valid for 7 days.</p>
    #   @return [String]
    class GetLendingAnalysisSummaryRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_metadata
    #   <p>Information about the input document.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute job_status
    #   <p> The current status of the lending analysis job. </p>
    #   @return [String]
    # @!attribute summary
    #   <p> Contains summary information for documents grouped by type.</p>
    #   @return [Types::LendingSummary]
    # @!attribute warnings
    #   <p>A list of warnings that occurred during the lending analysis operation.</p>
    #   @return [Array<Types::Warning>]
    # @!attribute status_message
    #   <p>Returns if the lending analysis could not be completed. Contains explanation for what error
    #      occurred.</p>
    #   @return [String]
    # @!attribute analyze_lending_model_version
    #   <p>The current model version of the Analyze Lending API.</p>
    #   @return [String]
    class GetLendingAnalysisSummaryResponse < Struct.new(
      :document_metadata,
      :job_status,
      :summary,
      :warnings,
      :status_message,
      :analyze_lending_model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Shows the results of the human in the loop evaluation. If there is no HumanLoopArn, the
    #          input did not trigger human review.</p>
    # @!attribute human_loop_arn
    #   <p>The Amazon Resource Name (ARN) of the HumanLoop created.</p>
    #   @return [String]
    # @!attribute human_loop_activation_reasons
    #   <p>Shows if and why human review was needed.</p>
    #   @return [Array<String>]
    # @!attribute human_loop_activation_conditions_evaluation_results
    #   <p>Shows the result of condition evaluations, including those conditions which activated a
    #            human review.</p>
    #   @return [String]
    class HumanLoopActivationOutput < Struct.new(
      :human_loop_arn,
      :human_loop_activation_reasons,
      :human_loop_activation_conditions_evaluation_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Sets up the human review workflow the document will be sent to if one of the conditions
    #          is met. You can also set certain attributes of the image before review. </p>
    # @!attribute human_loop_name
    #   <p>The name of the human workflow used for this image. This should be kept unique within a
    #            region.</p>
    #   @return [String]
    # @!attribute flow_definition_arn
    #   <p>The Amazon Resource Name (ARN) of the flow definition.</p>
    #   @return [String]
    # @!attribute data_attributes
    #   <p>Sets attributes of the input data.</p>
    #   @return [Types::HumanLoopDataAttributes]
    class HumanLoopConfig < Struct.new(
      :human_loop_name,
      :flow_definition_arn,
      :data_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Allows you to set attributes of the image. Currently, you can declare an image as free
    #          of personally identifiable information and adult content. </p>
    # @!attribute content_classifiers
    #   <p>Sets whether the input image is free of personally identifiable information or adult
    #            content.</p>
    #   @return [Array<String>]
    class HumanLoopDataAttributes < Struct.new(
      :content_classifiers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates you have exceeded the maximum number of active human in the loop workflows available</p>
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class HumanLoopQuotaExceededException < Struct.new(
      :resource_type,
      :quota_code,
      :service_code,
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A <code>ClientRequestToken</code> input parameter was reused with an operation, but at
    #          least one of the other input parameters is different from the previous call to the
    #          operation. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class IdempotentParameterMismatchException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure that lists each document processed in an AnalyzeID operation.</p>
    # @!attribute document_index
    #   <p>Denotes the placement of a document in the IdentityDocument list. The first document
    #            is marked 1, the second 2 and so on.</p>
    #   @return [Integer]
    # @!attribute identity_document_fields
    #   <p>The structure used to record information extracted from identity documents.
    #            Contains both normalized field and value of the extracted text.</p>
    #   @return [Array<Types::IdentityDocumentField>]
    # @!attribute blocks
    #   <p>Individual word recognition, as returned by document detection.</p>
    #   @return [Array<Types::Block>]
    class IdentityDocument < Struct.new(
      :document_index,
      :identity_document_fields,
      :blocks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Structure containing both the normalized type of the extracted information
    #          and the text associated with it. These are extracted as Type and Value respectively.</p>
    # @!attribute type
    #   <p>Used to contain the information detected by an AnalyzeID operation.</p>
    #   @return [Types::AnalyzeIDDetections]
    # @!attribute value_detection
    #   <p>Used to contain the information detected by an AnalyzeID operation.</p>
    #   @return [Types::AnalyzeIDDetections]
    class IdentityDocumentField < Struct.new(
      :type,
      :value_detection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon Textract experienced a service issue. Try your call again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class InternalServerError < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An invalid job identifier was passed to an asynchronous analysis operation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class InvalidJobIdException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Indicates you do not have decrypt permissions with the KMS key entered, or the KMS key
    #         was entered incorrectly. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class InvalidKMSKeyException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An input parameter violated a constraint. For example, in synchronous operations, 
    #        an <code>InvalidParameterException</code> exception occurs
    #       when neither of the <code>S3Object</code> or <code>Bytes</code> values are supplied in the <code>Document</code>
    #       request parameter.
    #        Validate your parameter before calling the API operation again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon Textract is unable to access the S3 object that's specified in the request.
    #          for more information, <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Configure Access to Amazon S3</a>
    #          For troubleshooting information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/troubleshooting.html">Troubleshooting Amazon S3</a>
    #          </p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class InvalidS3ObjectException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module JobStatus
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCEEDED = 'SUCCEEDED'
      FAILED = 'FAILED'
      PARTIAL_SUCCESS = 'PARTIAL_SUCCESS'
    end

    # <p>The results extracted for a lending document.</p>
    # @!attribute text
    #   <p>The text extracted for a detected value in a lending document.</p>
    #   @return [String]
    # @!attribute selection_status
    #   <p>The selection status of a selection element, such as an option button or check box.</p>
    #   @return [String]
    # @!attribute geometry
    #   <p>Information about where the following items are located on a document page: detected
    #            page, text, key-value pairs, tables, table cells, and selection elements.</p>
    #   @return [Types::Geometry]
    # @!attribute confidence
    #   <p>The confidence level for the text of a detected value in a lending document.</p>
    #   @return [Float]
    class LendingDetection < Struct.new(
      :text,
      :selection_status,
      :geometry,
      :confidence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Holds the structured data returned by AnalyzeDocument for lending documents.</p>
    # @!attribute lending_fields
    #   <p>An array of LendingField objects.</p>
    #   @return [Array<Types::LendingField>]
    # @!attribute signature_detections
    #   <p>A list of signatures detected in a lending document.</p>
    #   @return [Array<Types::SignatureDetection>]
    class LendingDocument < Struct.new(
      :lending_fields,
      :signature_detections,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Holds the normalized key-value pairs returned by AnalyzeDocument, including the document type, detected text, and geometry.</p>
    # @!attribute type
    #   <p>The type of the lending document.</p>
    #   @return [String]
    # @!attribute key_detection
    #   <p>The results extracted for a lending document.</p>
    #   @return [Types::LendingDetection]
    # @!attribute value_detections
    #   <p>An array of LendingDetection objects.</p>
    #   @return [Array<Types::LendingDetection>]
    class LendingField < Struct.new(
      :type,
      :key_detection,
      :value_detections,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the detections for each page analyzed through the Analyze Lending API.</p>
    # @!attribute page
    #   <p>The page number for a page, with regard to whole submission.</p>
    #   @return [Integer]
    # @!attribute page_classification
    #   <p>The classifier result for a given page.</p>
    #   @return [Types::PageClassification]
    # @!attribute extractions
    #   <p>An array of Extraction to hold structured data. e.g. normalized key value pairs instead of raw OCR detections .</p>
    #   @return [Array<Types::Extraction>]
    class LendingResult < Struct.new(
      :page,
      :page_classification,
      :extractions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information regarding DocumentGroups and UndetectedDocumentTypes.</p>
    # @!attribute document_groups
    #   <p>Contains an array of all DocumentGroup objects.</p>
    #   @return [Array<Types::DocumentGroup>]
    # @!attribute undetected_document_types
    #   <p>UndetectedDocumentTypes.</p>
    #   @return [Array<String>]
    class LendingSummary < Struct.new(
      :document_groups,
      :undetected_document_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An Amazon Textract service limit was exceeded. For example, if you start too many
    #          asynchronous jobs concurrently, calls to start operations
    #             (<code>StartDocumentTextDetection</code>, for example) raise a LimitExceededException
    #          exception (HTTP status code: 400) until the number of concurrently running jobs is below
    #          the Amazon Textract service limit. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that holds information about the different lines found in a document's tables.</p>
    # @!attribute line_item_expense_fields
    #   <p>ExpenseFields used to show information from detected lines on a table.</p>
    #   @return [Array<Types::ExpenseField>]
    class LineItemFields < Struct.new(
      :line_item_expense_fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A grouping of tables which contain LineItems, with each table identified by the table's <code>LineItemGroupIndex</code>.</p>
    # @!attribute line_item_group_index
    #   <p>The number used to identify a specific table in a document. The first table encountered will have a LineItemGroupIndex of 1, the second 2, etc.</p>
    #   @return [Integer]
    # @!attribute line_items
    #   <p>The breakdown of information on a particular line of a table. </p>
    #   @return [Array<Types::LineItemFields>]
    class LineItemGroup < Struct.new(
      :line_item_group_index,
      :line_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string containing a unique ID for the adapter to match for when listing adapter versions.</p>
    #   @return [String]
    # @!attribute after_creation_time
    #   <p>Specifies the lower bound for the ListAdapterVersions operation. 
    #            Ensures ListAdapterVersions returns only adapter versions created after the specified creation time.</p>
    #   @return [Time]
    # @!attribute before_creation_time
    #   <p>Specifies the upper bound for the ListAdapterVersions operation. 
    #            Ensures ListAdapterVersions returns only adapter versions created after the specified creation time.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of results to return when listing adapter versions.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return when listing adapter versions.</p>
    #   @return [String]
    class ListAdapterVersionsRequest < Struct.new(
      :adapter_id,
      :after_creation_time,
      :before_creation_time,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_versions
    #   <p>Adapter versions that match the filtering criteria specified when calling ListAdapters.</p>
    #   @return [Array<Types::AdapterVersionOverview>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return when listing adapter versions.</p>
    #   @return [String]
    class ListAdapterVersionsResponse < Struct.new(
      :adapter_versions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute after_creation_time
    #   <p>Specifies the lower bound for the ListAdapters operation. 
    #            Ensures ListAdapters returns only adapters created after the specified creation time.</p>
    #   @return [Time]
    # @!attribute before_creation_time
    #   <p>Specifies the upper bound for the ListAdapters operation. 
    #            Ensures ListAdapters returns only adapters created before the specified creation time.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of results to return when listing adapters.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return when listing adapters.</p>
    #   @return [String]
    class ListAdaptersRequest < Struct.new(
      :after_creation_time,
      :before_creation_time,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapters
    #   <p>A list of adapters that matches the filtering criteria specified when calling ListAdapters.</p>
    #   @return [Array<Types::AdapterOverview>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return when listing adapters.</p>
    #   @return [String]
    class ListAdaptersResponse < Struct.new(
      :adapters,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that specifies the resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A set of tags (key-value pairs) that are part of the requested resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information relating to dates in a document, including the type
    #          of value, and the value.</p>
    # @!attribute value
    #   <p>The value of the date, written as Year-Month-DayTHour:Minute:Second.</p>
    #   @return [String]
    # @!attribute value_type
    #   <p>The normalized type of the value detected. In this case, DATE.</p>
    #   @return [String]
    class NormalizedValue < Struct.new(
      :value,
      :value_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Simple Notification Service (Amazon SNS) topic to which Amazon Textract publishes the completion status of
    #          an asynchronous document operation. </p>
    # @!attribute sns_topic_arn
    #   <p>The Amazon SNS topic that Amazon Textract posts the completion status to.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that gives Amazon Textract publishing permissions to the Amazon SNS topic. </p>
    #   @return [String]
    class NotificationChannel < Struct.new(
      :sns_topic_arn,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Sets whether or not your output will go to a user created bucket. Used to set the name
    #          of the bucket, and the prefix on the output file.</p>
    #          <p>
    #             <code>OutputConfig</code> is an optional parameter which lets you adjust where your
    #          output will be placed. By default, Amazon Textract will store the results internally and can
    #          only be accessed by the Get API operations. With <code>OutputConfig</code> enabled, you can
    #          set the name of the bucket the output will be sent to the file prefix of the results where
    #          you can download your results. Additionally, you can set the <code>KMSKeyID</code>
    #          parameter to a customer master key (CMK) to encrypt your output. Without this parameter set
    #          Amazon Textract will encrypt server-side using the AWS managed CMK for Amazon S3.</p>
    #          <p>Decryption of Customer Content is necessary for processing of the documents by Amazon Textract. If your account 
    #          is opted out under an AI services opt out policy then all unencrypted Customer Content is immediately and permanently deleted after 
    #          the Customer Content has been processed by the service. No copy of of the output is retained by Amazon Textract. For information about how to opt out, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html"> Managing AI services opt-out policy. </a>
    #          </p>
    #          <p>For more information on data privacy,
    #          see the <a href="https://aws.amazon.com/compliance/data-privacy-faq/">Data Privacy
    #             FAQ</a>.</p>
    # @!attribute s3_bucket
    #   <p>The name of the bucket your output will go to.</p>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The prefix of the object key that the output will be saved to. When not enabled, the
    #            prefix will be “textract_output".</p>
    #   @return [String]
    class OutputConfig < Struct.new(
      :s3_bucket,
      :s3_prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The class assigned to a Page object detected in an input document. 
    #          Contains information regarding the predicted type/class of a document's page and the 
    #          page number that the Page object was detected on.</p>
    # @!attribute page_type
    #   <p>The class, or document type, assigned to a detected Page object. The class, or document type, 
    #            assigned to a detected Page object.</p>
    #   @return [Array<Types::Prediction>]
    # @!attribute page_number
    #   <p> The page number the value was detected on, relative to Amazon Textract's starting position.</p>
    #   @return [Array<Types::Prediction>]
    class PageClassification < Struct.new(
      :page_type,
      :page_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The X and Y coordinates of a point on a document page. The X and Y
    #          values that are returned are ratios of the overall document page size. For example, if the
    #          input document is 700 x 200 and the operation returns X=0.5 and Y=0.25, then the point is
    #          at the (350,50) pixel coordinate on the document page.</p>
    #          <p>An array of <code>Point</code> objects, <code>Polygon</code>, is returned
    #          by <a>DetectDocumentText</a>. <code>Polygon</code> represents a fine-grained
    #          polygon around detected text. For more information, see Geometry in the Amazon Textract
    #          Developer Guide. </p>
    # @!attribute x
    #   <p>The value of the X coordinate for a point on a <code>Polygon</code>.</p>
    #   @return [Float]
    # @!attribute y
    #   <p>The value of the Y coordinate for a point on a <code>Polygon</code>.</p>
    #   @return [Float]
    class Point < Struct.new(
      :x,
      :y,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:x] = 0 unless options.key?(:x)
        options[:y] = 0 unless options.key?(:y)
        super
      end
    end

    # <p>Contains information regarding predicted values returned by Amazon Textract operations, including the 
    #          predicted value and the confidence in the predicted value.</p>
    # @!attribute value
    #   <p>The predicted value of a detected object.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>Amazon Textract's confidence in its predicted value.</p>
    #   @return [Float]
    class Prediction < Struct.new(
      :value,
      :confidence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The number of requests exceeded your throughput limit. If you want to increase this limit, 
    #          contact Amazon Textract.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ProvisionedThroughputExceededException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute queries
    #   <p></p>
    #   @return [Array<Types::Query>]
    class QueriesConfig < Struct.new(
      :queries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Each query contains the question you want to ask in the Text and the alias you want to associate.</p>
    # @!attribute text
    #   <p>Question that Amazon Textract will apply to the document. An example would be "What is the customer's SSN?"</p>
    #   @return [String]
    # @!attribute alias
    #   <p>Alias attached to the query, for ease of location.</p>
    #   @return [String]
    # @!attribute pages
    #   <p>Pages is a parameter that the user inputs to specify which pages to apply a query to. The following is a 
    #            list of rules for using this parameter.</p>
    #            <ul>
    #               <li>
    #                  <p>If a page is not specified, it is set to <code>["1"]</code> by default.</p>
    #               </li>
    #               <li>
    #                  <p>The following characters are allowed in the parameter's string: 
    #                  <code>0 1 2 3 4 5 6 7 8 9 - *</code>. No whitespace is allowed.</p>
    #               </li>
    #               <li>
    #                  <p>When using * to indicate all pages, it must be the only element in the list.</p>
    #               </li>
    #               <li>
    #                  <p>You can use page intervals, such as <code>[“1-3”, “1-1”, “4-*”]</code>. Where <code>*</code> indicates last page of 
    #                  document.</p>
    #               </li>
    #               <li>
    #                  <p>Specified pages must be greater than 0 and less than or equal to the number of pages in the document.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class Query < Struct.new(
      :text,
      :alias,
      :pages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about how blocks are related to each other. A <code>Block</code> object
    #          contains 0 or more <code>Relation</code> objects in a list, <code>Relationships</code>. For
    #          more information, see <a>Block</a>.</p>
    #          <p>The <code>Type</code> element provides the type of the relationship for all blocks in
    #          the <code>IDs</code> array. </p>
    # @!attribute type
    #   <p>The type of relationship between the blocks in the IDs array and the current block. The
    #            following list describes the relationship types that can be returned. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>VALUE</i> - A list that contains the ID of the VALUE block that's associated with the
    #                  KEY of a key-value pair.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>CHILD</i> - A list of IDs that identify blocks found within the
    #                  current block object. For example, WORD blocks have a CHILD relationship to the LINE
    #                  block type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>MERGED_CELL</i> - A list of IDs that identify each of the
    #                  MERGED_CELL block types in a table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>ANSWER</i> - A list that contains the ID of the QUERY_RESULT
    #                  block that’s associated with the corresponding QUERY block. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TABLE</i> - A list of IDs that identify associated TABLE block
    #                  types. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TABLE_TITLE</i> - A list that contains the ID for the TABLE_TITLE
    #                  block type in a table. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TABLE_FOOTER</i> - A list of IDs that identify the TABLE_FOOTER
    #                  block types in a table. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute ids
    #   <p>An
    #            array of IDs for related blocks. You can get the type of the relationship from the
    #               <code>Type</code> element.</p>
    #   @return [Array<String>]
    class Relationship < Struct.new(
      :type,
      :ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RelationshipType
      VALUE = 'VALUE'
      CHILD = 'CHILD'
      COMPLEX_FEATURES = 'COMPLEX_FEATURES'
      MERGED_CELL = 'MERGED_CELL'
      TITLE = 'TITLE'
      ANSWER = 'ANSWER'
      TABLE = 'TABLE'
      TABLE_TITLE = 'TABLE_TITLE'
      TABLE_FOOTER = 'TABLE_FOOTER'
    end

    # <p> Returned when an operation tried to access a nonexistent resource. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The S3 bucket name and file name that identifies the document.</p>
    #          <p>The AWS Region for the S3 bucket that contains the document must match the Region that
    #          you use for Amazon Textract operations.</p>
    #          <p>For Amazon Textract to process a file in an S3 bucket, the user must have
    #          permission to access the S3 bucket and file.
    #          
    #       </p>
    # @!attribute bucket
    #   <p>The name of the S3 bucket. Note that the # character is not valid in the file
    #            name.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The file name of the input document. Image files may be in PDF, TIFF, JPEG, or PNG format.</p>
    #   @return [String]
    # @!attribute version
    #   <p>If the bucket has versioning enabled, you can specify the object version. </p>
    #   @return [String]
    class S3Object < Struct.new(
      :bucket,
      :name,
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SelectionStatus
      SELECTED = 'SELECTED'
      NOT_SELECTED = 'NOT_SELECTED'
    end

    # <p>Returned when a request cannot be completed as it would exceed a maximum service quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information regarding a detected signature on a page.</p>
    # @!attribute confidence
    #   <p>The confidence, from 0 to 100, in the predicted values for a detected signature.</p>
    #   @return [Float]
    # @!attribute geometry
    #   <p>Information about where the following items are located on a document page: detected
    #            page, text, key-value pairs, tables, table cells, and selection elements.</p>
    #   @return [Types::Geometry]
    class SignatureDetection < Struct.new(
      :confidence,
      :geometry,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the pages of a document, defined by logical boundary.</p>
    # @!attribute index
    #   <p>The index for a given document in a DocumentGroup of a specific Type.</p>
    #   @return [Integer]
    # @!attribute pages
    #   <p>An array of page numbers for a for a given document, ordered by logical boundary.</p>
    #   @return [Array<Integer>]
    class SplitDocument < Struct.new(
      :index,
      :pages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_location
    #   <p>The location of the document to be processed.</p>
    #   @return [Types::DocumentLocation]
    # @!attribute feature_types
    #   <p>A list of the types of analysis to perform. Add TABLES to the list to return information
    #            about the tables that are detected in the input document. Add FORMS to return detected
    #            form data. To perform both types of analysis, add TABLES
    #            and FORMS to <code>FeatureTypes</code>. All lines and words detected in the document are
    #            included in the response (including text that isn't related to the value of
    #               <code>FeatureTypes</code>). </p>
    #   @return [Array<String>]
    # @!attribute client_request_token
    #   <p>The idempotent token that you use to identify the start request. If you use the same
    #            token with multiple <code>StartDocumentAnalysis</code> requests, the same
    #               <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same
    #            job from being accidentally started more than once. For more information, see
    #            <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>.</p>
    #   @return [String]
    # @!attribute job_tag
    #   <p>An identifier that you specify that's included in the completion notification published
    #            to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #            document that the completion notification corresponds to (such as a tax form or a
    #            receipt).</p>
    #   @return [String]
    # @!attribute notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #            operation to. </p>
    #   @return [Types::NotificationChannel]
    # @!attribute output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will save
    #            the results internally to be accessed by the GetDocumentAnalysis operation.</p>
    #   @return [Types::OutputConfig]
    # @!attribute kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be 
    #            in either Key ID or Key Alias format. When a KMS key is provided, the 
    #            KMS key will be used for server-side encryption of the objects in the 
    #            customer bucket. When this parameter is not enabled, the result will 
    #            be encrypted server side,using SSE-S3.</p>
    #   @return [String]
    # @!attribute queries_config
    #   <p></p>
    #   @return [Types::QueriesConfig]
    # @!attribute adapters_config
    #   <p>Specifies the adapter to be used when analyzing a document.</p>
    #   @return [Types::AdaptersConfig]
    class StartDocumentAnalysisRequest < Struct.new(
      :document_location,
      :feature_types,
      :client_request_token,
      :job_tag,
      :notification_channel,
      :output_config,
      :kms_key_id,
      :queries_config,
      :adapters_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier for the document text detection job. Use <code>JobId</code> to identify
    #            the job in a subsequent call to <code>GetDocumentAnalysis</code>. A <code>JobId</code> value 
    #            is only valid for 7 days.</p>
    #   @return [String]
    class StartDocumentAnalysisResponse < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_location
    #   <p>The location of the document to be processed.</p>
    #   @return [Types::DocumentLocation]
    # @!attribute client_request_token
    #   <p>The idempotent token that's used to identify the start request. If you use the same
    #            token with multiple <code>StartDocumentTextDetection</code> requests, the same
    #               <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same
    #            job from being accidentally started more than once. For more information, see
    #            <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>.</p>
    #   @return [String]
    # @!attribute job_tag
    #   <p>An identifier that you specify that's included in the completion notification published
    #            to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #            document that the completion notification corresponds to (such as a tax form or a
    #            receipt).</p>
    #   @return [String]
    # @!attribute notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #            operation to. </p>
    #   @return [Types::NotificationChannel]
    # @!attribute output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default Amazon Textract will
    #            save the results internally to be accessed with the GetDocumentTextDetection operation.</p>
    #   @return [Types::OutputConfig]
    # @!attribute kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be 
    #            in either Key ID or Key Alias format. When a KMS key is provided, the 
    #            KMS key will be used for server-side encryption of the objects in the 
    #            customer bucket. When this parameter is not enabled, the result will 
    #            be encrypted server side,using SSE-S3.</p>
    #   @return [String]
    class StartDocumentTextDetectionRequest < Struct.new(
      :document_location,
      :client_request_token,
      :job_tag,
      :notification_channel,
      :output_config,
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the text detection job for the document. Use <code>JobId</code> to
    #            identify the job in a subsequent call to <code>GetDocumentTextDetection</code>.
    #            A <code>JobId</code> value is only valid for 7 days.</p>
    #   @return [String]
    class StartDocumentTextDetectionResponse < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_location
    #   <p>The location of the document to be processed.</p>
    #   @return [Types::DocumentLocation]
    # @!attribute client_request_token
    #   <p>The idempotent token that's used to identify the start request. If you use the same token with multiple <code>StartDocumentTextDetection</code> requests, the same <code>JobId</code> is returned. 
    #      Use <code>ClientRequestToken</code> to prevent the same job from being accidentally started more than once. 
    #      For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>
    #            </p>
    #   @return [String]
    # @!attribute job_tag
    #   <p>An identifier you specify that's included in the completion notification published
    #      to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #      document that the completion notification corresponds to (such as a tax form or a
    #      receipt).</p>
    #   @return [String]
    # @!attribute notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #      operation to. </p>
    #   @return [Types::NotificationChannel]
    # @!attribute output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will
    #      save the results internally to be accessed by the <code>GetExpenseAnalysis</code>
    #      operation.</p>
    #   @return [Types::OutputConfig]
    # @!attribute kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be 
    #      in either Key ID or Key Alias format. When a KMS key is provided, the 
    #      KMS key will be used for server-side encryption of the objects in the 
    #      customer bucket. When this parameter is not enabled, the result will 
    #      be encrypted server side,using SSE-S3.</p>
    #   @return [String]
    class StartExpenseAnalysisRequest < Struct.new(
      :document_location,
      :client_request_token,
      :job_tag,
      :notification_channel,
      :output_config,
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    #       <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    #   @return [String]
    class StartExpenseAnalysisResponse < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_location
    #   <p>The Amazon S3 bucket that contains the document to be processed. It's used by asynchronous
    #            operations.</p>
    #            <p>The input document can be an image file in JPEG or PNG format. It can also be a file in
    #            PDF format.</p>
    #   @return [Types::DocumentLocation]
    # @!attribute client_request_token
    #   <p>The idempotent token that you use to identify the start request. If you use the same token
    #      with multiple <code>StartLendingAnalysis</code> requests, the same <code>JobId</code> is
    #      returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidentally
    #      started more than once. For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/api-sync.html">Calling Amazon Textract Asynchronous Operations</a>.</p>
    #   @return [String]
    # @!attribute job_tag
    #   <p>An identifier that you specify to be included in the completion notification published to
    #      the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #      document that the completion notification corresponds to (such as a tax form or a
    #      receipt).</p>
    #   @return [String]
    # @!attribute notification_channel
    #   <p>The Amazon Simple Notification Service (Amazon SNS) topic to which Amazon Textract publishes the completion status of
    #            an asynchronous document operation. </p>
    #   @return [Types::NotificationChannel]
    # @!attribute output_config
    #   <p>Sets whether or not your output will go to a user created bucket. Used to set the name
    #            of the bucket, and the prefix on the output file.</p>
    #            <p>
    #               <code>OutputConfig</code> is an optional parameter which lets you adjust where your
    #            output will be placed. By default, Amazon Textract will store the results internally and can
    #            only be accessed by the Get API operations. With <code>OutputConfig</code> enabled, you can
    #            set the name of the bucket the output will be sent to the file prefix of the results where
    #            you can download your results. Additionally, you can set the <code>KMSKeyID</code>
    #            parameter to a customer master key (CMK) to encrypt your output. Without this parameter set
    #            Amazon Textract will encrypt server-side using the AWS managed CMK for Amazon S3.</p>
    #            <p>Decryption of Customer Content is necessary for processing of the documents by Amazon Textract. If your account 
    #            is opted out under an AI services opt out policy then all unencrypted Customer Content is immediately and permanently deleted after 
    #            the Customer Content has been processed by the service. No copy of of the output is retained by Amazon Textract. For information about how to opt out, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html"> Managing AI services opt-out policy. </a>
    #            </p>
    #            <p>For more information on data privacy,
    #            see the <a href="https://aws.amazon.com/compliance/data-privacy-faq/">Data Privacy
    #               FAQ</a>.</p>
    #   @return [Types::OutputConfig]
    # @!attribute kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be in either Key ID or Key
    #      Alias format. When a KMS key is provided, the KMS key will be used for server-side encryption of
    #      the objects in the customer bucket. When this parameter is not enabled, the result will be
    #      encrypted server side, using SSE-S3. </p>
    #   @return [String]
    class StartLendingAnalysisRequest < Struct.new(
      :document_location,
      :client_request_token,
      :job_tag,
      :notification_channel,
      :output_config,
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>A unique identifier for the lending or text-detection job. The <code>JobId</code> is
    #      returned from <code>StartLendingAnalysis</code>. A <code>JobId</code> value is only valid for 7
    #      days.</p>
    #   @return [String]
    class StartLendingAnalysisResponse < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that specifies the resource to be tagged.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of tags (key-value pairs) that you want to assign to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TextType
      HANDWRITING = 'HANDWRITING'
      PRINTED = 'PRINTED'
    end

    # <p>Amazon Textract is temporarily unable to process the request. Try your call again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing information about an undetected signature on a page where it was expected but not found.</p>
    # @!attribute page
    #   <p>The page where a signature was expected but not found.</p>
    #   @return [Integer]
    class UndetectedSignature < Struct.new(
      :page,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The format of the input document isn't supported. Documents for operations can be in
    #          PNG, JPEG, PDF, or TIFF format.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class UnsupportedDocumentException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that specifies the resource to be untagged.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Specifies the tags to be removed from the resource specified by the ResourceARN.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string containing a unique ID for the adapter that will be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description to be applied to the adapter.</p>
    #   @return [String]
    # @!attribute adapter_name
    #   <p>The new name to be applied to the adapter.</p>
    #   @return [String]
    # @!attribute auto_update
    #   <p>The new auto-update status to be applied to the adapter.</p>
    #   @return [String]
    class UpdateAdapterRequest < Struct.new(
      :adapter_id,
      :description,
      :adapter_name,
      :auto_update,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute adapter_id
    #   <p>A string containing a unique ID for the adapter that has been updated.</p>
    #   @return [String]
    # @!attribute adapter_name
    #   <p>A string containing the name of the adapter that has been updated.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>An object specifying the creation time of the the adapter that has been updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A string containing the description of the adapter that has been updated.</p>
    #   @return [String]
    # @!attribute feature_types
    #   <p>List of the targeted feature types for the updated adapter.</p>
    #   @return [Array<String>]
    # @!attribute auto_update
    #   <p>The auto-update status of the adapter that has been updated.</p>
    #   @return [String]
    class UpdateAdapterResponse < Struct.new(
      :adapter_id,
      :adapter_name,
      :creation_time,
      :description,
      :feature_types,
      :auto_update,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>  Indicates that a request was not valid. Check request for proper formatting. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ValueType
      DATE = 'DATE'
    end

    # <p>A warning about an issue that occurred during asynchronous text analysis (<a>StartDocumentAnalysis</a>) or asynchronous document text detection (<a>StartDocumentTextDetection</a>). </p>
    # @!attribute error_code
    #   <p>The error code for the warning.</p>
    #   @return [String]
    # @!attribute pages
    #   <p>A list of the pages that the warning applies to.</p>
    #   @return [Array<Integer>]
    class Warning < Struct.new(
      :error_code,
      :pages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
