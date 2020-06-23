# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MigrationHubConfig
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateHomeRegionControlRequest
    #   data as a hash:
    #
    #       {
    #         home_region: "HomeRegion", # required
    #         target: { # required
    #           type: "ACCOUNT", # required, accepts ACCOUNT
    #           id: "TargetId",
    #         },
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] home_region
    #   The name of the home region of the calling account.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The account for which this command sets up a home region control.
    #   The `Target` is always of type `ACCOUNT`.
    #   @return [Types::Target]
    #
    # @!attribute [rw] dry_run
    #   Optional Boolean flag to indicate whether any effect should take
    #   place. It tests whether the caller has permission to make the call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/CreateHomeRegionControlRequest AWS API Documentation
    #
    class CreateHomeRegionControlRequest < Struct.new(
      :home_region,
      :target,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] home_region_control
    #   This object is the `HomeRegionControl` object that's returned by a
    #   successful call to `CreateHomeRegionControl`.
    #   @return [Types::HomeRegionControl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/CreateHomeRegionControlResult AWS API Documentation
    #
    class CreateHomeRegionControlResult < Struct.new(
      :home_region_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHomeRegionControlsRequest
    #   data as a hash:
    #
    #       {
    #         control_id: "ControlId",
    #         home_region: "HomeRegion",
    #         target: {
    #           type: "ACCOUNT", # required, accepts ACCOUNT
    #           id: "TargetId",
    #         },
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] control_id
    #   The `ControlID` is a unique identifier string of your
    #   `HomeRegionControl` object.
    #   @return [String]
    #
    # @!attribute [rw] home_region
    #   The name of the home region you'd like to view.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target parameter specifies the identifier to which the home
    #   region is applied, which is always of type `ACCOUNT`. It applies the
    #   home region to the current `ACCOUNT`.
    #   @return [Types::Target]
    #
    # @!attribute [rw] max_results
    #   The maximum number of filtering results to display per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If a `NextToken` was returned by a previous call, more results are
    #   available. To retrieve the next page of results, make the call again
    #   using the returned token in `NextToken`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/DescribeHomeRegionControlsRequest AWS API Documentation
    #
    class DescribeHomeRegionControlsRequest < Struct.new(
      :control_id,
      :home_region,
      :target,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] home_region_controls
    #   An array that contains your `HomeRegionControl` objects.
    #   @return [Array<Types::HomeRegionControl>]
    #
    # @!attribute [rw] next_token
    #   If a `NextToken` was returned by a previous call, more results are
    #   available. To retrieve the next page of results, make the call again
    #   using the returned token in `NextToken`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/DescribeHomeRegionControlsResult AWS API Documentation
    #
    class DescribeHomeRegionControlsResult < Struct.new(
      :home_region_controls,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised to indicate that authorization of an action was
    # successful, when the `DryRun` flag is set to true.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/DryRunOperation AWS API Documentation
    #
    class DryRunOperation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/GetHomeRegionRequest AWS API Documentation
    #
    class GetHomeRegionRequest < Aws::EmptyStructure; end

    # @!attribute [rw] home_region
    #   The name of the home region of the calling account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/GetHomeRegionResult AWS API Documentation
    #
    class GetHomeRegionResult < Struct.new(
      :home_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # A home region control is an object that specifies the home region for
    # an account, with some additional information. It contains a target
    # (always of type `ACCOUNT`), an ID, and a time at which the home region
    # was set.
    #
    # @!attribute [rw] control_id
    #   A unique identifier that's generated for each home region control.
    #   It's always a string that begins with "hrc-" followed by 12
    #   lowercase letters and numbers.
    #   @return [String]
    #
    # @!attribute [rw] home_region
    #   The AWS Region that's been set as home region. For example,
    #   "us-west-2" or "eu-central-1" are valid home regions.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target parameter specifies the identifier to which the home
    #   region is applied, which is always an `ACCOUNT`. It applies the home
    #   region to the current `ACCOUNT`.
    #   @return [Types::Target]
    #
    # @!attribute [rw] requested_time
    #   A timestamp representing the time when the customer called
    #   `CreateHomeregionControl` and set the home region for the account.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/HomeRegionControl AWS API Documentation
    #
    class HomeRegionControl < Struct.new(
      :control_id,
      :home_region,
      :target,
      :requested_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised when an internal, configuration, or dependency error
    # is encountered.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/InternalServerError AWS API Documentation
    #
    class InternalServerError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised when the provided input violates a policy constraint
    # or is entered in the wrong format or data type.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised when a request fails due to temporary unavailability
    # of the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target parameter specifies the identifier to which the home region
    # is applied, which is always an `ACCOUNT`. It applies the home region
    # to the current `ACCOUNT`.
    #
    # @note When making an API call, you may pass Target
    #   data as a hash:
    #
    #       {
    #         type: "ACCOUNT", # required, accepts ACCOUNT
    #         id: "TargetId",
    #       }
    #
    # @!attribute [rw] type
    #   The target type is always an `ACCOUNT`.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The `TargetID` is a 12-character identifier of the `ACCOUNT` for
    #   which the control was created. (This must be the current account.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/Target AWS API Documentation
    #
    class Target < Struct.new(
      :type,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds the caller should wait before retrying.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
