# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHubConfig
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute home_region
    #   <p>The name of the home region of the calling account.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The account for which this command sets up a home region control. The <code>Target</code>
    #         is always of type <code>ACCOUNT</code>.</p>
    #   @return [Types::Target]
    # @!attribute dry_run
    #   <p>Optional Boolean flag to indicate whether any effect should take place. It tests whether
    #         the caller has permission to make the call.</p>
    #   @return [Boolean]
    class CreateHomeRegionControlRequest < Struct.new(
      :home_region,
      :target,
      :dry_run,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute home_region_control
    #   <p>This object is the <code>HomeRegionControl</code> object that's returned by a successful
    #         call to <code>CreateHomeRegionControl</code>.</p>
    #   @return [Types::HomeRegionControl]
    class CreateHomeRegionControlResult < Struct.new(
      :home_region_control,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_id
    #   <p>A unique identifier that's generated for each home region control. It's always a string
    #         that begins with "hrc-" followed by 12 lowercase letters and numbers.</p>
    #   @return [String]
    class DeleteHomeRegionControlRequest < Struct.new(
      :control_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteHomeRegionControlResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_id
    #   <p>The <code>ControlID</code> is a unique identifier string of your
    #           <code>HomeRegionControl</code> object.</p>
    #   @return [String]
    # @!attribute home_region
    #   <p>The name of the home region you'd like to view.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target parameter specifies the identifier to which the home region is applied, which
    #         is always of type <code>ACCOUNT</code>. It applies the home region to the current
    #           <code>ACCOUNT</code>.</p>
    #   @return [Types::Target]
    # @!attribute max_results
    #   <p>The maximum number of filtering results to display per page. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, more results are available.
    #         To retrieve the next page of results, make the call again using the returned token in
    #           <code>NextToken</code>.</p>
    #   @return [String]
    class DescribeHomeRegionControlsRequest < Struct.new(
      :control_id,
      :home_region,
      :target,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute home_region_controls
    #   <p>An array that contains your <code>HomeRegionControl</code> objects.</p>
    #   @return [Array<Types::HomeRegionControl>]
    # @!attribute next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, more results are available.
    #         To retrieve the next page of results, make the call again using the returned token in
    #           <code>NextToken</code>.</p>
    #   @return [String]
    class DescribeHomeRegionControlsResult < Struct.new(
      :home_region_controls,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exception raised to indicate that authorization of an action was successful, when the
    #         <code>DryRun</code> flag is set to true.</p>
    # @!attribute message
    #   @return [String]
    class DryRunOperation < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetHomeRegionRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute home_region
    #   <p>The name of the home region of the calling account.</p>
    #   @return [String]
    class GetHomeRegionResult < Struct.new(
      :home_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A home region control is an object that specifies the home region for an account, with
    #       some additional information. It contains a target (always of type <code>ACCOUNT</code>), an
    #       ID, and a time at which the home region was set.</p>
    # @!attribute control_id
    #   <p>A unique identifier that's generated for each home region control. It's always a string
    #         that begins with "hrc-" followed by 12 lowercase letters and numbers.</p>
    #   @return [String]
    # @!attribute home_region
    #   <p>The AWS Region that's been set as home region. For example, "us-west-2" or "eu-central-1"
    #         are valid home regions.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target parameter specifies the identifier to which the home region is applied, which
    #         is always an <code>ACCOUNT</code>. It applies the home region to the current
    #           <code>ACCOUNT</code>.</p>
    #   @return [Types::Target]
    # @!attribute requested_time
    #   <p>A timestamp representing the time when the customer called
    #           <code>CreateHomeregionControl</code> and set the home region for the account.</p>
    #   @return [Time]
    class HomeRegionControl < Struct.new(
      :control_id,
      :home_region,
      :target,
      :requested_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exception raised when an internal, configuration, or dependency error is
    #       encountered.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerError < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exception raised when the provided input violates a policy constraint or is entered in the
    #       wrong format or data type.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exception raised when a request fails due to temporary unavailability of the
    #       service.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The target parameter specifies the identifier to which the home region is applied, which
    #       is always an <code>ACCOUNT</code>. It applies the home region to the current
    #         <code>ACCOUNT</code>.</p>
    # @!attribute type
    #   <p>The target type is always an <code>ACCOUNT</code>.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The <code>TargetID</code> is a 12-character identifier of the <code>ACCOUNT</code> for
    #         which the control was created. (This must be the current account.) </p>
    #   @return [String]
    class Target < Struct.new(
      :type,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds the caller should wait before retrying.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

  end
end
