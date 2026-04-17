# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Uxc
  module Types

    # You don't have sufficient access to perform this operation. Verify
    # that your IAM policy includes the required `uxc:` permissions for the
    # operation that you are calling. For more information on IAM
    # permissions, see [Amazon Web Services managed policies for Amazon Web
    # Services Management Console][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/security-iam-awsmanpol.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/uxc-2024-07-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/uxc-2024-07-01/GetAccountCustomizationsInput AWS API Documentation
    #
    class GetAccountCustomizationsInput < Aws::EmptyStructure; end

    # @!attribute [rw] account_color
    #   The account color preference. A value of `none` indicates that you
    #   have not set a color.
    #   @return [String]
    #
    # @!attribute [rw] visible_services
    #   The list of Amazon Web Services service identifiers that are visible
    #   to the account in the Amazon Web Services Management Console. A
    #   value of `null` indicates that you have not configured this feature
    #   and all services are visible. For valid service identifiers, call
    #   [ListServices][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsconsolehelpdocs/latest/APIReference/API_ListServices.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] visible_regions
    #   The list of Amazon Web Services Region codes that are visible to the
    #   account in the Amazon Web Services Management Console. A value of
    #   `null` indicates that you have not configured this feature and all
    #   Regions are visible. For a list of valid Region codes, see [Amazon
    #   Web Services Regions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-infrastructure/latest/regions/aws-regions.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/uxc-2024-07-01/GetAccountCustomizationsOutput AWS API Documentation
    #
    class GetAccountCustomizationsOutput < Struct.new(
      :account_color,
      :visible_services,
      :visible_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an internal error. Try your request again
    # later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/uxc-2024-07-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results. Use the
    #   `nextToken` value from a previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/uxc-2024-07-01/ListServicesInput AWS API Documentation
    #
    class ListServicesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results. This value is
    #   `null` when no more results are available.
    #   @return [String]
    #
    # @!attribute [rw] services
    #   The list of available Amazon Web Services service identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/uxc-2024-07-01/ListServicesOutput AWS API Documentation
    #
    class ListServicesOutput < Struct.new(
      :next_token,
      :services)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because of request throttling. Reduce the
    # frequency of your requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/uxc-2024-07-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_color
    #   The account color preference to set. Set to `none` to reset to the
    #   default (no color).
    #   @return [String]
    #
    # @!attribute [rw] visible_services
    #   The list of Amazon Web Services service identifiers to make visible
    #   in the Amazon Web Services Management Console. Set to `null` to
    #   reset to the default, which makes all services visible. For valid
    #   service identifiers, call [ListServices][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsconsolehelpdocs/latest/APIReference/API_ListServices.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] visible_regions
    #   The list of Amazon Web Services Region codes to make visible in the
    #   Amazon Web Services Management Console. Set to `null` to reset to
    #   the default, which makes all Regions visible. For a list of valid
    #   Region codes, see [Amazon Web Services Regions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-infrastructure/latest/regions/aws-regions.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/uxc-2024-07-01/UpdateAccountCustomizationsInput AWS API Documentation
    #
    class UpdateAccountCustomizationsInput < Struct.new(
      :account_color,
      :visible_services,
      :visible_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_color
    #   The current account color preference after the update.
    #   @return [String]
    #
    # @!attribute [rw] visible_services
    #   The current list of visible service identifiers after the update.
    #   @return [Array<String>]
    #
    # @!attribute [rw] visible_regions
    #   The current list of visible Region codes after the update.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/uxc-2024-07-01/UpdateAccountCustomizationsOutput AWS API Documentation
    #
    class UpdateAccountCustomizationsOutput < Struct.new(
      :account_color,
      :visible_services,
      :visible_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The list of fields that are invalid.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/uxc-2024-07-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a validation exception for a specific field.
    #
    # @!attribute [rw] path
    #   The field name with the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/uxc-2024-07-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :path,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

