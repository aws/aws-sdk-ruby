# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Outposts
  module Types

    # You do not have permission to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOutpostInput
    #   data as a hash:
    #
    #       {
    #         name: "OutpostName",
    #         description: "OutpostDescription",
    #         site_id: "SiteId", # required
    #         availability_zone: "AvailabilityZone",
    #         availability_zone_id: "AvailabilityZoneId",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The Outpost description.
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone.
    #
    #   You must specify `AvailabilityZone` or `AvailabilityZoneId`.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The ID of the Availability Zone.
    #
    #   You must specify `AvailabilityZone` or `AvailabilityZoneId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateOutpostInput AWS API Documentation
    #
    class CreateOutpostInput < Struct.new(
      :name,
      :description,
      :site_id,
      :availability_zone,
      :availability_zone_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost
    #   Information about an Outpost.
    #   @return [Types::Outpost]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateOutpostOutput AWS API Documentation
    #
    class CreateOutpostOutput < Struct.new(
      :outpost)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteOutpostInput
    #   data as a hash:
    #
    #       {
    #         outpost_id: "OutpostId", # required
    #       }
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteOutpostInput AWS API Documentation
    #
    class DeleteOutpostInput < Struct.new(
      :outpost_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteOutpostOutput AWS API Documentation
    #
    class DeleteOutpostOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSiteInput
    #   data as a hash:
    #
    #       {
    #         site_id: "SiteId", # required
    #       }
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteSiteInput AWS API Documentation
    #
    class DeleteSiteInput < Struct.new(
      :site_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteSiteOutput AWS API Documentation
    #
    class DeleteSiteOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetOutpostInput
    #   data as a hash:
    #
    #       {
    #         outpost_id: "OutpostId", # required
    #       }
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostInput AWS API Documentation
    #
    class GetOutpostInput < Struct.new(
      :outpost_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOutpostInstanceTypesInput
    #   data as a hash:
    #
    #       {
    #         outpost_id: "OutpostId", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostInstanceTypesInput AWS API Documentation
    #
    class GetOutpostInstanceTypesInput < Struct.new(
      :outpost_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_types
    #   Information about the instance types.
    #   @return [Array<Types::InstanceTypeItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] outpost_arn
    #   The Amazon Resource Name (ARN) of the Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostInstanceTypesOutput AWS API Documentation
    #
    class GetOutpostInstanceTypesOutput < Struct.new(
      :instance_types,
      :next_token,
      :outpost_id,
      :outpost_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost
    #   Information about an Outpost.
    #   @return [Types::Outpost]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostOutput AWS API Documentation
    #
    class GetOutpostOutput < Struct.new(
      :outpost)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an instance type.
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/InstanceTypeItem AWS API Documentation
    #
    class InstanceTypeItem < Struct.new(
      :instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error has occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOutpostsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListOutpostsInput AWS API Documentation
    #
    class ListOutpostsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outposts
    #   Information about the Outposts.
    #   @return [Array<Types::Outpost>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListOutpostsOutput AWS API Documentation
    #
    class ListOutpostsOutput < Struct.new(
      :outposts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSitesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum page size.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListSitesInput AWS API Documentation
    #
    class ListSitesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sites
    #   Information about the sites.
    #   @return [Array<Types::Site>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListSitesOutput AWS API Documentation
    #
    class ListSitesOutput < Struct.new(
      :sites,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Outpost.
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the Outpost owner.
    #   @return [String]
    #
    # @!attribute [rw] outpost_arn
    #   The Amazon Resource Name (ARN) of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The Outpost description.
    #   @return [String]
    #
    # @!attribute [rw] life_cycle_status
    #   The life cycle status.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone.
    #
    #   You must specify `AvailabilityZone` or `AvailabilityZoneId`.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The ID of the Availability Zone.
    #
    #   You must specify `AvailabilityZone` or `AvailabilityZoneId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/Outpost AWS API Documentation
    #
    class Outpost < Struct.new(
      :outpost_id,
      :owner_id,
      :outpost_arn,
      :site_id,
      :name,
      :description,
      :life_cycle_status,
      :availability_zone,
      :availability_zone_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a site.
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The ID of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the site.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/Site AWS API Documentation
    #
    class Site < Struct.new(
      :site_id,
      :account_id,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
