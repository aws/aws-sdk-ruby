# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Mobile
  module Types

    # The details of the bundle.
    #
    # @!attribute [rw] bundle_id
    #   Unique bundle identifier.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Title of the download bundle.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of the download bundle.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the download bundle.
    #   @return [String]
    #
    # @!attribute [rw] icon_url
    #   Icon for the download bundle.
    #   @return [String]
    #
    # @!attribute [rw] available_platforms
    #   Developer desktop or mobile app or website platforms.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/BundleDetails AWS API Documentation
    #
    class BundleDetails < Struct.new(
      :bundle_id,
      :title,
      :version,
      :description,
      :icon_url,
      :available_platforms)
      include Aws::Structure
    end

    # Request structure used to request a project be created.
    #
    # @note When making an API call, you may pass CreateProjectRequest
    #   data as a hash:
    #
    #       {
    #         name: "ProjectName",
    #         region: "ProjectRegion",
    #         contents: "data",
    #         snapshot_id: "SnapshotId",
    #       }
    #
    # @!attribute [rw] name
    #   Name of the project.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Default region where project resources should be created.
    #   @return [String]
    #
    # @!attribute [rw] contents
    #   ZIP or YAML file which contains configuration settings to be used
    #   when creating the project. This may be the contents of the file
    #   downloaded from the URL provided in an export project operation.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   Unique identifier for an exported snapshot of project configuration.
    #   This snapshot identifier is included in the share URL when a project
    #   is exported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/CreateProjectRequest AWS API Documentation
    #
    class CreateProjectRequest < Struct.new(
      :name,
      :region,
      :contents,
      :snapshot_id)
      include Aws::Structure
    end

    # Result structure used in response to a request to create a project.
    #
    # @!attribute [rw] details
    #   Detailed information about the created AWS Mobile Hub project.
    #   @return [Types::ProjectDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/CreateProjectResult AWS API Documentation
    #
    class CreateProjectResult < Struct.new(
      :details)
      include Aws::Structure
    end

    # Request structure used to request a project be deleted.
    #
    # @note When making an API call, you may pass DeleteProjectRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ProjectId", # required
    #       }
    #
    # @!attribute [rw] project_id
    #   Unique project identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/DeleteProjectRequest AWS API Documentation
    #
    class DeleteProjectRequest < Struct.new(
      :project_id)
      include Aws::Structure
    end

    # Result structure used in response to request to delete a project.
    #
    # @!attribute [rw] deleted_resources
    #   Resources which were deleted.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] orphaned_resources
    #   Resources which were not deleted, due to a risk of losing
    #   potentially important data or files.
    #   @return [Array<Types::Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/DeleteProjectResult AWS API Documentation
    #
    class DeleteProjectResult < Struct.new(
      :deleted_resources,
      :orphaned_resources)
      include Aws::Structure
    end

    # Request structure to request the details of a specific bundle.
    #
    # @note When making an API call, you may pass DescribeBundleRequest
    #   data as a hash:
    #
    #       {
    #         bundle_id: "BundleId", # required
    #       }
    #
    # @!attribute [rw] bundle_id
    #   Unique bundle identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/DescribeBundleRequest AWS API Documentation
    #
    class DescribeBundleRequest < Struct.new(
      :bundle_id)
      include Aws::Structure
    end

    # Result structure contains the details of the bundle.
    #
    # @!attribute [rw] details
    #   The details of the bundle.
    #   @return [Types::BundleDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/DescribeBundleResult AWS API Documentation
    #
    class DescribeBundleResult < Struct.new(
      :details)
      include Aws::Structure
    end

    # Request structure used to request details about a project.
    #
    # @note When making an API call, you may pass DescribeProjectRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ProjectId", # required
    #         sync_from_resources: false,
    #       }
    #
    # @!attribute [rw] project_id
    #   Unique project identifier.
    #   @return [String]
    #
    # @!attribute [rw] sync_from_resources
    #   If set to true, causes AWS Mobile Hub to synchronize information
    #   from other services, e.g., update state of AWS CloudFormation stacks
    #   in the AWS Mobile Hub project.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/DescribeProjectRequest AWS API Documentation
    #
    class DescribeProjectRequest < Struct.new(
      :project_id,
      :sync_from_resources)
      include Aws::Structure
    end

    # Result structure used for requests of project details.
    #
    # @!attribute [rw] details
    #   Detailed information about an AWS Mobile Hub project.
    #   @return [Types::ProjectDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/DescribeProjectResult AWS API Documentation
    #
    class DescribeProjectResult < Struct.new(
      :details)
      include Aws::Structure
    end

    # Request structure used to request generation of custom SDK and tool
    # packages required to integrate mobile web or app clients with backed
    # AWS resources.
    #
    # @note When making an API call, you may pass ExportBundleRequest
    #   data as a hash:
    #
    #       {
    #         bundle_id: "BundleId", # required
    #         project_id: "ProjectId",
    #         platform: "OSX", # accepts OSX, WINDOWS, LINUX, OBJC, SWIFT, ANDROID, JAVASCRIPT
    #       }
    #
    # @!attribute [rw] bundle_id
    #   Unique bundle identifier.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   Unique project identifier.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   Developer desktop or target application platform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ExportBundleRequest AWS API Documentation
    #
    class ExportBundleRequest < Struct.new(
      :bundle_id,
      :project_id,
      :platform)
      include Aws::Structure
    end

    # Result structure which contains link to download custom-generated SDK
    # and tool packages used to integrate mobile web or app clients with
    # backed AWS resources.
    #
    # @!attribute [rw] download_url
    #   URL which contains the custom-generated SDK and tool packages used
    #   to integrate the client mobile app or web app with the AWS resources
    #   created by the AWS Mobile Hub project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ExportBundleResult AWS API Documentation
    #
    class ExportBundleResult < Struct.new(
      :download_url)
      include Aws::Structure
    end

    # Request structure used in requests to export project configuration
    # details.
    #
    # @note When making an API call, you may pass ExportProjectRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ProjectId", # required
    #       }
    #
    # @!attribute [rw] project_id
    #   Unique project identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ExportProjectRequest AWS API Documentation
    #
    class ExportProjectRequest < Struct.new(
      :project_id)
      include Aws::Structure
    end

    # Result structure used for requests to export project configuration
    # details.
    #
    # @!attribute [rw] download_url
    #   URL which can be used to download the exported project configuation
    #   file(s).
    #   @return [String]
    #
    # @!attribute [rw] share_url
    #   URL which can be shared to allow other AWS users to create their own
    #   project in AWS Mobile Hub with the same configuration as the
    #   specified project. This URL pertains to a snapshot in time of the
    #   project configuration that is created when this API is called. If
    #   you want to share additional changes to your project configuration,
    #   then you will need to create and share a new snapshot by calling
    #   this method again.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   Unique identifier for the exported snapshot of the project
    #   configuration. This snapshot identifier is included in the share
    #   URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ExportProjectResult AWS API Documentation
    #
    class ExportProjectResult < Struct.new(
      :download_url,
      :share_url,
      :snapshot_id)
      include Aws::Structure
    end

    # Request structure to request all available bundles.
    #
    # @note When making an API call, you may pass ListBundlesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   Maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Set to null to start listing bundles from start.
    #   If non-null pagination token is returned in a result, then pass its
    #   value in here in another request to list more bundles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ListBundlesRequest AWS API Documentation
    #
    class ListBundlesRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Result structure contains a list of all available bundles with
    # details.
    #
    # @!attribute [rw] bundle_list
    #   A list of bundles.
    #   @return [Array<Types::BundleDetails>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. If non-null pagination token is returned in a
    #   result, then pass its value in another request to fetch more
    #   entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ListBundlesResult AWS API Documentation
    #
    class ListBundlesResult < Struct.new(
      :bundle_list,
      :next_token)
      include Aws::Structure
    end

    # Request structure used to request projects list in AWS Mobile Hub.
    #
    # @note When making an API call, you may pass ListProjectsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   Maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Set to null to start listing projects from start.
    #   If non-null pagination token is returned in a result, then pass its
    #   value in here in another request to list more projects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ListProjectsRequest AWS API Documentation
    #
    class ListProjectsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Result structure used for requests to list projects in AWS Mobile Hub.
    #
    # @!attribute [rw] projects
    #   List of projects.
    #   @return [Array<Types::ProjectSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Set to null to start listing records from start.
    #   If non-null pagination token is returned in a result, then pass its
    #   value in here in another request to list more entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ListProjectsResult AWS API Documentation
    #
    class ListProjectsResult < Struct.new(
      :projects,
      :next_token)
      include Aws::Structure
    end

    # Detailed information about an AWS Mobile Hub project.
    #
    # @!attribute [rw] name
    #   Name of the project.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   Unique project identifier.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Default region to use for AWS resource creation in the AWS Mobile
    #   Hub project.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Synchronization state for a project.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   Date the project was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   Date of the last modification of the project.
    #   @return [Time]
    #
    # @!attribute [rw] console_url
    #   Website URL for this project in the AWS Mobile Hub console.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   List of AWS resources associated with a project.
    #   @return [Array<Types::Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ProjectDetails AWS API Documentation
    #
    class ProjectDetails < Struct.new(
      :name,
      :project_id,
      :region,
      :state,
      :created_date,
      :last_updated_date,
      :console_url,
      :resources)
      include Aws::Structure
    end

    # Summary information about an AWS Mobile Hub project.
    #
    # @!attribute [rw] name
    #   Name of the project.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   Unique project identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ProjectSummary AWS API Documentation
    #
    class ProjectSummary < Struct.new(
      :name,
      :project_id)
      include Aws::Structure
    end

    # Information about an instance of an AWS resource associated with a
    # project.
    #
    # @!attribute [rw] type
    #   Simplified name for type of AWS resource (e.g., bucket is an Amazon
    #   S3 bucket).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the AWS resource (e.g., for an Amazon S3 bucket this is the
    #   name of the bucket).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   AWS resource name which uniquely identifies the resource in AWS
    #   systems.
    #   @return [String]
    #
    # @!attribute [rw] feature
    #   Identifies which feature in AWS Mobile Hub is associated with this
    #   AWS resource.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Key-value attribute pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :type,
      :name,
      :arn,
      :feature,
      :attributes)
      include Aws::Structure
    end

    # Request structure used for requests to update project configuration.
    #
    # @note When making an API call, you may pass UpdateProjectRequest
    #   data as a hash:
    #
    #       {
    #         contents: "data",
    #         project_id: "ProjectId", # required
    #       }
    #
    # @!attribute [rw] contents
    #   ZIP or YAML file which contains project configuration to be updated.
    #   This should be the contents of the file downloaded from the URL
    #   provided in an export project operation.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   Unique project identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/UpdateProjectRequest AWS API Documentation
    #
    class UpdateProjectRequest < Struct.new(
      :contents,
      :project_id)
      include Aws::Structure
    end

    # Result structure used for requests to updated project configuration.
    #
    # @!attribute [rw] details
    #   Detailed information about the updated AWS Mobile Hub project.
    #   @return [Types::ProjectDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/UpdateProjectResult AWS API Documentation
    #
    class UpdateProjectResult < Struct.new(
      :details)
      include Aws::Structure
    end

  end
end
