# frozen_string_literal: true

# This is generated code!

module Aws::Uxc
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this operation. Verify that your IAM policy includes the required <code>uxc:</code> permissions for the operation that you are calling. For more information on IAM permissions, see <a href="https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/security-iam-awsmanpol.html">Amazon Web Services managed policies for Amazon Web Services Management Console</a>.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetAccountCustomizationsInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_color
    #   <p>The account color preference. A value of <code>none</code> indicates that you have not set a color.</p>
    #   @return [String]
    # @!attribute visible_services
    #   <p>The list of Amazon Web Services service identifiers that are visible to the account in the Amazon Web Services Management Console. A value of <code>null</code> indicates that you have not configured this feature and all services are visible. For valid service identifiers, call <a href="https://docs.aws.amazon.com/awsconsolehelpdocs/latest/APIReference/API_ListServices.html">ListServices</a>.</p>
    #   @return [Array<String>]
    # @!attribute visible_regions
    #   <p>The list of Amazon Web Services Region codes that are visible to the account in the Amazon Web Services Management Console. A value of <code>null</code> indicates that you have not configured this feature and all Regions are visible. For a list of valid Region codes, see <a href="https://docs.aws.amazon.com/global-infrastructure/latest/regions/aws-regions.html">Amazon Web Services Regions</a>.</p>
    #   @return [Array<String>]
    class GetAccountCustomizationsOutput < Struct.new(
      nil,
      :account_color,
      :visible_services,
      :visible_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service encountered an internal error. Try your request again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for retrieving the next page of results. Use the <code>nextToken</code> value from a previous response.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListServicesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for retrieving the next page of results. This value is <code>null</code> when no more results are available.</p>
    #   @return [String]
    # @!attribute services
    #   <p>The list of available Amazon Web Services service identifiers.</p>
    #   @return [Array<String>]
    class ListServicesOutput < Struct.new(
      nil,
      :next_token,
      :services,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because of request throttling. Reduce the frequency of your requests.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_color
    #   <p>The account color preference to set. Set to <code>none</code> to reset to the default (no color).</p>
    #   @return [String]
    # @!attribute visible_services
    #   <p>The list of Amazon Web Services service identifiers to make visible in the Amazon Web Services Management Console. Set to <code>null</code> to reset to the default, which makes all services visible. For valid service identifiers, call <a href="https://docs.aws.amazon.com/awsconsolehelpdocs/latest/APIReference/API_ListServices.html">ListServices</a>.</p>
    #   @return [Array<String>]
    # @!attribute visible_regions
    #   <p>The list of Amazon Web Services Region codes to make visible in the Amazon Web Services Management Console. Set to <code>null</code> to reset to the default, which makes all Regions visible. For a list of valid Region codes, see <a href="https://docs.aws.amazon.com/global-infrastructure/latest/regions/aws-regions.html">Amazon Web Services Regions</a>.</p>
    #   @return [Array<String>]
    class UpdateAccountCustomizationsInput < Struct.new(
      nil,
      :account_color,
      :visible_services,
      :visible_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_color
    #   <p>The current account color preference after the update.</p>
    #   @return [String]
    # @!attribute visible_services
    #   <p>The current list of visible service identifiers after the update.</p>
    #   @return [Array<String>]
    # @!attribute visible_regions
    #   <p>The current list of visible Region codes after the update.</p>
    #   @return [Array<String>]
    class UpdateAccountCustomizationsOutput < Struct.new(
      nil,
      :account_color,
      :visible_services,
      :visible_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute field_list
    #   <p>The list of fields that are invalid.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a validation exception for a specific field.</p>
    # @!attribute path
    #   <p>The field name with the validation exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing the validation exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :path,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
