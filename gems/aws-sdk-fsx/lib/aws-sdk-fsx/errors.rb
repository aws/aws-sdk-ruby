# frozen_string_literal: true

# This is generated code!

module Aws::FSx
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::FSx::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::FSx::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {AccessPointAlreadyOwnedByYou}
  # * {ActiveDirectoryError}
  # * {BackupBeingCopied}
  # * {BackupInProgress}
  # * {BackupNotFound}
  # * {BackupRestoring}
  # * {BadRequest}
  # * {DataRepositoryAssociationNotFound}
  # * {DataRepositoryTaskEnded}
  # * {DataRepositoryTaskExecuting}
  # * {DataRepositoryTaskNotFound}
  # * {FileCacheNotFound}
  # * {FileSystemNotFound}
  # * {IncompatibleParameterError}
  # * {IncompatibleRegionForMultiAZ}
  # * {InternalServerError}
  # * {InvalidAccessPoint}
  # * {InvalidDataRepositoryType}
  # * {InvalidDestinationKmsKey}
  # * {InvalidExportPath}
  # * {InvalidImportPath}
  # * {InvalidNetworkSettings}
  # * {InvalidPerUnitStorageThroughput}
  # * {InvalidRegion}
  # * {InvalidRequest}
  # * {InvalidSourceKmsKey}
  # * {MissingFileCacheConfiguration}
  # * {MissingFileSystemConfiguration}
  # * {MissingVolumeConfiguration}
  # * {NotServiceResourceError}
  # * {ResourceDoesNotSupportTagging}
  # * {ResourceNotFound}
  # * {S3AccessPointAttachmentNotFound}
  # * {ServiceLimitExceeded}
  # * {SnapshotNotFound}
  # * {SourceBackupUnavailable}
  # * {StorageVirtualMachineNotFound}
  # * {TooManyAccessPoints}
  # * {UnsupportedOperation}
  # * {VolumeNotFound}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>An access point with that name already exists in the Amazon Web Services Region in your Amazon Web Services account.</p>
    class AccessPointAlreadyOwnedByYou < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::AccessPointAlreadyOwnedByYou] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An error code indicating that an access point with that name already exists in the Amazon Web Services Region in your Amazon Web Services account.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>An Active Directory error.</p>
    class ActiveDirectoryError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::ActiveDirectoryError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The directory ID of the directory that an error pertains to.</p>
      def active_directory_id
        @data[:active_directory_id]
      end

      # <p>The type of Active Directory error.</p>
      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't delete a backup while it's being copied.</p>
    class BackupBeingCopied < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::BackupBeingCopied] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def backup_id
        @data[:backup_id]
      end
    end

    # <p>Another backup is already under way. Wait for completion before initiating
    #             additional backups of this file system.</p>
    class BackupInProgress < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::BackupInProgress] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No Amazon FSx backups were found based upon the supplied parameters.</p>
    class BackupNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::BackupNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't delete a backup while it's being used to restore a file
    #             system.</p>
    class BackupRestoring < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::BackupRestoring] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The ID of a file system being restored from the backup.</p>
      def file_system_id
        @data[:file_system_id]
      end
    end

    # <p>A generic error indicating a failure with a client request.</p>
    class BadRequest < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::BadRequest] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No data repository associations were found based upon the supplied parameters.</p>
    class DataRepositoryAssociationNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::DataRepositoryAssociationNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The data repository task could not be canceled because the task has already ended.</p>
    class DataRepositoryTaskEnded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::DataRepositoryTaskEnded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An existing data repository task is currently executing on the file system.  
    #         Wait until the existing task has completed, then create the new task.</p>
    class DataRepositoryTaskExecuting < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::DataRepositoryTaskExecuting] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The data repository task or tasks you specified could not be found.</p>
    class DataRepositoryTaskNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::DataRepositoryTaskNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No caches were found based upon supplied parameters.</p>
    class FileCacheNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::FileCacheNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No Amazon FSx file systems were found based upon supplied parameters.</p>
    class FileSystemNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::FileSystemNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The error returned when a second request is received with the same client request
    #             token but different parameters settings. A client request token should always uniquely
    #             identify a single request.</p>
    class IncompatibleParameterError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::IncompatibleParameterError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A parameter that is incompatible with the earlier request.</p>
      def parameter
        @data[:parameter]
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon FSx doesn't support Multi-AZ Windows File Server copy backup in the
    #          destination Region, so the copied backup can't be restored.</p>
    class IncompatibleRegionForMultiAZ < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::IncompatibleRegionForMultiAZ] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A generic error indicating a server-side failure.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The access point specified doesn't exist.</p>
    class InvalidAccessPoint < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::InvalidAccessPoint] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An error code indicating that the access point specified doesn't exist.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>You have filtered the response to a data repository type that is not supported.</p>
    class InvalidDataRepositoryType < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::InvalidDataRepositoryType] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The Key Management Service (KMS) key of the destination backup is not
    #          valid.</p>
    class InvalidDestinationKmsKey < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::InvalidDestinationKmsKey] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The path provided for data repository export isn't valid.</p>
    class InvalidExportPath < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::InvalidExportPath] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The path provided for data repository import isn't valid.</p>
    class InvalidImportPath < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::InvalidImportPath] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more network settings specified in the request are invalid.</p>
    class InvalidNetworkSettings < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::InvalidNetworkSettings] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Error message explaining what's wrong with network settings.</p>
      def message
        @data[:message]
      end

      # <p>The subnet ID that is either invalid or not part of the VPC specified.</p>
      def invalid_subnet_id
        @data[:invalid_subnet_id]
      end

      # <p>The security group ID is either invalid or not part of the VPC specified.</p>
      def invalid_security_group_id
        @data[:invalid_security_group_id]
      end

      # <p>The route table ID is either invalid or not part of the VPC specified.</p>
      def invalid_route_table_id
        @data[:invalid_route_table_id]
      end
    end

    # <p>An invalid value for <code>PerUnitStorageThroughput</code> was provided. Please create your file system again, using a valid value.</p>
    class InvalidPerUnitStorageThroughput < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::InvalidPerUnitStorageThroughput] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The Region provided for <code>SourceRegion</code> is not valid or is in a different
    #             Amazon Web Services partition.</p>
    class InvalidRegion < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::InvalidRegion] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The action or operation requested is invalid. Verify that the action is typed correctly.</p>
    class InvalidRequest < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::InvalidRequest] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An error code indicating that the action or operation requested is invalid.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The Key Management Service (KMS) key of the source backup is not
    #          valid.</p>
    class InvalidSourceKmsKey < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::InvalidSourceKmsKey] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A cache configuration is required for this operation.</p>
    class MissingFileCacheConfiguration < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::MissingFileCacheConfiguration] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A file system configuration is required for this operation.</p>
    class MissingFileSystemConfiguration < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::MissingFileSystemConfiguration] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A volume configuration is required for this operation.</p>
    class MissingVolumeConfiguration < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::MissingVolumeConfiguration] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource specified for the tagging operation is not a resource type owned by
    #             Amazon FSx. Use the API of the relevant service to perform the operation. </p>
    class NotServiceResourceError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::NotServiceResourceError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The Amazon Resource Name (ARN) of the non-Amazon FSx resource.</p>
      def resource_arn
        @data[:resource_arn]
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource specified does not support tagging. </p>
    class ResourceDoesNotSupportTagging < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::ResourceDoesNotSupportTagging] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The Amazon Resource Name (ARN) of the resource that doesn't support
      #             tagging.</p>
      def resource_arn
        @data[:resource_arn]
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource specified by the Amazon Resource Name (ARN) can't be found.</p>
    class ResourceNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::ResourceNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The resource ARN of the resource that can't be found.</p>
      def resource_arn
        @data[:resource_arn]
      end

      def message
        @data[:message]
      end
    end

    # <p>The access point specified was not found.</p>
    class S3AccessPointAttachmentNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::S3AccessPointAttachmentNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An error indicating that a particular service limit was exceeded. You can increase
    #             some service limits by contacting Amazon Web ServicesSupport.</p>
    class ServiceLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::ServiceLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Enumeration of the service limit that was exceeded. </p>
      def limit
        @data[:limit]
      end

      def message
        @data[:message]
      end
    end

    # <p>No Amazon FSx snapshots were found based on the supplied parameters.</p>
    class SnapshotNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::SnapshotNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the lifecycle status of the source backup isn't
    #             <code>AVAILABLE</code>.</p>
    class SourceBackupUnavailable < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::SourceBackupUnavailable] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def backup_id
        @data[:backup_id]
      end
    end

    # <p>No FSx for ONTAP SVMs were found based upon the supplied parameters.</p>
    class StorageVirtualMachineNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::StorageVirtualMachineNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of S3 access points attachments allowed for your account in this Amazon Web Services Region, or for the file system. For more information, or to request an increase, 
    #          see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/limits.html">Service quotas on FSx resources</a> in the FSx for OpenZFS User Guide.</p>
    class TooManyAccessPoints < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::TooManyAccessPoints] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An error code indicating that you have reached the maximum number of S3 access points attachments allowed for your account in this Amazon Web Services Region, or for the file system.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation is not supported for this resource or API.</p>
    class UnsupportedOperation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::UnsupportedOperation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No Amazon FSx volumes were found based upon the supplied parameters.</p>
    class VolumeNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FSx::Types::VolumeNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
