# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTRoboRunner
  module Types

    # User does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cartesian coordinates in 3D space relative to the RoboRunner origin.
    #
    # @!attribute [rw] x
    #   X coordinate.
    #   @return [Float]
    #
    # @!attribute [rw] y
    #   Y coordinate.
    #   @return [Float]
    #
    # @!attribute [rw] z
    #   Z coordinate.
    #   @return [Float]
    #
    class CartesianCoordinates < Struct.new(
      :x,
      :y,
      :z)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown if a resource in a create request already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Token used for detecting replayed requests. Replayed requests will
    #   not be performed multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the destination. Default used if not specified.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON document containing additional fixed properties regarding the
    #   destination
    #   @return [String]
    #
    class CreateDestinationRequest < Struct.new(
      :client_token,
      :name,
      :site,
      :state,
      :additional_fixed_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Destination ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the destination's identifier
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   State of the destination.
    #   @return [String]
    #
    class CreateDestinationResponse < Struct.new(
      :arn,
      :id,
      :created_at,
      :updated_at,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Token used for detecting replayed requests. Replayed requests will
    #   not be performed multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   A valid ISO 3166-1 alpha-2 code for the country in which the site
    #   resides. e.g., US.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A high-level description of the site.
    #   @return [String]
    #
    class CreateSiteRequest < Struct.new(
      :client_token,
      :name,
      :country_code,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the site's identifier
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    class CreateSiteResponse < Struct.new(
      :arn,
      :id,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Token used for detecting replayed requests. Replayed requests will
    #   not be performed multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON blob containing additional fixed properties regarding the
    #   worker fleet
    #   @return [String]
    #
    class CreateWorkerFleetRequest < Struct.new(
      :client_token,
      :name,
      :site,
      :additional_fixed_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the worker fleet's identifier
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    class CreateWorkerFleetResponse < Struct.new(
      :arn,
      :id,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Token used for detecting replayed requests. Replayed requests will
    #   not be performed multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] fleet
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    # @!attribute [rw] additional_transient_properties
    #   JSON blob containing unstructured worker properties that are
    #   transient and may change during regular operation.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON blob containing unstructured worker properties that are fixed
    #   and won't change during regular operation.
    #   @return [String]
    #
    # @!attribute [rw] vendor_properties
    #   Properties of the worker that are provided by the vendor FMS.
    #   @return [Types::VendorProperties]
    #
    # @!attribute [rw] position
    #   Supported coordinates for worker position.
    #   @return [Types::PositionCoordinates]
    #
    # @!attribute [rw] orientation
    #   Worker orientation measured in units clockwise from north.
    #   @return [Types::Orientation]
    #
    class CreateWorkerRequest < Struct.new(
      :client_token,
      :name,
      :fleet,
      :additional_transient_properties,
      :additional_fixed_properties,
      :vendor_properties,
      :position,
      :orientation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Full ARN of the worker.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the workers identifier
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    class CreateWorkerResponse < Struct.new(
      :arn,
      :id,
      :created_at,
      :updated_at,
      :site)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Destination ARN.
    #   @return [String]
    #
    class DeleteDestinationRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteDestinationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   Site ARN.
    #   @return [String]
    #
    class DeleteSiteRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteSiteResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    class DeleteWorkerFleetRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteWorkerFleetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   Full ARN of the worker.
    #   @return [String]
    #
    class DeleteWorkerRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteWorkerResponse < Aws::EmptyStructure; end

    # Area within a facility where work can be performed.
    #
    # @!attribute [rw] arn
    #   Destination ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the destination's identifier
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   State of the destination.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON document containing additional fixed properties regarding the
    #   destination
    #   @return [String]
    #
    class Destination < Struct.new(
      :arn,
      :id,
      :name,
      :site,
      :created_at,
      :updated_at,
      :state,
      :additional_fixed_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Destination ARN.
    #   @return [String]
    #
    class GetDestinationRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Destination ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the destination's identifier
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   State of the destination.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON document containing additional fixed properties regarding the
    #   destination
    #   @return [String]
    #
    class GetDestinationResponse < Struct.new(
      :arn,
      :id,
      :name,
      :site,
      :created_at,
      :updated_at,
      :state,
      :additional_fixed_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Site ARN.
    #   @return [String]
    #
    class GetSiteRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the site's identifier
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   A valid ISO 3166-1 alpha-2 code for the country in which the site
    #   resides. e.g., US.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A high-level description of the site.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    class GetSiteResponse < Struct.new(
      :arn,
      :id,
      :name,
      :country_code,
      :description,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    class GetWorkerFleetRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Filters access by the worker fleet's identifier
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON blob containing additional fixed properties regarding the
    #   worker fleet
    #   @return [String]
    #
    class GetWorkerFleetResponse < Struct.new(
      :id,
      :arn,
      :name,
      :site,
      :created_at,
      :updated_at,
      :additional_fixed_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Full ARN of the worker.
    #   @return [String]
    #
    class GetWorkerRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Full ARN of the worker.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the workers identifier
    #   @return [String]
    #
    # @!attribute [rw] fleet
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] additional_transient_properties
    #   JSON blob containing unstructured worker properties that are
    #   transient and may change during regular operation.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON blob containing unstructured worker properties that are fixed
    #   and won't change during regular operation.
    #   @return [String]
    #
    # @!attribute [rw] vendor_properties
    #   Properties of the worker that are provided by the vendor FMS.
    #   @return [Types::VendorProperties]
    #
    # @!attribute [rw] position
    #   Supported coordinates for worker position.
    #   @return [Types::PositionCoordinates]
    #
    # @!attribute [rw] orientation
    #   Worker orientation measured in units clockwise from north.
    #   @return [Types::Orientation]
    #
    class GetWorkerResponse < Struct.new(
      :arn,
      :id,
      :fleet,
      :site,
      :created_at,
      :updated_at,
      :name,
      :additional_transient_properties,
      :additional_fixed_properties,
      :vendor_properties,
      :position,
      :orientation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown if something goes wrong within the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to retrieve in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned when another page of data exists. Provide
    #   it in your next call to the API to receive the next page.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   State of the destination.
    #   @return [String]
    #
    class ListDestinationsRequest < Struct.new(
      :site,
      :max_results,
      :next_token,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token returned when another page of data exists. Provide
    #   it in your next call to the API to receive the next page.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   List of destinations.
    #   @return [Array<Types::Destination>]
    #
    class ListDestinationsResponse < Struct.new(
      :next_token,
      :destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of results to retrieve in a single ListSites call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned when another page of data exists. Provide
    #   it in your next call to the API to receive the next page.
    #   @return [String]
    #
    class ListSitesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token returned when another page of data exists. Provide
    #   it in your next call to the API to receive the next page.
    #   @return [String]
    #
    # @!attribute [rw] sites
    #   List of facilities.
    #   @return [Array<Types::Site>]
    #
    class ListSitesResponse < Struct.new(
      :next_token,
      :sites)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to retrieve in a single ListWorkerFleets
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned when another page of data exists. Provide
    #   it in your next call to the API to receive the next page.
    #   @return [String]
    #
    class ListWorkerFleetsRequest < Struct.new(
      :site,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token returned when another page of data exists. Provide
    #   it in your next call to the API to receive the next page.
    #   @return [String]
    #
    # @!attribute [rw] worker_fleets
    #   List of worker fleets.
    #   @return [Array<Types::WorkerFleet>]
    #
    class ListWorkerFleetsResponse < Struct.new(
      :next_token,
      :worker_fleets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to retrieve in a single ListWorkers call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned when another page of data exists. Provide
    #   it in your next call to the API to receive the next page.
    #   @return [String]
    #
    # @!attribute [rw] fleet
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    class ListWorkersRequest < Struct.new(
      :site,
      :max_results,
      :next_token,
      :fleet)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token returned when another page of data exists. Provide
    #   it in your next call to the API to receive the next page.
    #   @return [String]
    #
    # @!attribute [rw] workers
    #   List of workers.
    #   @return [Array<Types::Worker>]
    #
    class ListWorkersResponse < Struct.new(
      :next_token,
      :workers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Worker orientation measured in units clockwise from north.
    #
    # @note Orientation is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Orientation is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Orientation corresponding to the set member.
    #
    # @!attribute [rw] degrees
    #   Degrees, limited on \[0, 360)
    #   @return [Float]
    #
    class Orientation < Struct.new(
      :degrees,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Degrees < Orientation; end
      class Unknown < Orientation; end
    end

    # Supported coordinates for worker position.
    #
    # @note PositionCoordinates is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PositionCoordinates is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PositionCoordinates corresponding to the set member.
    #
    # @!attribute [rw] cartesian_coordinates
    #   Cartesian coordinates.
    #   @return [Types::CartesianCoordinates]
    #
    class PositionCoordinates < Struct.new(
      :cartesian_coordinates,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CartesianCoordinates < PositionCoordinates; end
      class Unknown < PositionCoordinates; end
    end

    # Exception thrown if a resource referenced in the request doesn't
    # exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown if the user's AWS account has reached a service
    # limit and the operation cannot proceed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Facility containing destinations, workers, activities, and tasks.
    #
    # @!attribute [rw] arn
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the site. Mutable after creation and unique within a
    #   given account.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   A valid ISO 3166-1 alpha-2 code for the country in which the site
    #   resides. e.g., US.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    class Site < Struct.new(
      :arn,
      :name,
      :country_code,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown if the api has been called too quickly be the client.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Destination ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   State of the destination.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON document containing additional fixed properties regarding the
    #   destination
    #   @return [String]
    #
    class UpdateDestinationRequest < Struct.new(
      :id,
      :name,
      :state,
      :additional_fixed_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Destination ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the destination's identifier
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   State of the destination.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON document containing additional fixed properties regarding the
    #   destination
    #   @return [String]
    #
    class UpdateDestinationResponse < Struct.new(
      :arn,
      :id,
      :name,
      :updated_at,
      :state,
      :additional_fixed_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   A valid ISO 3166-1 alpha-2 code for the country in which the site
    #   resides. e.g., US.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A high-level description of the site.
    #   @return [String]
    #
    class UpdateSiteRequest < Struct.new(
      :id,
      :name,
      :country_code,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the site's identifier
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   A valid ISO 3166-1 alpha-2 code for the country in which the site
    #   resides. e.g., US.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A high-level description of the site.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    class UpdateSiteResponse < Struct.new(
      :arn,
      :id,
      :name,
      :country_code,
      :description,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON blob containing additional fixed properties regarding the
    #   worker fleet
    #   @return [String]
    #
    class UpdateWorkerFleetRequest < Struct.new(
      :id,
      :name,
      :additional_fixed_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the worker fleet's identifier
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON blob containing additional fixed properties regarding the
    #   worker fleet
    #   @return [String]
    #
    class UpdateWorkerFleetResponse < Struct.new(
      :arn,
      :id,
      :name,
      :updated_at,
      :additional_fixed_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Full ARN of the worker.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] additional_transient_properties
    #   JSON blob containing unstructured worker properties that are
    #   transient and may change during regular operation.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON blob containing unstructured worker properties that are fixed
    #   and won't change during regular operation.
    #   @return [String]
    #
    # @!attribute [rw] vendor_properties
    #   Properties of the worker that are provided by the vendor FMS.
    #   @return [Types::VendorProperties]
    #
    # @!attribute [rw] position
    #   Supported coordinates for worker position.
    #   @return [Types::PositionCoordinates]
    #
    # @!attribute [rw] orientation
    #   Worker orientation measured in units clockwise from north.
    #   @return [Types::Orientation]
    #
    class UpdateWorkerRequest < Struct.new(
      :id,
      :name,
      :additional_transient_properties,
      :additional_fixed_properties,
      :vendor_properties,
      :position,
      :orientation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Full ARN of the worker.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the workers identifier
    #   @return [String]
    #
    # @!attribute [rw] fleet
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] additional_transient_properties
    #   JSON blob containing unstructured worker properties that are
    #   transient and may change during regular operation.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON blob containing unstructured worker properties that are fixed
    #   and won't change during regular operation.
    #   @return [String]
    #
    # @!attribute [rw] orientation
    #   Worker orientation measured in units clockwise from north.
    #   @return [Types::Orientation]
    #
    # @!attribute [rw] vendor_properties
    #   Properties of the worker that are provided by the vendor FMS.
    #   @return [Types::VendorProperties]
    #
    # @!attribute [rw] position
    #   Supported coordinates for worker position.
    #   @return [Types::PositionCoordinates]
    #
    class UpdateWorkerResponse < Struct.new(
      :arn,
      :id,
      :fleet,
      :updated_at,
      :name,
      :additional_transient_properties,
      :additional_fixed_properties,
      :orientation,
      :vendor_properties,
      :position)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown if an invalid parameter is provided to an API.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties of the worker that are provided by the vendor FMS.
    #
    # @!attribute [rw] vendor_worker_id
    #   The worker ID defined by the vendor FMS.
    #   @return [String]
    #
    # @!attribute [rw] vendor_worker_ip_address
    #   The worker IP address defined by the vendor FMS.
    #   @return [String]
    #
    # @!attribute [rw] vendor_additional_transient_properties
    #   JSON blob containing unstructured vendor properties that are
    #   transient and may change during regular operation.
    #   @return [String]
    #
    # @!attribute [rw] vendor_additional_fixed_properties
    #   JSON blob containing unstructured vendor properties that are fixed
    #   and won't change during regular operation.
    #   @return [String]
    #
    class VendorProperties < Struct.new(
      :vendor_worker_id,
      :vendor_worker_ip_address,
      :vendor_additional_transient_properties,
      :vendor_additional_fixed_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # A unit capable of performing tasks.
    #
    # @!attribute [rw] arn
    #   Full ARN of the worker.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the workers identifier
    #   @return [String]
    #
    # @!attribute [rw] fleet
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] additional_transient_properties
    #   JSON blob containing unstructured worker properties that are
    #   transient and may change during regular operation.
    #   @return [String]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON blob containing unstructured worker properties that are fixed
    #   and won't change during regular operation.
    #   @return [String]
    #
    # @!attribute [rw] vendor_properties
    #   Properties of the worker that are provided by the vendor FMS.
    #   @return [Types::VendorProperties]
    #
    # @!attribute [rw] position
    #   Supported coordinates for worker position.
    #   @return [Types::PositionCoordinates]
    #
    # @!attribute [rw] orientation
    #   Worker orientation measured in units clockwise from north.
    #   @return [Types::Orientation]
    #
    class Worker < Struct.new(
      :arn,
      :id,
      :fleet,
      :created_at,
      :updated_at,
      :name,
      :site,
      :additional_transient_properties,
      :additional_fixed_properties,
      :vendor_properties,
      :position,
      :orientation)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of workers organized within a facility.
    #
    # @!attribute [rw] arn
    #   Full ARN of the worker fleet.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Filters access by the worker fleet's identifier
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Human friendly name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] site
    #   Site ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp at which the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp at which the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] additional_fixed_properties
    #   JSON blob containing additional fixed properties regarding the
    #   worker fleet
    #   @return [String]
    #
    class WorkerFleet < Struct.new(
      :arn,
      :id,
      :name,
      :site,
      :created_at,
      :updated_at,
      :additional_fixed_properties)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
