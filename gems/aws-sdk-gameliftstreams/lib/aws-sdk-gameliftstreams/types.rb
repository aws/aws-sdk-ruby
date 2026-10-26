# frozen_string_literal: true

# This is generated code!

module Aws::GameLiftStreams
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have the required permissions to access this Amazon GameLift Streams resource. Correct the permissions before you try again.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> A stream group to add the specified locations to. </p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute location_configurations
    #   <p> A set of one or more locations and the streaming capacity for each location. </p>
    #   @return [Array<Types::LocationConfiguration>]
    class AddStreamGroupLocationsInput < Struct.new(
      nil,
      :identifier,
      :location_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute locations
    #   <p>This value is set of locations, including their name, current status, and capacities. </p> <p>A location can be in one of the following states:</p> <ul> <li> <p> <code>ACTIVATING</code>: Amazon GameLift Streams is preparing the location. You cannot stream from, scale the capacity of, or remove this location yet.</p> </li> <li> <p> <code>ACTIVE</code>: The location is provisioned with initial capacity. You can now stream from, scale the capacity of, or remove this location.</p> </li> <li> <p> <code>ERROR</code>: Amazon GameLift Streams failed to set up this location. The <code>StatusReason</code> field describes the error. You can remove this location and try to add it again.</p> </li> <li> <p> <code>REMOVING</code>: Amazon GameLift Streams is working to remove this location. This will release all provisioned capacity for this location in this stream group.</p> </li> </ul>
    #   @return [Array<Types::LocationState>]
    class AddStreamGroupLocationsOutput < Struct.new(
      nil,
      :identifier,
      :locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an application resource that represents a collection of content for streaming with Amazon GameLift Streams. To retrieve additional application details, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetApplication.html">GetApplication</a>.</p>
    # @!attribute arn
    #   <p>An Amazon Resource Name (ARN) that's assigned to an application resource and uniquely identifies the application across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:application/[resource ID]</code>.</p>
    #   @return [String]
    # @!attribute id
    #   <p>An ID that uniquely identifies the application resource. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable label for the application. You can edit this value. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the application resource. Possible statuses include the following:</p> <ul> <li> <p> <code>INITIALIZED</code>: Amazon GameLift Streams has received the request and is initiating the work flow to create an application. </p> </li> <li> <p> <code>PROCESSING</code>: The create application work flow is in process. Amazon GameLift Streams is copying the content and caching for future deployment in a stream group.</p> </li> <li> <p> <code>READY</code>: The application is ready to deploy in a stream group.</p> </li> <li> <p> <code>ERROR</code>: An error occurred when setting up the application. For more information about the error, call <code>GetApplication</code> and refer to <code>StatusReason</code>.</p> </li> <li> <p> <code>DELETING</code>: Amazon GameLift Streams is in the process of deleting the application.</p> </li> </ul>
    #   @return [String]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute runtime_environment
    #   <p> Configuration settings that identify the operating system for an application resource. This can also include a compatibility layer and other drivers. </p> <p>A runtime environment can be one of the following:</p> <ul> <li> <p> For Linux applications </p> <ul> <li> <p> Ubuntu 22.04 LTS (<code>Type=UBUNTU, Version=22_04_LTS</code>) </p> </li> </ul> </li> <li> <p> For Windows applications </p> <ul> <li> <p>Microsoft Windows Server 2022 Base (<code>Type=WINDOWS, Version=2022</code>)</p> </li> <li> <p>Proton 10.0-4 (<code>Type=PROTON, Version=20260204</code>)</p> </li> <li> <p>Proton 9.0-2 (<code>Type=PROTON, Version=20250516</code>)</p> </li> <li> <p>Proton 8.0-5 (<code>Type=PROTON, Version=20241007</code>)</p> </li> <li> <p>Proton 8.0-2c (<code>Type=PROTON, Version=20230704</code>)</p> </li> </ul> </li> </ul>
    #   @return [Types::RuntimeEnvironment]
    class ApplicationSummary < Struct.new(
      nil,
      :arn,
      :id,
      :description,
      :status,
      :created_at,
      :last_updated_at,
      :runtime_environment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>A stream group to associate to the applications.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute application_identifiers
    #   <p>A set of applications to associate with the stream group.</p> <p>This value is a set of either <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARN)</a> or IDs that uniquely identify application resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    #   @return [Array<String>]
    class AssociateApplicationsInput < Struct.new(
      nil,
      :identifier,
      :application_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>A stream group that is associated to the applications.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute application_arns
    #   <p>A set of applications that are associated to the stream group.</p> <p>This value is a set of <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARNs)</a> that uniquely identify application resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [Array<String>]
    class AssociateApplicationsOutput < Struct.new(
      nil,
      :arn,
      :application_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A human-readable label for the application. You can update this value later.</p>
    #   @return [String]
    # @!attribute runtime_environment
    #   <p>Configuration settings that identify the operating system for an application resource. This can also include a compatibility layer and other drivers.</p> <p>A runtime environment can be one of the following:</p> <ul> <li> <p> For Linux applications </p> <ul> <li> <p> Ubuntu 22.04 LTS (<code>Type=UBUNTU, Version=22_04_LTS</code>) </p> </li> </ul> </li> <li> <p> For Windows applications </p> <ul> <li> <p>Microsoft Windows Server 2022 Base (<code>Type=WINDOWS, Version=2022</code>)</p> </li> <li> <p>Proton 10.0-4 (<code>Type=PROTON, Version=20260204</code>)</p> </li> <li> <p>Proton 9.0-2 (<code>Type=PROTON, Version=20250516</code>)</p> </li> <li> <p>Proton 8.0-5 (<code>Type=PROTON, Version=20241007</code>)</p> </li> <li> <p>Proton 8.0-2c (<code>Type=PROTON, Version=20230704</code>)</p> </li> </ul> </li> </ul>
    #   @return [Types::RuntimeEnvironment]
    # @!attribute executable_path
    #   <p>The relative path and file name of the executable file that Amazon GameLift Streams will stream. Specify a path relative to the location set in <code>ApplicationSourceUri</code>. The file must be contained within the application's root folder. For Windows applications, the file must be a valid Windows executable or batch file with a filename ending in .exe, .cmd, or .bat. For Linux applications, the file must be a valid Linux binary executable or a script that contains an initial interpreter line starting with a shebang ('<code>#!</code>').</p>
    #   @return [String]
    # @!attribute application_source_uri
    #   <p>The location of the content that you want to stream. Enter an Amazon S3 URI to a bucket that contains your game or other application. The location can have a multi-level prefix structure, but it must include all the files needed to run the content. Amazon GameLift Streams copies everything under the specified location.</p> <p>This value is immutable. To designate a different content location, create a new application.</p> <note> <p>The Amazon S3 bucket and the Amazon GameLift Streams application must be in the same Amazon Web Services Region.</p> </note>
    #   @return [String]
    # @!attribute application_log_paths
    #   <p>Locations of log files that your content generates during a stream session. Enter path values that are relative to the <code>ApplicationSourceUri</code> location, or relative to the user's home directory when using a supported path variable. You can specify up to 10 log paths. Each individual log file cannot exceed 50 MB in size.</p> <p>Each path can be a directory or an exact file path. When you specify a directory, Amazon GameLift Streams collects only files with the following extensions: <code>.txt</code>, <code>.log</code>, and <code>.utrace</code>. To collect files with other extensions, specify the exact file path. The copy operation is not performed recursively in subfolders.</p> <p>The following path variables are recognized when they appear as the first component of a path: <code>%USERPROFILE%</code> (Windows and Proton), <code>$HOME</code> or <code>~</code> (Linux). Use a path variable when your application writes logs outside of the application directory.</p> <p>Amazon GameLift Streams uploads designated log files to the Amazon S3 bucket that you specify in <code>ApplicationLogOutputUri</code> at the end of a stream session. To retrieve stored log files, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html">GetStreamSession</a> and get the <code>LogFileLocationUri</code>.</p>
    #   @return [Array<String>]
    # @!attribute application_log_output_uri
    #   <p>An Amazon S3 URI to a bucket where you would like Amazon GameLift Streams to save application logs. Required if you specify one or more <code>ApplicationLogPaths</code>.</p> <note> <p>The log bucket must have permissions that give Amazon GameLift Streams access to write the log files. For more information, see <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/applications.html#application-bucket-permission-template">Application log bucket permission policy</a> in the <i>Amazon GameLift Streams Developer Guide</i>.</p> </note>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of labels to assign to the new application resource. Tags are developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource management, access management and cost allocation. See <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the <i>Amazon Web Services General Reference</i>. You can use <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TagResource.html">TagResource</a> to add tags, <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UntagResource.html">UntagResource</a> to remove tags, and <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListTagsForResource.html">ListTagsForResource</a> to view tags on existing resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p> A unique identifier that represents a client request. The request is idempotent, which ensures that an API request completes only once. When users send a request, Amazon GameLift Streams automatically populates this field. </p>
    #   @return [String]
    class CreateApplicationInput < Struct.new(
      nil,
      :description,
      :runtime_environment,
      :executable_path,
      :application_source_uri,
      :application_log_paths,
      :application_log_output_uri,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that's assigned to an application resource and uniquely identifies it across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:application/[resource ID]</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable label for the application. You can edit this value. </p>
    #   @return [String]
    # @!attribute runtime_environment
    #   <p> Configuration settings that identify the operating system for an application resource. This can also include a compatibility layer and other drivers. </p> <p>A runtime environment can be one of the following:</p> <ul> <li> <p> For Linux applications </p> <ul> <li> <p> Ubuntu 22.04 LTS (<code>Type=UBUNTU, Version=22_04_LTS</code>) </p> </li> </ul> </li> <li> <p> For Windows applications </p> <ul> <li> <p>Microsoft Windows Server 2022 Base (<code>Type=WINDOWS, Version=2022</code>)</p> </li> <li> <p>Proton 10.0-4 (<code>Type=PROTON, Version=20260204</code>)</p> </li> <li> <p>Proton 9.0-2 (<code>Type=PROTON, Version=20250516</code>)</p> </li> <li> <p>Proton 8.0-5 (<code>Type=PROTON, Version=20241007</code>)</p> </li> <li> <p>Proton 8.0-2c (<code>Type=PROTON, Version=20230704</code>)</p> </li> </ul> </li> </ul>
    #   @return [Types::RuntimeEnvironment]
    # @!attribute executable_path
    #   <p>The relative path and file name of the executable file that launches the content for streaming.</p>
    #   @return [String]
    # @!attribute application_log_paths
    #   <p>Locations of log files that your content generates during a stream session. Amazon GameLift Streams uploads log files to the Amazon S3 bucket that you specify in <code>ApplicationLogOutputUri</code> at the end of a stream session. To retrieve stored log files, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html">GetStreamSession</a> and get the <code>LogFileLocationUri</code>.</p>
    #   @return [Array<String>]
    # @!attribute application_log_output_uri
    #   <p>An Amazon S3 URI to a bucket where you would like Amazon GameLift Streams to save application logs. Required if you specify one or more <code>ApplicationLogPaths</code>.</p>
    #   @return [String]
    # @!attribute application_source_uri
    #   <p>The original Amazon S3 location of uploaded stream content for the application.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique ID value that is assigned to the resource when it's created. Format example: <code>a-9ZY8X7Wv6</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the application resource. Possible statuses include the following:</p> <ul> <li> <p> <code>INITIALIZED</code>: Amazon GameLift Streams has received the request and is initiating the work flow to create an application. </p> </li> <li> <p> <code>PROCESSING</code>: The create application work flow is in process. Amazon GameLift Streams is copying the content and caching for future deployment in a stream group.</p> </li> <li> <p> <code>READY</code>: The application is ready to deploy in a stream group.</p> </li> <li> <p> <code>ERROR</code>: An error occurred when setting up the application. See <code>StatusReason</code> for more information.</p> </li> <li> <p> <code>DELETING</code>: Amazon GameLift Streams is in the process of deleting the application.</p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A short description of the status reason when the application is in <code>ERROR</code> status.</p>
    #   @return [String]
    # @!attribute replication_statuses
    #   <p>A set of replication statuses for each location.</p>
    #   @return [Array<Types::ReplicationStatus>]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute associated_stream_groups
    #   <p>A newly created application is not associated to any stream groups. This value is empty.</p>
    #   @return [Array<String>]
    class CreateApplicationOutput < Struct.new(
      nil,
      :arn,
      :description,
      :runtime_environment,
      :executable_path,
      :application_log_paths,
      :application_log_output_uri,
      :application_source_uri,
      :id,
      :status,
      :status_reason,
      :replication_statuses,
      :created_at,
      :last_updated_at,
      :associated_stream_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A descriptive label for the stream group.</p>
    #   @return [String]
    # @!attribute stream_class
    #   <p>The target stream quality for sessions that are hosted in this stream group. Set a stream class that is appropriate to the type of content that you're streaming. Stream class determines the type of computing resources Amazon GameLift Streams uses and impacts the cost of streaming. The following options are available: </p> <p>A stream class can be one of the following:</p> <ul> <li> <p> <b> <code>gen6n_pro_win2022</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 64 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_pro</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 64 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_ultra_win2022</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_ultra</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_medium</code> (NVIDIA, medium)</b> Supports applications with moderate 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 2 vCPUs, 8 GB RAM, 6 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 4 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_small</code> (NVIDIA, small)</b> Supports applications with lightweight 3D scene complexity and low CPU usage. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 1 vCPUs, 4 GB RAM, 2 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 12 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_medium_win2022</code> (NVIDIA, medium)</b> Supports applications with low 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 6 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_small_win2022</code> (NVIDIA, small)</b> Supports applications with low 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 2 vCPUs, 8 GB RAM, 3 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6e_pro_win2022</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L40S Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 128 GB RAM, 48 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6e_pro</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Powered by NVIDIA L40S Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 128 GB RAM, 48 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_ultra</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 8 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_ultra</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute default_application_identifier
    #   <p>The unique identifier of the Amazon GameLift Streams application that you want to set as the default application in a stream group. The application that you specify must be in <code>READY</code> status. The default application is pre-cached on always-on compute resources, reducing stream startup times. Other applications are automatically cached as needed.</p> <p>If you do not link an application when you create a stream group, you will need to link one later, before you can start streaming, using <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_AssociateApplications.html">AssociateApplications</a>.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute location_configurations
    #   <p> A set of one or more locations and the streaming capacity for each location. </p>
    #   @return [Array<Types::LocationConfiguration>]
    # @!attribute tags
    #   <p>A list of labels to assign to the new stream group resource. Tags are developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource management, access management and cost allocation. See <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the <i>Amazon Web Services General Reference</i>. You can use <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TagResource.html">TagResource</a> to add tags, <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UntagResource.html">UntagResource</a> to remove tags, and <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListTagsForResource.html">ListTagsForResource</a> to view tags on existing resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p> A unique identifier that represents a client request. The request is idempotent, which ensures that an API request completes only once. When users send a request, Amazon GameLift Streams automatically populates this field. </p>
    #   @return [String]
    class CreateStreamGroupInput < Struct.new(
      nil,
      :description,
      :stream_class,
      :default_application_identifier,
      :location_configurations,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that is assigned to the stream group resource and that uniquely identifies the group across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:streamgroup/[resource ID]</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A descriptive label for the stream group.</p>
    #   @return [String]
    # @!attribute default_application
    #   <p>The default Amazon GameLift Streams application that is associated with this stream group.</p>
    #   @return [Types::DefaultApplication]
    # @!attribute location_states
    #   <p>This value is the set of locations, including their name, current status, and capacities. </p> <p>A location can be in one of the following states:</p> <ul> <li> <p> <code>ACTIVATING</code>: Amazon GameLift Streams is preparing the location. You cannot stream from, scale the capacity of, or remove this location yet.</p> </li> <li> <p> <code>ACTIVE</code>: The location is provisioned with initial capacity. You can now stream from, scale the capacity of, or remove this location.</p> </li> <li> <p> <code>ERROR</code>: Amazon GameLift Streams failed to set up this location. The <code>StatusReason</code> field describes the error. You can remove this location and try to add it again.</p> </li> <li> <p> <code>REMOVING</code>: Amazon GameLift Streams is working to remove this location. This will release all provisioned capacity for this location in this stream group.</p> </li> </ul>
    #   @return [Array<Types::LocationState>]
    # @!attribute stream_class
    #   <p>The target stream quality for the stream group.</p> <p>A stream class can be one of the following:</p> <ul> <li> <p> <b> <code>gen6n_pro_win2022</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 64 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_pro</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 64 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_ultra_win2022</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_ultra</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_medium</code> (NVIDIA, medium)</b> Supports applications with moderate 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 2 vCPUs, 8 GB RAM, 6 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 4 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_small</code> (NVIDIA, small)</b> Supports applications with lightweight 3D scene complexity and low CPU usage. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 1 vCPUs, 4 GB RAM, 2 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 12 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_medium_win2022</code> (NVIDIA, medium)</b> Supports applications with low 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 6 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_small_win2022</code> (NVIDIA, small)</b> Supports applications with low 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 2 vCPUs, 8 GB RAM, 3 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6e_pro_win2022</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L40S Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 128 GB RAM, 48 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6e_pro</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Powered by NVIDIA L40S Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 128 GB RAM, 48 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_ultra</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 8 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_ultra</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique ID value that is assigned to the resource when it's created. Format example: <code>sg-1AB2C3De4</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the stream group resource. Possible statuses include the following:</p> <ul> <li> <p> <code>ACTIVATING</code>: The stream group is deploying and isn't ready to host streams. </p> </li> <li> <p> <code>ACTIVE</code>: The stream group is ready to host streams. </p> </li> <li> <p> <code>ACTIVE_WITH_ERRORS</code>: One or more locations in the stream group are in an error state. Verify the details of individual locations and remove any locations which are in error. </p> </li> <li> <p> <code>DELETING</code>: Amazon GameLift Streams is in the process of deleting the stream group. </p> </li> <li> <p> <code>ERROR</code>: An error occurred when the stream group deployed. See <code>StatusReason</code> (returned by <code>CreateStreamGroup</code>, <code>GetStreamGroup</code>, and <code>UpdateStreamGroup</code>) for more information. </p> </li> <li> <p> <code>EXPIRED</code>: The stream group is expired and can no longer host streams. This typically occurs when a stream group is 365 days old, as indicated by the value of <code>ExpiresAt</code>. Create a new stream group to resume streaming capabilities. </p> </li> <li> <p> <code>UPDATING_LOCATIONS</code>: One or more locations in the stream group are in the process of updating (either activating or deleting). </p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p> A short description of the reason that the stream group is in <code>ERROR</code> status. The possible reasons can be one of the following: </p> <ul> <li> <p> <code>internalError</code>: The request can't process right now because of an issue with the server. Try again later.</p> </li> <li> <p> <code>noAvailableInstances</code>: Amazon GameLift Streams does not currently have enough available capacity to fulfill your request. Wait a few minutes and retry the request as capacity can shift frequently. You can also try to make the request using a different stream class or in another region.</p> </li> </ul>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The time at which this stream group expires. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC). After this time, you will no longer be able to update this stream group or use it to start stream sessions. Only Get and Delete operations will work on an expired stream group.</p>
    #   @return [Time]
    # @!attribute associated_applications
    #   <p> A set of applications that this stream group is associated to. You can stream any of these applications by using this stream group. </p> <p>This value is a set of <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARNs)</a> that uniquely identify application resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [Array<String>]
    class CreateStreamGroupOutput < Struct.new(
      nil,
      :arn,
      :description,
      :default_application,
      :location_states,
      :stream_class,
      :id,
      :status,
      :status_reason,
      :last_updated_at,
      :created_at,
      :expires_at,
      :associated_applications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The stream group that runs this stream session.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute stream_session_identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream session resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567</code>. Example ID: <code>ABC123def4567</code>. </p>
    #   @return [String]
    class CreateStreamSessionAdminShellInput < Struct.new(
      nil,
      :identifier,
      :stream_session_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>An Amazon Web Services Systems Manager session identifier that uniquely identifies the requested terminal session. Use this value with the Amazon Web Services Systems Manager Session Manager plugin.</p>
    #   @return [String]
    # @!attribute stream_url
    #   <p>An Amazon Web Services Systems Manager WebSocket connection endpoint for the requested terminal session.</p>
    #   @return [String]
    # @!attribute token_value
    #   <p>An Amazon Web Services Systems Manager authentication token that authenticates your access to the session ID and WebSocket URL. This token must be treated with the same level of security as other user credentials. The token value is only valid for establishing a new connection within 60 seconds of generation.</p>
    #   @return [String]
    class CreateStreamSessionAdminShellOutput < Struct.new(
      nil,
      :session_id,
      :stream_url,
      :token_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p> A unique identifier that represents a client request. The request is idempotent, which ensures that an API request completes only once. When users send a request, Amazon GameLift Streams automatically populates this field. </p>
    #   @return [String]
    # @!attribute identifier
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p> <p> The stream group that you want to run this stream session with. The stream group must be in <code>ACTIVE</code> status. </p>
    #   @return [String]
    # @!attribute stream_session_identifier
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream session resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567</code>. Example ID: <code>ABC123def4567</code>. </p> <p> The stream session must be in <code>PENDING_CLIENT_RECONNECTION</code> or <code>ACTIVE</code> status. </p>
    #   @return [String]
    # @!attribute signal_request
    #   <p>A WebRTC ICE offer string to use when initializing a WebRTC connection. The offer is a very long JSON string. Provide the string as a text value in quotes. The offer must be newly generated, not the same offer provided to <code>StartStreamSession</code>. </p>
    #   @return [String]
    class CreateStreamSessionConnectionInput < Struct.new(
      nil,
      :client_token,
      :identifier,
      :stream_session_identifier,
      :signal_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute signal_response
    #   <p>The WebRTC answer string that the stream server generates in response to the <code>SignalRequest</code>. </p>
    #   @return [String]
    class CreateStreamSessionConnectionOutput < Struct.new(
      nil,
      :signal_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p> <p>The stream session runs in this stream group.</p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p> <p>This application must be associated with the stream group.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The data transport protocol for the stream session. Amazon GameLift Streams supports <code>WebRTC</code>.</p>
    #   @return [String]
    # @!attribute url_expires_after_minutes
    #   <p>The number of minutes after creation that the stream URL remains valid. After this period, the status of the stream URL changes to <code>EXPIRED</code> and it can no longer start stream sessions. The minimum is 1 minute. For the maximum, see <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute usage_limit
    #   <p>The maximum number of times the stream URL can start a stream session. Each successful use reduces the remaining uses by one. The minimum is 1, and the default is 1. For the maximum, see <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A descriptive label for the stream URL.</p>
    #   @return [String]
    # @!attribute locations
    #   <p>A list of locations, in order of preference, where Amazon GameLift Streams can place the stream session. Specify each location by its Amazon Web Services Region code, for example <code>us-east-1</code>. For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    #   @return [Array<String>]
    # @!attribute session_length_seconds
    #   <p>The maximum length of time, in seconds, that a stream session started from this stream URL can run. Valid values are 1-86400 seconds (1 second to 24 hours). The default is 43200 seconds (12 hours).</p>
    #   @return [Integer]
    # @!attribute additional_launch_args
    #   <p>A list of CLI arguments that are sent to the streaming server when a stream session launches. You can use this to configure the application or stream session details. You can also provide custom arguments that Amazon GameLift Streams passes to your game client.</p> <p> <code>AdditionalEnvironmentVariables</code> and <code>AdditionalLaunchArgs</code> have similar purposes. <code>AdditionalEnvironmentVariables</code> passes data using environment variables; while <code>AdditionalLaunchArgs</code> passes data using command-line arguments.</p>
    #   @return [Array<String>]
    # @!attribute additional_environment_variables
    #   <p>A set of options that you can use to control the stream session runtime environment, expressed as a set of key-value pairs. You can use this to configure the application or stream session details. You can also provide custom environment variables that Amazon GameLift Streams passes to your game client.</p> <note> <p>If you want to debug your application with environment variables, we recommend that you do so in a local environment outside of Amazon GameLift Streams. For more information, refer to the Compatibility Guidance in the troubleshooting section of the Developer Guide.</p> </note> <p> <code>AdditionalEnvironmentVariables</code> and <code>AdditionalLaunchArgs</code> have similar purposes. <code>AdditionalEnvironmentVariables</code> passes data using environment variables; while <code>AdditionalLaunchArgs</code> passes data using command-line arguments.</p>
    #   @return [Hash<String, String>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Amazon GameLift Streams assumes during stream sessions started from this stream URL. For more information, see <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/session-credentials.html">Provide AWS credentials to your streaming application</a> in the <i>Amazon GameLift Streams Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute display_configuration
    #   <p>The display settings, such as resolution, for stream sessions started from this stream URL.</p>
    #   @return [Types::DisplayConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure this request is idempotent. If you retry a request with the same <code>ClientToken</code>, Amazon GameLift Streams returns the original response without performing the operation again.</p>
    #   @return [String]
    class CreateStreamUrlInput < Struct.new(
      nil,
      :identifier,
      :application_identifier,
      :protocol,
      :url_expires_after_minutes,
      :usage_limit,
      :description,
      :locations,
      :session_length_seconds,
      :additional_launch_args,
      :additional_environment_variables,
      :role_arn,
      :display_configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the stream URL across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:streamurl/[stream group resource ID]/[stream URL resource ID]</code>.</p>
    #   @return [String]
    # @!attribute stream_url_id
    #   <p>The unique identifier for the stream URL resource, for example <code>su-1AB2C3De4</code>.</p>
    #   @return [String]
    # @!attribute stream_url
    #   <p>The shareable stream URL. Distribute this URL to end users so that they can start and play a stream session in a hosted web player. Treat the stream URL as a secret. Anyone who has it can start a stream session until the stream URL expires, is revoked, or reaches its usage limit.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the stream URL. Possible statuses include the following:</p> <ul> <li> <p> <code>ACTIVE</code>: The stream URL is valid and can start stream sessions.</p> </li> <li> <p> <code>EXPIRED</code>: The stream URL has passed its expiration time and can no longer start stream sessions.</p> </li> <li> <p> <code>REVOKED</code>: The stream URL was revoked and can no longer start stream sessions.</p> </li> <li> <p> <code>LIMIT_REACHED</code>: The stream URL has been used the maximum number of times and can no longer start stream sessions.</p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information about why the stream URL is in its current status. Amazon GameLift Streams populates this value when the status is <code>REVOKED</code>. Possible values include the following:</p> <ul> <li> <p> <code>userRevoked</code>: You revoked the stream URL.</p> </li> <li> <p> <code>revokedAndTerminatingSessions</code>: You revoked the stream URL and Amazon GameLift Streams is ending its running stream sessions.</p> </li> <li> <p> <code>revokedAndSessionsTerminated</code>: You revoked the stream URL and its running stream sessions have ended.</p> </li> <li> <p> <code>streamGroupDeleted</code>: The stream group was deleted, which revoked the stream URL.</p> </li> <li> <p> <code>applicationDeleted</code>: The application was deleted, which revoked the stream URL.</p> </li> </ul>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The date and time when the stream URL expires and stops accepting new stream sessions. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute usage_limit
    #   <p>The maximum number of times the stream URL can start a stream session.</p>
    #   @return [Integer]
    # @!attribute remaining_uses
    #   <p>The number of times the stream URL can still be used to start a stream session.</p>
    #   @return [Integer]
    # @!attribute stream_group_arn
    #   <p>The stream group that runs the stream sessions.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The application that runs in the stream sessions.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The data transport protocol used for stream sessions started from this stream URL.</p>
    #   @return [String]
    # @!attribute locations
    #   <p>The list of locations, in order of preference, where Amazon GameLift Streams places the stream session. For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    #   @return [Array<String>]
    # @!attribute session_length_seconds
    #   <p>The maximum length of time, in seconds, that a stream session started from this stream URL can run.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The descriptive label for the stream URL.</p>
    #   @return [String]
    # @!attribute additional_launch_args
    #   <p>The command-line arguments passed to the application when a stream session starts.</p>
    #   @return [Array<String>]
    # @!attribute additional_environment_variables
    #   <p>The environment variables made available to the application when a stream session starts.</p>
    #   @return [Hash<String, String>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Amazon GameLift Streams assumes during stream sessions started from this stream URL. For more information, see <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/session-credentials.html">Provide AWS credentials to your streaming application</a> in the <i>Amazon GameLift Streams Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute display_configuration
    #   <p>The display settings, such as resolution, for stream sessions started from this stream URL.</p>
    #   @return [Types::DisplayConfiguration]
    class CreateStreamUrlOutput < Struct.new(
      nil,
      :arn,
      :stream_url_id,
      :stream_url,
      :status,
      :status_reason,
      :expires_at,
      :created_at,
      :usage_limit,
      :remaining_uses,
      :stream_group_arn,
      :application_arn,
      :protocol,
      :locations,
      :session_length_seconds,
      :description,
      :additional_launch_args,
      :additional_environment_variables,
      :role_arn,
      :display_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the default Amazon GameLift Streams application that a stream group hosts.</p>
    # @!attribute id
    #   <p>An ID that uniquely identifies the application resource. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    class DefaultApplication < Struct.new(
      nil,
      :id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    class DeleteApplicationInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    class DeleteStreamGroupInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>A stream group to disassociate these applications from.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute application_identifiers
    #   <p>A set of applications that you want to disassociate from the stream group.</p> <p>This value is a set of either <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARN)</a> or IDs that uniquely identify application resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    #   @return [Array<String>]
    class DisassociateApplicationsInput < Struct.new(
      nil,
      :identifier,
      :application_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute application_arns
    #   <p>A set of applications that are disassociated from this stream group.</p> <p>This value is a set of <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARNs)</a> that uniquely identify application resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [Array<String>]
    class DisassociateApplicationsOutput < Struct.new(
      nil,
      :arn,
      :application_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The virtual monitor settings for a stream session, including the resolution. If not specified, the stream session uses the default resolution of 1920 × 1080.</p>
    # @!attribute resolution
    #   <p>The resolution to apply to the stream session's virtual monitor. When specified, this value overrides the default resolution of 1920 × 1080.</p>
    #   @return [Types::Resolution]
    class DisplayConfiguration < Struct.new(
      nil,
      :resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details about the stream session's exported files. </p>
    # @!attribute status
    #   <p>The result of the <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ExportStreamSessionFiles.html">ExportStreamSessionFiles</a> operation.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A short description of the reason the export is in <code>FAILED</code> status.</p>
    #   @return [String]
    # @!attribute output_uri
    #   <p> The S3 bucket URI where Amazon GameLift Streams uploaded the set of compressed exported files for a stream session. Amazon GameLift Streams generates a ZIP file name based on the stream session metadata. Alternatively, you can provide a custom file name with a <code>.zip</code> file extension.</p> <p> Example 1: If you provide an S3 URI called <code>s3://amzn-s3-demo-destination-bucket/MyGame_Session1.zip</code>, then Amazon GameLift Streams will save the files at that location. </p> <p> Example 2: If you provide an S3 URI called <code>s3://amzn-s3-demo-destination-bucket/MyGameSessions_ExportedFiles/</code>, then Amazon GameLift Streams will save the files at <code>s3://amzn-s3-demo-destination-bucket/MyGameSessions_ExportedFiles/YYYYMMDD-HHMMSS-appId-sg-Id-sessionId.zip</code> or another similar name. </p>
    #   @return [String]
    class ExportFilesMetadata < Struct.new(
      nil,
      :status,
      :status_reason,
      :output_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute stream_session_identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream session resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567</code>. Example ID: <code>ABC123def4567</code>. </p>
    #   @return [String]
    # @!attribute output_uri
    #   <p> The S3 bucket URI where Amazon GameLift Streams uploads the set of compressed exported files for this stream session. Amazon GameLift Streams generates a ZIP file name based on the stream session metadata. Alternatively, you can provide a custom file name with a <code>.zip</code> file extension.</p> <p> Example 1: If you provide an S3 URI called <code>s3://amzn-s3-demo-destination-bucket/MyGame_Session1.zip</code>, then Amazon GameLift Streams will save the files at that location. </p> <p> Example 2: If you provide an S3 URI called <code>s3://amzn-s3-demo-destination-bucket/MyGameSessions_ExportedFiles/</code>, then Amazon GameLift Streams will save the files at <code>s3://amzn-s3-demo-destination-bucket/MyGameSessions_ExportedFiles/YYYYMMDD-HHMMSS-appId-sg-Id-sessionId.zip</code> or another similar name. </p>
    #   @return [String]
    class ExportStreamSessionFilesInput < Struct.new(
      nil,
      :identifier,
      :stream_session_identifier,
      :output_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ExportStreamSessionFilesOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    class GetApplicationInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that's assigned to an application resource and uniquely identifies it across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:application/[resource ID]</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable label for the application. You can edit this value. </p>
    #   @return [String]
    # @!attribute runtime_environment
    #   <p> Configuration settings that identify the operating system for an application resource. This can also include a compatibility layer and other drivers. </p> <p>A runtime environment can be one of the following:</p> <ul> <li> <p> For Linux applications </p> <ul> <li> <p> Ubuntu 22.04 LTS (<code>Type=UBUNTU, Version=22_04_LTS</code>) </p> </li> </ul> </li> <li> <p> For Windows applications </p> <ul> <li> <p>Microsoft Windows Server 2022 Base (<code>Type=WINDOWS, Version=2022</code>)</p> </li> <li> <p>Proton 10.0-4 (<code>Type=PROTON, Version=20260204</code>)</p> </li> <li> <p>Proton 9.0-2 (<code>Type=PROTON, Version=20250516</code>)</p> </li> <li> <p>Proton 8.0-5 (<code>Type=PROTON, Version=20241007</code>)</p> </li> <li> <p>Proton 8.0-2c (<code>Type=PROTON, Version=20230704</code>)</p> </li> </ul> </li> </ul>
    #   @return [Types::RuntimeEnvironment]
    # @!attribute executable_path
    #   <p>The relative path and file name of the executable file that launches the content for streaming.</p>
    #   @return [String]
    # @!attribute application_log_paths
    #   <p>Locations of log files that your content generates during a stream session. Amazon GameLift Streams uploads log files to the Amazon S3 bucket that you specify in <code>ApplicationLogOutputUri</code> at the end of a stream session. To retrieve stored log files, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html">GetStreamSession</a> and get the <code>LogFileLocationUri</code>.</p>
    #   @return [Array<String>]
    # @!attribute application_log_output_uri
    #   <p>An Amazon S3 URI to a bucket where you would like Amazon GameLift Streams to save application logs. Required if you specify one or more <code>ApplicationLogPaths</code>.</p>
    #   @return [String]
    # @!attribute application_source_uri
    #   <p>The original Amazon S3 location of uploaded stream content for the application.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique ID value that is assigned to the resource when it's created. Format example: <code>a-9ZY8X7Wv6</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the application resource. Possible statuses include the following:</p> <ul> <li> <p> <code>INITIALIZED</code>: Amazon GameLift Streams has received the request and is initiating the work flow to create an application. </p> </li> <li> <p> <code>PROCESSING</code>: The create application work flow is in process. Amazon GameLift Streams is copying the content and caching for future deployment in a stream group.</p> </li> <li> <p> <code>READY</code>: The application is ready to deploy in a stream group.</p> </li> <li> <p> <code>ERROR</code>: An error occurred when setting up the application. See <code>StatusReason</code> for more information.</p> </li> <li> <p> <code>DELETING</code>: Amazon GameLift Streams is in the process of deleting the application.</p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A short description of the status reason when the application is in <code>ERROR</code> status.</p>
    #   @return [String]
    # @!attribute replication_statuses
    #   <p>A set of replication statuses for each location.</p>
    #   @return [Array<Types::ReplicationStatus>]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute associated_stream_groups
    #   <p> A set of stream groups that this application is associated with. You can use any of these stream groups to stream your application. </p> <p>This value is a set of <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARNs)</a> that uniquely identify stream group resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. </p>
    #   @return [Array<String>]
    class GetApplicationOutput < Struct.new(
      nil,
      :arn,
      :description,
      :runtime_environment,
      :executable_path,
      :application_log_paths,
      :application_log_output_uri,
      :application_source_uri,
      :id,
      :status,
      :status_reason,
      :replication_statuses,
      :created_at,
      :last_updated_at,
      :associated_stream_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    class GetStreamGroupInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that is assigned to the stream group resource and that uniquely identifies the group across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:streamgroup/[resource ID]</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A descriptive label for the stream group.</p>
    #   @return [String]
    # @!attribute default_application
    #   <p>The default Amazon GameLift Streams application that is associated with this stream group.</p>
    #   @return [Types::DefaultApplication]
    # @!attribute location_states
    #   <p>This value is the set of locations, including their name, current status, and capacities. </p> <p>A location can be in one of the following states:</p> <ul> <li> <p> <code>ACTIVATING</code>: Amazon GameLift Streams is preparing the location. You cannot stream from, scale the capacity of, or remove this location yet.</p> </li> <li> <p> <code>ACTIVE</code>: The location is provisioned with initial capacity. You can now stream from, scale the capacity of, or remove this location.</p> </li> <li> <p> <code>ERROR</code>: Amazon GameLift Streams failed to set up this location. The <code>StatusReason</code> field describes the error. You can remove this location and try to add it again.</p> </li> <li> <p> <code>REMOVING</code>: Amazon GameLift Streams is working to remove this location. This will release all provisioned capacity for this location in this stream group.</p> </li> </ul>
    #   @return [Array<Types::LocationState>]
    # @!attribute stream_class
    #   <p>The target stream quality for the stream group.</p> <p>A stream class can be one of the following:</p> <ul> <li> <p> <b> <code>gen6n_pro_win2022</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 64 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_pro</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 64 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_ultra_win2022</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_ultra</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_medium</code> (NVIDIA, medium)</b> Supports applications with moderate 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 2 vCPUs, 8 GB RAM, 6 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 4 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_small</code> (NVIDIA, small)</b> Supports applications with lightweight 3D scene complexity and low CPU usage. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 1 vCPUs, 4 GB RAM, 2 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 12 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_medium_win2022</code> (NVIDIA, medium)</b> Supports applications with low 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 6 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_small_win2022</code> (NVIDIA, small)</b> Supports applications with low 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 2 vCPUs, 8 GB RAM, 3 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6e_pro_win2022</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L40S Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 128 GB RAM, 48 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6e_pro</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Powered by NVIDIA L40S Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 128 GB RAM, 48 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_ultra</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 8 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_ultra</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique ID value that is assigned to the resource when it's created. Format example: <code>sg-1AB2C3De4</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the stream group resource. Possible statuses include the following:</p> <ul> <li> <p> <code>ACTIVATING</code>: The stream group is deploying and isn't ready to host streams. </p> </li> <li> <p> <code>ACTIVE</code>: The stream group is ready to host streams. </p> </li> <li> <p> <code>ACTIVE_WITH_ERRORS</code>: One or more locations in the stream group are in an error state. Verify the details of individual locations and remove any locations which are in error. </p> </li> <li> <p> <code>DELETING</code>: Amazon GameLift Streams is in the process of deleting the stream group. </p> </li> <li> <p> <code>ERROR</code>: An error occurred when the stream group deployed. See <code>StatusReason</code> (returned by <code>CreateStreamGroup</code>, <code>GetStreamGroup</code>, and <code>UpdateStreamGroup</code>) for more information. </p> </li> <li> <p> <code>EXPIRED</code>: The stream group is expired and can no longer host streams. This typically occurs when a stream group is 365 days old, as indicated by the value of <code>ExpiresAt</code>. Create a new stream group to resume streaming capabilities. </p> </li> <li> <p> <code>UPDATING_LOCATIONS</code>: One or more locations in the stream group are in the process of updating (either activating or deleting). </p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p> A short description of the reason that the stream group is in <code>ERROR</code> status. The possible reasons can be one of the following: </p> <ul> <li> <p> <code>internalError</code>: The request can't process right now because of an issue with the server. Try again later.</p> </li> <li> <p> <code>noAvailableInstances</code>: Amazon GameLift Streams does not currently have enough available capacity to fulfill your request. Wait a few minutes and retry the request as capacity can shift frequently. You can also try to make the request using a different stream class or in another region.</p> </li> </ul>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The time at which this stream group expires. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC). After this time, you will no longer be able to update this stream group or use it to start stream sessions. Only Get and Delete operations will work on an expired stream group.</p>
    #   @return [Time]
    # @!attribute associated_applications
    #   <p> A set of applications that this stream group is associated to. You can stream any of these applications by using this stream group. </p> <p>This value is a set of <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARNs)</a> that uniquely identify application resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [Array<String>]
    class GetStreamGroupOutput < Struct.new(
      nil,
      :arn,
      :description,
      :default_application,
      :location_states,
      :stream_class,
      :id,
      :status,
      :status_reason,
      :last_updated_at,
      :created_at,
      :expires_at,
      :associated_applications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The stream group that runs this stream session.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute stream_session_identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream session resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567</code>. Example ID: <code>ABC123def4567</code>. </p>
    #   @return [String]
    class GetStreamSessionInput < Struct.new(
      nil,
      :identifier,
      :stream_session_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that's assigned to a stream session resource. When combined with the stream group resource ID, this value uniquely identifies the stream session across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:streamsession/[stream group resource ID]/[stream session resource ID]</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable label for the stream session. You can update this value at any time.</p>
    #   @return [String]
    # @!attribute stream_group_id
    #   <p>The unique identifier for the Amazon GameLift Streams stream group that is hosting the stream session. Format example: <code>sg-1AB2C3De4</code>.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p> An opaque, unique identifier for an end-user, defined by the developer. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the stream session. A stream session is ready for a client to connect when in <code>ACTIVE</code> status.</p> <ul> <li> <p> <code>ACTIVATING</code>: The stream session is starting and preparing to stream.</p> </li> <li> <p> <code>ACTIVE</code>: The stream session is ready and waiting for a client connection. A client has <code>ConnectionTimeoutSeconds</code> (specified in <code>StartStreamSession</code>) from when the session reaches <code>ACTIVE</code> state to establish a connection. If no client connects within this timeframe, the session automatically terminates.</p> </li> <li> <p> <code>CONNECTED</code>: The stream session has a connected client. A session will automatically terminate if there is no user input for 60 minutes, or if the maximum length of a session specified by <code>SessionLengthSeconds</code> in <code>StartStreamSession</code> is exceeded.</p> </li> <li> <p> <code>ERROR</code>: The stream session failed to activate. See <code>StatusReason</code> (returned by <code>GetStreamSession</code> and <code>StartStreamSession</code>) for more information.</p> </li> <li> <p> <code>PENDING_CLIENT_RECONNECTION</code>: A client has recently disconnected and the stream session is waiting for the client to reconnect. A client has <code>ConnectionTimeoutSeconds</code> (specified in <code>StartStreamSession</code>) from when the session reaches <code>PENDING_CLIENT_RECONNECTION</code> state to re-establish a connection. If no client connects within this timeframe, the session automatically terminates.</p> </li> <li> <p> <code>RECONNECTING</code>: A client has initiated a reconnect to a session that was in <code>PENDING_CLIENT_RECONNECTION</code> state.</p> </li> <li> <p> <code>TERMINATING</code>: The stream session is ending.</p> </li> <li> <p> <code>TERMINATED</code>: The stream session has ended.</p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A short description of the reason the stream session is in <code>ERROR</code> status or <code>TERMINATED</code> status.</p> <p> <code>ERROR</code> status reasons:</p> <ul> <li> <p> <code>applicationLogS3DestinationError</code>: Could not write the application log to the Amazon S3 bucket that is configured for the streaming application. Make sure the bucket still exists.</p> </li> <li> <p> <code>internalError</code>: An internal service error occurred. Start a new stream session to continue streaming.</p> </li> <li> <p> <code>invalidSignalRequest</code>: The WebRTC signal request that was sent is not valid. When starting or reconnecting to a stream session, use <code>generateSignalRequest</code> in the Amazon GameLift Streams Web SDK to generate a new signal request.</p> </li> <li> <p> <code>placementTimeout</code>: Amazon GameLift Streams could not find available stream capacity to start a stream session. Increase the stream capacity in the stream group or wait until capacity becomes available.</p> </li> </ul> <p> <code>TERMINATED</code> status reasons:</p> <ul> <li> <p> <code>apiTerminated</code>: The stream session was terminated by an API call to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TerminateStreamSession.html">TerminateStreamSession</a>.</p> </li> <li> <p> <code>applicationExit</code>: The streaming application exited or crashed. The stream session was terminated because the application is no longer running.</p> </li> <li> <p> <code>connectionTimeout</code>: The stream session was terminated because the client failed to connect within the connection timeout period specified by <code>ConnectionTimeoutSeconds</code>.</p> </li> <li> <p> <code>maxSessionLengthTimeout</code>: The stream session was terminated because it exceeded the maximum session length timeout period specified by <code>SessionLengthSeconds</code>.</p> </li> <li> <p> <code>reconnectionTimeout</code>: The stream session was terminated because the client failed to reconnect within the reconnection timeout period specified by <code>ConnectionTimeoutSeconds</code> after losing connection.</p> </li> </ul>
    #   @return [String]
    # @!attribute protocol
    #   <p>The data transfer protocol in use with the stream session.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location where Amazon GameLift Streams hosts and streams your application. For example, <code>us-east-1</code>. For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    #   @return [String]
    # @!attribute signal_request
    #   <p>The WebRTC ICE offer string that a client generates to initiate a connection to the stream session.</p>
    #   @return [String]
    # @!attribute signal_response
    #   <p>The WebRTC answer string that the stream server generates in response to the <code>SignalRequest</code>.</p>
    #   @return [String]
    # @!attribute connection_timeout_seconds
    #   <p>The length of time that Amazon GameLift Streams should wait for a client to connect or reconnect to the stream session. This time span starts when the stream session reaches <code>ACTIVE</code> or <code>PENDING_CLIENT_RECONNECTION</code> state. If no client connects (or reconnects) before the timeout, Amazon GameLift Streams terminates the stream session.</p>
    #   @return [Integer]
    # @!attribute session_length_seconds
    #   <p>The maximum duration of a session. Amazon GameLift Streams will automatically terminate a session after this amount of time has elapsed, regardless of any existing client connections.</p>
    #   @return [Integer]
    # @!attribute additional_launch_args
    #   <p>A list of CLI arguments that are sent to the streaming server when a stream session launches. You can use this to configure the application or stream session details. You can also provide custom arguments that Amazon GameLift Streams passes to your game client.</p> <p> <code>AdditionalEnvironmentVariables</code> and <code>AdditionalLaunchArgs</code> have similar purposes. <code>AdditionalEnvironmentVariables</code> passes data using environment variables; while <code>AdditionalLaunchArgs</code> passes data using command-line arguments.</p>
    #   @return [Array<String>]
    # @!attribute additional_environment_variables
    #   <p>A set of options that you can use to control the stream session runtime environment, expressed as a set of key-value pairs. You can use this to configure the application or stream session details. You can also provide custom environment variables that Amazon GameLift Streams passes to your game client.</p> <note> <p>If you want to debug your application with environment variables, we recommend that you do so in a local environment outside of Amazon GameLift Streams. For more information, refer to the Compatibility Guidance in the troubleshooting section of the Developer Guide.</p> </note> <p> <code>AdditionalEnvironmentVariables</code> and <code>AdditionalLaunchArgs</code> have similar purposes. <code>AdditionalEnvironmentVariables</code> passes data using environment variables; while <code>AdditionalLaunchArgs</code> passes data using command-line arguments.</p>
    #   @return [Hash<String, String>]
    # @!attribute performance_stats_configuration
    #   <p>The performance stats configuration for the stream session</p>
    #   @return [Types::PerformanceStatsConfiguration]
    # @!attribute log_file_location_uri
    #   <p>Access location for log files that your content generates during a stream session. These log files are uploaded to cloud storage location at the end of a stream session. The Amazon GameLift Streams application resource defines which log files to upload.</p>
    #   @return [String]
    # @!attribute web_sdk_protocol_url
    #   <p>The URL of an S3 bucket that stores Amazon GameLift Streams WebSDK files. The URL is used to establish connection with the client.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute application_arn
    #   <p>The application streaming in this session.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute export_files_metadata
    #   <p>Provides details about the stream session's exported files. </p>
    #   @return [Types::ExportFilesMetadata]
    # @!attribute role_arn
    #   <p>The ARN of the AWS Identity and Access Management (IAM) role that Amazon GameLift Streams assumes on behalf of your application during the stream session.</p>
    #   @return [String]
    # @!attribute display_configuration
    #   <p>The configuration for the stream session's virtual monitor.</p>
    #   @return [Types::DisplayConfiguration]
    class GetStreamSessionOutput < Struct.new(
      nil,
      :arn,
      :description,
      :stream_group_id,
      :user_id,
      :status,
      :status_reason,
      :protocol,
      :location,
      :signal_request,
      :signal_response,
      :connection_timeout_seconds,
      :session_length_seconds,
      :additional_launch_args,
      :additional_environment_variables,
      :performance_stats_configuration,
      :log_file_location_uri,
      :web_sdk_protocol_url,
      :last_updated_at,
      :created_at,
      :application_arn,
      :export_files_metadata,
      :role_arn,
      :display_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p> <p>This is the stream group that owns the stream URL.</p>
    #   @return [String]
    # @!attribute stream_url_identifier
    #   <p>The unique identifier of the stream URL. Specify a stream URL ID or Amazon Resource Name (ARN). Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamurl/sg-1AB2C3De4/su-1AB2C3De4</code>. Example ID: <code>su-1AB2C3De4</code>.</p>
    #   @return [String]
    class GetStreamUrlInput < Struct.new(
      nil,
      :identifier,
      :stream_url_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the stream URL across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:streamurl/[stream group resource ID]/[stream URL resource ID]</code>.</p>
    #   @return [String]
    # @!attribute stream_url_id
    #   <p>The unique identifier for the stream URL resource, for example <code>su-1AB2C3De4</code>.</p>
    #   @return [String]
    # @!attribute stream_url
    #   <p>The shareable stream URL. Distribute this URL to end users so that they can start and play a stream session in a hosted web player. Treat the stream URL as a secret. Anyone who has it can start a stream session until the stream URL expires, is revoked, or reaches its usage limit.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the stream URL. Possible statuses include the following:</p> <ul> <li> <p> <code>ACTIVE</code>: The stream URL is valid and can start stream sessions.</p> </li> <li> <p> <code>EXPIRED</code>: The stream URL has passed its expiration time and can no longer start stream sessions.</p> </li> <li> <p> <code>REVOKED</code>: The stream URL was revoked and can no longer start stream sessions.</p> </li> <li> <p> <code>LIMIT_REACHED</code>: The stream URL has been used the maximum number of times and can no longer start stream sessions.</p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information about why the stream URL is in its current status. Amazon GameLift Streams populates this value when the status is <code>REVOKED</code>. Possible values include the following:</p> <ul> <li> <p> <code>userRevoked</code>: You revoked the stream URL.</p> </li> <li> <p> <code>revokedAndTerminatingSessions</code>: You revoked the stream URL and Amazon GameLift Streams is ending its running stream sessions.</p> </li> <li> <p> <code>revokedAndSessionsTerminated</code>: You revoked the stream URL and its running stream sessions have ended.</p> </li> <li> <p> <code>streamGroupDeleted</code>: The stream group was deleted, which revoked the stream URL.</p> </li> <li> <p> <code>applicationDeleted</code>: The application was deleted, which revoked the stream URL.</p> </li> </ul>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The date and time when the stream URL expires and stops accepting new stream sessions. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute usage_limit
    #   <p>The maximum number of times the stream URL can start a stream session.</p>
    #   @return [Integer]
    # @!attribute remaining_uses
    #   <p>The number of times the stream URL can still be used to start a stream session.</p>
    #   @return [Integer]
    # @!attribute stream_group_arn
    #   <p>The stream group that runs the stream sessions.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The application that runs in the stream sessions.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The data transport protocol used for stream sessions started from this stream URL.</p>
    #   @return [String]
    # @!attribute locations
    #   <p>The list of locations, in order of preference, where Amazon GameLift Streams places the stream session. For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    #   @return [Array<String>]
    # @!attribute session_length_seconds
    #   <p>The maximum length of time, in seconds, that a stream session started from this stream URL can run.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The descriptive label for the stream URL.</p>
    #   @return [String]
    # @!attribute additional_launch_args
    #   <p>The command-line arguments passed to the application when a stream session starts.</p>
    #   @return [Array<String>]
    # @!attribute additional_environment_variables
    #   <p>The environment variables made available to the application when a stream session starts.</p>
    #   @return [Hash<String, String>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Amazon GameLift Streams assumes during stream sessions started from this stream URL. For more information, see <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/session-credentials.html">Provide AWS credentials to your streaming application</a> in the <i>Amazon GameLift Streams Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute display_configuration
    #   <p>The display settings, such as resolution, for stream sessions started from this stream URL.</p>
    #   @return [Types::DisplayConfiguration]
    # @!attribute stream_sessions
    #   <p>A list of the stream sessions that have been started through this stream URL.</p>
    #   @return [Array<Types::StreamSessionSummary>]
    class GetStreamUrlOutput < Struct.new(
      nil,
      :arn,
      :stream_url_id,
      :stream_url,
      :status,
      :status_reason,
      :expires_at,
      :created_at,
      :usage_limit,
      :remaining_uses,
      :stream_group_arn,
      :application_arn,
      :protocol,
      :locations,
      :session_length_seconds,
      :description,
      :additional_launch_args,
      :additional_environment_variables,
      :role_arn,
      :display_configuration,
      :stream_sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service encountered an internal error and is unable to complete the request.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    class ListApplicationShaderCachesInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A collection of shader cache metadata for the specified Amazon GameLift Streams application. Each item includes the shader cache status, associated stream groups, and storage size.</p>
    #   @return [Array<Types::ShaderCacheSummary>]
    class ListApplicationShaderCachesOutput < Struct.new(
      nil,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that marks the start of the next set of results. Use this token when you retrieve results as sequential pages. To get the first page of results, omit a token value. To get the remaining pages, provide the token returned with the previous result set. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of results to return. Use this parameter with <code>NextToken</code> to return results in sequential pages. Default value is <code>25</code>.</p>
    #   @return [Integer]
    class ListApplicationsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A collection of Amazon GameLift Streams applications that are associated with the Amazon Web Services account in use. Each item includes application metadata and status.</p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>A token that marks the start of the next sequential page of results. If an operation doesn't return a token, you've reached the end of the list. </p>
    #   @return [String]
    class ListApplicationsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that marks the start of the next set of results. Use this token when you retrieve results as sequential pages. To get the first page of results, omit a token value. To get the remaining pages, provide the token returned with the previous result set. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of results to return. Use this parameter with <code>NextToken</code> to return results in sequential pages. Default value is <code>25</code>.</p>
    #   @return [Integer]
    class ListStreamGroupsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A collection of Amazon GameLift Streams stream groups that are associated with the Amazon Web Services account in use. Each item includes stream group metadata and status, but doesn't include capacity information.</p>
    #   @return [Array<Types::StreamGroupSummary>]
    # @!attribute next_token
    #   <p>A token that marks the start of the next sequential page of results. If an operation doesn't return a token, you've reached the end of the list. </p>
    #   @return [String]
    class ListStreamGroupsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Filter by the stream session status. You can specify one status in each request to retrieve only sessions that are currently in that status.</p>
    #   @return [String]
    # @!attribute export_files_status
    #   <p>Filter by the exported files status. You can specify one status in each request to retrieve only sessions that currently have that exported files status.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token that marks the start of the next set of results. Use this token when you retrieve results as sequential pages. To get the first page of results, omit a token value. To get the remaining pages, provide the token returned with the previous result set. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of results to return. Use this parameter with <code>NextToken</code> to return results in sequential pages. Default value is <code>25</code>. </p>
    #   @return [Integer]
    class ListStreamSessionsByAccountInput < Struct.new(
      nil,
      :status,
      :export_files_status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A collection of Amazon GameLift Streams stream sessions that are associated with a stream group and returned in response to a list request. Each item includes stream session metadata and status.</p>
    #   @return [Array<Types::StreamSessionSummary>]
    # @!attribute next_token
    #   <p>A token that marks the start of the next sequential page of results. If an operation doesn't return a token, you've reached the end of the list. </p>
    #   @return [String]
    class ListStreamSessionsByAccountOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Filter by the stream session status. You can specify one status in each request to retrieve only sessions that are currently in that status.</p>
    #   @return [String]
    # @!attribute export_files_status
    #   <p>Filter by the exported files status. You can specify one status in each request to retrieve only sessions that currently have that exported files status.</p> <p> Exported files can be in one of the following states: </p> <ul> <li> <p> <code>SUCCEEDED</code>: The exported files are successfully stored in an S3 bucket.</p> </li> <li> <p> <code>FAILED</code>: The session ended but Amazon GameLift Streams couldn't collect and upload the files to S3.</p> </li> <li> <p> <code>PENDING</code>: Either the stream session is still in progress, or uploading the exported files to the S3 bucket is in progress.</p> </li> </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token that marks the start of the next set of results. Use this token when you retrieve results as sequential pages. To get the first page of results, omit a token value. To get the remaining pages, provide the token returned with the previous result set. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of results to return. Use this parameter with <code>NextToken</code> to return results in sequential pages. Default value is <code>25</code>. </p>
    #   @return [Integer]
    # @!attribute identifier
    #   <p>The unique identifier of a Amazon GameLift Streams stream group to retrieve the stream session for. You can use either the stream group ID or the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a>.</p>
    #   @return [String]
    class ListStreamSessionsInput < Struct.new(
      nil,
      :status,
      :export_files_status,
      :next_token,
      :max_results,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A collection of Amazon GameLift Streams stream sessions that are associated with a stream group and returned in response to a list request. Each item includes stream session metadata and status.</p>
    #   @return [Array<Types::StreamSessionSummary>]
    # @!attribute next_token
    #   <p>A token that marks the start of the next sequential page of results. If an operation doesn't return a token, you've reached the end of the list. </p>
    #   @return [String]
    class ListStreamSessionsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Filters the list to stream URLs with the specified status.</p> <ul> <li> <p> <code>ACTIVE</code>: The stream URL is valid and can start stream sessions.</p> </li> <li> <p> <code>EXPIRED</code>: The stream URL has passed its expiration time and can no longer start stream sessions.</p> </li> <li> <p> <code>REVOKED</code>: The stream URL was revoked and can no longer start stream sessions.</p> </li> <li> <p> <code>LIMIT_REACHED</code>: The stream URL has been used the maximum number of times and can no longer start stream sessions.</p> </li> </ul>
    #   @return [String]
    # @!attribute stream_group_identifier
    #   <p>Filters the list to stream URLs that belong to the specified stream group.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token that marks the start of the next set of results. Use this token when you retrieve results as sequential pages. To get the first page of results, omit a token value. To get the remaining pages, provide the token returned with the previous result set. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. Valid values are 1-100. The default is 25.</p>
    #   @return [Integer]
    class ListStreamUrlsInput < Struct.new(
      nil,
      :status,
      :stream_group_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A collection of stream URL summaries. Each summary includes the identity, status, and usage of the stream URL, but not its full configuration.</p>
    #   @return [Array<Types::StreamUrlSummary>]
    # @!attribute next_token
    #   <p>A token that marks the start of the next sequential page of results. If an operation doesn't return a token, you've reached the end of the list. </p>
    #   @return [String]
    class ListStreamUrlsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that you want to retrieve tags for. To get an Amazon GameLift Streams resource ARN, call a List or Get operation for the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A collection of tags that have been assigned to the specified resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings that define a stream group's stream capacity for a location. When configuring a location for the first time, you must specify a numeric value for at least one of the two capacity types. To update the capacity for an existing stream group, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UpdateStreamGroup.html">UpdateStreamGroup</a>. To add a new location and specify its capacity, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_AddStreamGroupLocations.html">AddStreamGroupLocations</a>.</p>
    # @!attribute location_name
    #   <p> A location's name. For example, <code>us-east-1</code>. For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    #   @return [String]
    # @!attribute always_on_capacity
    #   <p>This setting, if non-zero, indicates minimum streaming capacity which is allocated to you and is never released back to the service. You pay for this base level of capacity at all times, whether used or idle.</p>
    #   @return [Integer]
    # @!attribute on_demand_capacity
    #   <p>This field is deprecated. Use <code>MaximumCapacity</code> instead. This parameter cannot be used with <code>MaximumCapacity</code> or <code>TargetIdleCapacity</code> in the same location configuration.</p> <p>The streaming capacity that Amazon GameLift Streams can allocate in response to stream requests, and then de-allocate when the session has terminated. This offers a cost control measure at the expense of a greater startup time (typically under 5 minutes). Default is 0 when creating a stream group or adding a location.</p>
    #   @deprecated
    #     This input field is deprecated in favor of explicit MaximumCapacity values.
    #     Since: 2025-12-17
    #   @return [Integer]
    # @!attribute target_idle_capacity
    #   <p>This indicates idle capacity which the service pre-allocates and holds for you in anticipation of future activity. This helps to insulate your users from capacity-allocation delays. You pay for capacity which is held in this intentional idle state.</p>
    #   @return [Integer]
    # @!attribute maximum_capacity
    #   <p>This indicates the maximum capacity that the service can allocate for you. Newly created streams may take a few minutes to start. Capacity is released back to the service when idle. You pay for capacity that is allocated to you until it is released.</p>
    #   @return [Integer]
    # @!attribute vpc_transit_configuration
    #   <p>Configuration for connecting the stream group to resources in your Amazon VPC using AWS Transit Gateway. This setting is optional. If specified, Amazon GameLift Streams creates a Transit Gateway to enable private network connectivity between the service VPC and your VPC. The VPC ID cannot be changed after the stream group is created, but you can update the CIDR blocks by calling <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UpdateStreamGroup.html">UpdateStreamGroup</a>.</p>
    #   @return [Types::VpcTransitConfiguration]
    class LocationConfiguration < Struct.new(
      nil,
      :location_name,
      :always_on_capacity,
      :on_demand_capacity,
      :target_idle_capacity,
      :maximum_capacity,
      :vpc_transit_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a location and its corresponding stream capacity and status.</p>
    # @!attribute location_name
    #   <p> A location's name. For example, <code>us-east-1</code>. For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    #   @return [String]
    # @!attribute status
    #   <p>This value is set of locations, including their name, current status, and capacities. </p> <p>A location can be in one of the following states:</p> <ul> <li> <p> <code>ACTIVATING</code>: Amazon GameLift Streams is preparing the location. You cannot stream from, scale the capacity of, or remove this location yet.</p> </li> <li> <p> <code>ACTIVE</code>: The location is provisioned with initial capacity. You can now stream from, scale the capacity of, or remove this location.</p> </li> <li> <p> <code>ERROR</code>: Amazon GameLift Streams failed to set up this location. The <code>StatusReason</code> field describes the error. You can remove this location and try to add it again.</p> </li> <li> <p> <code>REMOVING</code>: Amazon GameLift Streams is working to remove this location. This will release all provisioned capacity for this location in this stream group.</p> </li> </ul>
    #   @return [String]
    # @!attribute always_on_capacity
    #   <p>This setting, if non-zero, indicates minimum streaming capacity which is allocated to you and is never released back to the service. You pay for this base level of capacity at all times, whether used or idle.</p>
    #   @return [Integer]
    # @!attribute on_demand_capacity
    #   <p>The streaming capacity that Amazon GameLift Streams can allocate in response to stream requests, and then de-allocate when the session has terminated. This offers a cost control measure at the expense of a greater startup time (typically under 5 minutes). Default is 0 when creating a stream group or adding a location.</p>
    #   @return [Integer]
    # @!attribute target_idle_capacity
    #   <p>This indicates idle capacity which the service pre-allocates and holds for you in anticipation of future activity. This helps to insulate your users from capacity-allocation delays. You pay for capacity which is held in this intentional idle state.</p>
    #   @return [Integer]
    # @!attribute maximum_capacity
    #   <p>This indicates the maximum capacity that the service can allocate for you. Newly created streams may take a few minutes to start. Capacity is released back to the service when idle. You pay for capacity that is allocated to you until it is released.</p>
    #   @return [Integer]
    # @!attribute requested_capacity
    #   <p>This value is the always-on capacity that you most recently requested for a stream group. You request capacity separately for each location in a stream group. In response to an increase in requested capacity, Amazon GameLift Streams attempts to provision compute resources to make the stream group's allocated capacity meet requested capacity. When always-on capacity is decreased, it can take a few minutes to deprovision allocated capacity to match the requested capacity.</p>
    #   @return [Integer]
    # @!attribute allocated_capacity
    #   <p>This value is the stream capacity that Amazon GameLift Streams has provisioned in a stream group that can respond immediately to stream requests. It includes resources that are currently streaming and resources that are idle and ready to respond to stream requests. When target-idle capacity is configured, the idle resources include the capacity buffer maintained beyond ongoing sessions. You pay for this capacity whether it's in use or not. After making changes to capacity, it can take a few minutes for the allocated capacity count to reflect the change while compute resources are allocated or deallocated. Similarly, when allocated on-demand capacity is no longer needed, it can take a few minutes for Amazon GameLift Streams to spin down the allocated capacity.</p>
    #   @return [Integer]
    # @!attribute idle_capacity
    #   <p>This value is the amount of allocated capacity that is not currently streaming. It represents the stream group's ability to respond immediately to new stream requests with near-instant startup time.</p>
    #   @return [Integer]
    # @!attribute internal_vpc_ipv4_cidr_block
    #   <p>The CIDR block of the service VPC for this location. Add this CIDR block to your VPC route table to enable traffic routing through the Transit Gateway.</p>
    #   @return [String]
    # @!attribute vpc_transit_configuration
    #   <p>The VPC transit configuration for this location, including the Transit Gateway details needed to complete the VPC attachment setup.</p>
    #   @return [Types::VpcTransitConfigurationResponse]
    class LocationState < Struct.new(
      nil,
      :location_name,
      :status,
      :always_on_capacity,
      :on_demand_capacity,
      :target_idle_capacity,
      :maximum_capacity,
      :requested_capacity,
      :allocated_capacity,
      :idle_capacity,
      :internal_vpc_ipv4_cidr_block,
      :vpc_transit_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for sharing the stream session's performance stats with the client</p>
    # @!attribute shared_with_client
    #   <p>Performance stats for the session are streamed to the client when set to <code>true</code>. Defaults to <code>false</code>.</p>
    #   @return [Boolean]
    class PerformanceStatsConfiguration < Struct.new(
      nil,
      :shared_with_client,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> A stream group to remove the specified locations from. </p> <p> This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute locations
    #   <p> A set of locations to remove this stream group. For example, <code>us-east-1</code>.</p> <p> For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    #   @return [Array<String>]
    class RemoveStreamGroupLocationsInput < Struct.new(
      nil,
      :identifier,
      :locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the status of the replication of an application to a location. An application cannot be streamed from a location until it has finished replicating there.</p>
    # @!attribute location
    #   <p> A location's name. For example, <code>us-east-1</code>. For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the replication process.</p>
    #   @return [String]
    class ReplicationStatus < Struct.new(
      nil,
      :location,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the width and height dimensions, in pixels, that define the resolution of the stream session's virtual monitor. The total number of pixels (width × height) must not exceed 2,073,600 (equivalent to 1920 × 1080).</p>
    # @!attribute width
    #   <p>The width of the stream session's virtual monitor, in pixels. The value must be an even number.</p>
    #   @return [Integer]
    # @!attribute height
    #   <p>The height of the stream session's virtual monitor, in pixels. The value must be an even number.</p>
    #   @return [Integer]
    class Resolution < Struct.new(
      nil,
      :width,
      :height,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource specified in the request was not found. Correct the request before you try again.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p> <p>This is the stream group that owns the stream URL.</p>
    #   @return [String]
    # @!attribute stream_url_identifier
    #   <p>The unique identifier of the stream URL to revoke. Specify a stream URL ID or Amazon Resource Name (ARN). Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamurl/sg-1AB2C3De4/su-1AB2C3De4</code>. Example ID: <code>su-1AB2C3De4</code>.</p>
    #   @return [String]
    # @!attribute revocation_mode
    #   <p>Controls what happens to running stream sessions when you revoke the stream URL. If you do not specify a value, the default is <code>REVOKE_URL</code>. Possible values include the following:</p> <ul> <li> <p> <code>REVOKE_URL</code>: Stops the stream URL from starting new stream sessions. Running sessions continue until they end.</p> </li> <li> <p> <code>REVOKE_AND_TERMINATE_SESSIONS</code>: Stops new stream sessions and ends any running stream sessions.</p> </li> </ul>
    #   @return [String]
    class RevokeStreamUrlInput < Struct.new(
      nil,
      :identifier,
      :stream_url_identifier,
      :revocation_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings that identify the operating system for an application resource. This can also include a compatibility layer and other drivers.</p> <p>A runtime environment can be one of the following:</p> <ul> <li> <p> For Linux applications </p> <ul> <li> <p> Ubuntu 22.04 LTS (<code>Type=UBUNTU, Version=22_04_LTS</code>) </p> </li> </ul> </li> <li> <p> For Windows applications </p> <ul> <li> <p>Microsoft Windows Server 2022 Base (<code>Type=WINDOWS, Version=2022</code>)</p> </li> <li> <p>Proton 10.0-4 (<code>Type=PROTON, Version=20260204</code>)</p> </li> <li> <p>Proton 9.0-2 (<code>Type=PROTON, Version=20250516</code>)</p> </li> <li> <p>Proton 8.0-5 (<code>Type=PROTON, Version=20241007</code>)</p> </li> <li> <p>Proton 8.0-2c (<code>Type=PROTON, Version=20230704</code>)</p> </li> </ul> </li> </ul>
    # @!attribute type
    #   <p>The operating system and other drivers. For Proton, this also includes the Proton compatibility layer.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Versioned container environment for the application operating system.</p>
    #   @return [String]
    class RuntimeEnvironment < Struct.new(
      nil,
      :type,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause the resource to exceed an allowed service quota. Resolve the issue before you try again.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a shader cache associated with an Amazon GameLift Streams application.</p>
    # @!attribute identifier
    #   <p>A unique identifier for the shader cache, formatted as a 32-character hexadecimal string. Format is <code>1271e693c50b940e228582f1ccdd4e27</code>.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the shader cache. Possible statuses include the following:</p> <ul> <li> <p> <code>INITIALIZED</code>: Amazon GameLift Streams received the request and is preparing the shader cache.</p> </li> <li> <p> <code>PROCESSING</code>: Amazon GameLift Streams is replicating the shader cache to the streaming locations in the associated stream groups.</p> </li> <li> <p> <code>READY</code>: The shader cache is replicated and available for use in stream sessions.</p> </li> <li> <p> <code>DELETING</code>: Amazon GameLift Streams is deleting the shader cache.</p> </li> <li> <p> <code>ERROR</code>: An error occurred during shader cache processing. Create a new shader cache to try again.</p> </li> </ul>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute storage_bytes
    #   <p>The total storage used by all compiled shader files in this shader cache, in bytes.</p>
    #   @return [Integer]
    # @!attribute associated_stream_groups
    #   <p>The stream groups compatible with this shader cache. Compatibility is based on GPU type and GPU driver version. For more information on shader cache compatibility, see <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/shader-caches.html">Shader caches</a> in the <i>Amazon GameLift Streams Developer Guide</i>.</p> <p>This value is a set of <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARNs)</a> that uniquely identify stream group resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. </p>
    #   @return [Array<String>]
    class ShaderCacheSummary < Struct.new(
      nil,
      :identifier,
      :application_arn,
      :status,
      :last_updated_at,
      :storage_bytes,
      :associated_stream_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p> A unique identifier that represents a client request. The request is idempotent, which ensures that an API request completes only once. When users send a request, Amazon GameLift Streams automatically populates this field. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable label for the stream session. You can update this value later.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The stream group to run this stream session with.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The data transport protocol to use for the stream session.</p>
    #   @return [String]
    # @!attribute signal_request
    #   <p>A WebRTC ICE offer string to use when initializing a WebRTC connection. Typically, the offer is a very long JSON string. Provide the string as a text value in quotes.</p> <p>Amazon GameLift Streams also supports setting the field to "NO_CLIENT_CONNECTION". This will create a session without needing any browser request or Web SDK integration. The session starts up as usual and waits for a reconnection from a browser, which is accomplished using <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_CreateStreamSessionConnection.html">CreateStreamSessionConnection</a>.</p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute user_id
    #   <p> An opaque, unique identifier for an end-user, defined by the developer. </p>
    #   @return [String]
    # @!attribute locations
    #   <p> A list of locations, in order of priority, where you want Amazon GameLift Streams to start a stream from. For example, <code>us-east-1</code>. Amazon GameLift Streams selects the location with the next available capacity to start a single stream session in. If this value is empty, Amazon GameLift Streams attempts to start a stream session in the primary location. </p> <p> For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    #   @return [Array<String>]
    # @!attribute connection_timeout_seconds
    #   <p>Length of time (in seconds) that Amazon GameLift Streams should wait for a client to connect or reconnect to the stream session. Applies to both connection and reconnection scenarios. This time span starts when the stream session reaches <code>ACTIVE</code> state. If no client connects before the timeout, Amazon GameLift Streams terminates the stream session. Default value is 120.</p>
    #   @return [Integer]
    # @!attribute session_length_seconds
    #   <p>The maximum duration of a session. Amazon GameLift Streams will automatically terminate a session after this amount of time has elapsed, regardless of any existing client connections. Default value is 43200 (12 hours).</p>
    #   @return [Integer]
    # @!attribute additional_launch_args
    #   <p>A list of CLI arguments that are sent to the streaming server when a stream session launches. You can use this to configure the application or stream session details. You can also provide custom arguments that Amazon GameLift Streams passes to your game client.</p> <p> <code>AdditionalEnvironmentVariables</code> and <code>AdditionalLaunchArgs</code> have similar purposes. <code>AdditionalEnvironmentVariables</code> passes data using environment variables; while <code>AdditionalLaunchArgs</code> passes data using command-line arguments.</p>
    #   @return [Array<String>]
    # @!attribute additional_environment_variables
    #   <p>A set of options that you can use to control the stream session runtime environment, expressed as a set of key-value pairs. You can use this to configure the application or stream session details. You can also provide custom environment variables that Amazon GameLift Streams passes to your game client.</p> <note> <p>If you want to debug your application with environment variables, we recommend that you do so in a local environment outside of Amazon GameLift Streams. For more information, refer to the Compatibility Guidance in the troubleshooting section of the Developer Guide.</p> </note> <p> <code>AdditionalEnvironmentVariables</code> and <code>AdditionalLaunchArgs</code> have similar purposes. <code>AdditionalEnvironmentVariables</code> passes data using environment variables; while <code>AdditionalLaunchArgs</code> passes data using command-line arguments.</p>
    #   @return [Hash<String, String>]
    # @!attribute performance_stats_configuration
    #   <p>Configuration settings for sharing the stream session's performance stats with the client</p>
    #   @return [Types::PerformanceStatsConfiguration]
    # @!attribute role_arn
    #   <p>The ARN of an AWS Identity and Access Management (IAM) role that Amazon GameLift Streams assumes on your behalf during the stream session. The role grants Amazon GameLift Streams permission to obtain temporary credentials for your application. The role's trust policy must allow the <code>gameliftstreams.amazonaws.com</code> service principal to assume it. The role name must start with <code>GameLiftStreams-</code>.</p>
    #   @return [String]
    # @!attribute display_configuration
    #   <p>The configuration for the stream session's virtual monitor, including the resolution settings.</p> <p>If not specified, Amazon GameLift Streams uses the default resolution of 1920 × 1080.</p>
    #   @return [Types::DisplayConfiguration]
    class StartStreamSessionInput < Struct.new(
      nil,
      :client_token,
      :description,
      :identifier,
      :protocol,
      :signal_request,
      :application_identifier,
      :user_id,
      :locations,
      :connection_timeout_seconds,
      :session_length_seconds,
      :additional_launch_args,
      :additional_environment_variables,
      :performance_stats_configuration,
      :role_arn,
      :display_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that's assigned to a stream session resource. When combined with the stream group resource ID, this value uniquely identifies the stream session across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:streamsession/[stream group resource ID]/[stream session resource ID]</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable label for the stream session. You can update this value at any time.</p>
    #   @return [String]
    # @!attribute stream_group_id
    #   <p>The unique identifier for the Amazon GameLift Streams stream group that is hosting the stream session. Format example: <code>sg-1AB2C3De4</code>.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p> An opaque, unique identifier for an end-user, defined by the developer. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the stream session. A stream session is ready for a client to connect when in <code>ACTIVE</code> status.</p> <ul> <li> <p> <code>ACTIVATING</code>: The stream session is starting and preparing to stream.</p> </li> <li> <p> <code>ACTIVE</code>: The stream session is ready and waiting for a client connection. A client has <code>ConnectionTimeoutSeconds</code> (specified in <code>StartStreamSession</code>) from when the session reaches <code>ACTIVE</code> state to establish a connection. If no client connects within this timeframe, the session automatically terminates.</p> </li> <li> <p> <code>CONNECTED</code>: The stream session has a connected client. A session will automatically terminate if there is no user input for 60 minutes, or if the maximum length of a session specified by <code>SessionLengthSeconds</code> in <code>StartStreamSession</code> is exceeded.</p> </li> <li> <p> <code>ERROR</code>: The stream session failed to activate. See <code>StatusReason</code> (returned by <code>GetStreamSession</code> and <code>StartStreamSession</code>) for more information.</p> </li> <li> <p> <code>PENDING_CLIENT_RECONNECTION</code>: A client has recently disconnected and the stream session is waiting for the client to reconnect. A client has <code>ConnectionTimeoutSeconds</code> (specified in <code>StartStreamSession</code>) from when the session reaches <code>PENDING_CLIENT_RECONNECTION</code> state to re-establish a connection. If no client connects within this timeframe, the session automatically terminates.</p> </li> <li> <p> <code>RECONNECTING</code>: A client has initiated a reconnect to a session that was in <code>PENDING_CLIENT_RECONNECTION</code> state.</p> </li> <li> <p> <code>TERMINATING</code>: The stream session is ending.</p> </li> <li> <p> <code>TERMINATED</code>: The stream session has ended.</p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A short description of the reason the stream session is in <code>ERROR</code> status or <code>TERMINATED</code> status.</p> <p> <code>ERROR</code> status reasons:</p> <ul> <li> <p> <code>applicationLogS3DestinationError</code>: Could not write the application log to the Amazon S3 bucket that is configured for the streaming application. Make sure the bucket still exists.</p> </li> <li> <p> <code>internalError</code>: An internal service error occurred. Start a new stream session to continue streaming.</p> </li> <li> <p> <code>invalidSignalRequest</code>: The WebRTC signal request that was sent is not valid. When starting or reconnecting to a stream session, use <code>generateSignalRequest</code> in the Amazon GameLift Streams Web SDK to generate a new signal request.</p> </li> <li> <p> <code>placementTimeout</code>: Amazon GameLift Streams could not find available stream capacity to start a stream session. Increase the stream capacity in the stream group or wait until capacity becomes available.</p> </li> </ul> <p> <code>TERMINATED</code> status reasons:</p> <ul> <li> <p> <code>apiTerminated</code>: The stream session was terminated by an API call to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TerminateStreamSession.html">TerminateStreamSession</a>.</p> </li> <li> <p> <code>applicationExit</code>: The streaming application exited or crashed. The stream session was terminated because the application is no longer running.</p> </li> <li> <p> <code>connectionTimeout</code>: The stream session was terminated because the client failed to connect within the connection timeout period specified by <code>ConnectionTimeoutSeconds</code>.</p> </li> <li> <p> <code>maxSessionLengthTimeout</code>: The stream session was terminated because it exceeded the maximum session length timeout period specified by <code>SessionLengthSeconds</code>.</p> </li> <li> <p> <code>reconnectionTimeout</code>: The stream session was terminated because the client failed to reconnect within the reconnection timeout period specified by <code>ConnectionTimeoutSeconds</code> after losing connection.</p> </li> </ul>
    #   @return [String]
    # @!attribute protocol
    #   <p>The data transfer protocol in use with the stream session.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location where Amazon GameLift Streams hosts and streams your application. For example, <code>us-east-1</code>. For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    #   @return [String]
    # @!attribute signal_request
    #   <p>The WebRTC ICE offer string that a client generates to initiate a connection to the stream session.</p>
    #   @return [String]
    # @!attribute signal_response
    #   <p>The WebRTC answer string that the stream server generates in response to the <code>SignalRequest</code>.</p>
    #   @return [String]
    # @!attribute connection_timeout_seconds
    #   <p>The length of time that Amazon GameLift Streams should wait for a client to connect or reconnect to the stream session. This time span starts when the stream session reaches <code>ACTIVE</code> or <code>PENDING_CLIENT_RECONNECTION</code> state. If no client connects (or reconnects) before the timeout, Amazon GameLift Streams terminates the stream session.</p>
    #   @return [Integer]
    # @!attribute session_length_seconds
    #   <p>The maximum duration of a session. Amazon GameLift Streams will automatically terminate a session after this amount of time has elapsed, regardless of any existing client connections.</p>
    #   @return [Integer]
    # @!attribute additional_launch_args
    #   <p>A list of CLI arguments that are sent to the streaming server when a stream session launches. You can use this to configure the application or stream session details. You can also provide custom arguments that Amazon GameLift Streams passes to your game client.</p> <p> <code>AdditionalEnvironmentVariables</code> and <code>AdditionalLaunchArgs</code> have similar purposes. <code>AdditionalEnvironmentVariables</code> passes data using environment variables; while <code>AdditionalLaunchArgs</code> passes data using command-line arguments.</p>
    #   @return [Array<String>]
    # @!attribute additional_environment_variables
    #   <p>A set of options that you can use to control the stream session runtime environment, expressed as a set of key-value pairs. You can use this to configure the application or stream session details. You can also provide custom environment variables that Amazon GameLift Streams passes to your game client.</p> <note> <p>If you want to debug your application with environment variables, we recommend that you do so in a local environment outside of Amazon GameLift Streams. For more information, refer to the Compatibility Guidance in the troubleshooting section of the Developer Guide.</p> </note> <p> <code>AdditionalEnvironmentVariables</code> and <code>AdditionalLaunchArgs</code> have similar purposes. <code>AdditionalEnvironmentVariables</code> passes data using environment variables; while <code>AdditionalLaunchArgs</code> passes data using command-line arguments.</p>
    #   @return [Hash<String, String>]
    # @!attribute performance_stats_configuration
    #   <p>The performance stats configuration for the stream session</p>
    #   @return [Types::PerformanceStatsConfiguration]
    # @!attribute log_file_location_uri
    #   <p>Access location for log files that your content generates during a stream session. These log files are uploaded to cloud storage location at the end of a stream session. The Amazon GameLift Streams application resource defines which log files to upload.</p>
    #   @return [String]
    # @!attribute web_sdk_protocol_url
    #   <p>The URL of an S3 bucket that stores Amazon GameLift Streams WebSDK files. The URL is used to establish connection with the client.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute application_arn
    #   <p>The application streaming in this session.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute export_files_metadata
    #   <p>Provides details about the stream session's exported files. </p>
    #   @return [Types::ExportFilesMetadata]
    # @!attribute role_arn
    #   <p>The ARN of the AWS Identity and Access Management (IAM) role that Amazon GameLift Streams assumes on behalf of your application during the stream session.</p>
    #   @return [String]
    # @!attribute display_configuration
    #   <p>The configuration for the stream session's virtual monitor.</p>
    #   @return [Types::DisplayConfiguration]
    class StartStreamSessionOutput < Struct.new(
      nil,
      :arn,
      :description,
      :stream_group_id,
      :user_id,
      :status,
      :status_reason,
      :protocol,
      :location,
      :signal_request,
      :signal_response,
      :connection_timeout_seconds,
      :session_length_seconds,
      :additional_launch_args,
      :additional_environment_variables,
      :performance_stats_configuration,
      :log_file_location_uri,
      :web_sdk_protocol_url,
      :last_updated_at,
      :created_at,
      :application_arn,
      :export_files_metadata,
      :role_arn,
      :display_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a Amazon GameLift Streams stream group resource for hosting content streams. To retrieve additional stream group details, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamGroup.html">GetStreamGroup</a>.</p>
    # @!attribute arn
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute id
    #   <p>An ID that uniquely identifies the stream group resource. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A descriptive label for the stream group.</p>
    #   @return [String]
    # @!attribute default_application
    #   <p>Object that identifies the Amazon GameLift Streams application to stream with this stream group.</p>
    #   @return [Types::DefaultApplication]
    # @!attribute stream_class
    #   <p>The target stream quality for the stream group. </p> <p>A stream class can be one of the following:</p> <ul> <li> <p> <b> <code>gen6n_pro_win2022</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 64 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_pro</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 64 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_ultra_win2022</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_ultra</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_medium</code> (NVIDIA, medium)</b> Supports applications with moderate 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 2 vCPUs, 8 GB RAM, 6 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 4 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_small</code> (NVIDIA, small)</b> Supports applications with lightweight 3D scene complexity and low CPU usage. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 1 vCPUs, 4 GB RAM, 2 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 12 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_medium_win2022</code> (NVIDIA, medium)</b> Supports applications with low 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 6 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_small_win2022</code> (NVIDIA, small)</b> Supports applications with low 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 2 vCPUs, 8 GB RAM, 3 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6e_pro_win2022</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L40S Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 128 GB RAM, 48 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6e_pro</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Powered by NVIDIA L40S Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 128 GB RAM, 48 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_ultra</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 8 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_ultra</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the stream group resource. Possible statuses include the following:</p> <ul> <li> <p> <code>ACTIVATING</code>: The stream group is deploying and isn't ready to host streams. </p> </li> <li> <p> <code>ACTIVE</code>: The stream group is ready to host streams. </p> </li> <li> <p> <code>ACTIVE_WITH_ERRORS</code>: One or more locations in the stream group are in an error state. Verify the details of individual locations and remove any locations which are in error. </p> </li> <li> <p> <code>DELETING</code>: Amazon GameLift Streams is in the process of deleting the stream group. </p> </li> <li> <p> <code>ERROR</code>: An error occurred when the stream group deployed. See <code>StatusReason</code> (returned by <code>CreateStreamGroup</code>, <code>GetStreamGroup</code>, and <code>UpdateStreamGroup</code>) for more information. </p> </li> <li> <p> <code>EXPIRED</code>: The stream group is expired and can no longer host streams. This typically occurs when a stream group is 365 days old, as indicated by the value of <code>ExpiresAt</code>. Create a new stream group to resume streaming capabilities. </p> </li> <li> <p> <code>UPDATING_LOCATIONS</code>: One or more locations in the stream group are in the process of updating (either activating or deleting). </p> </li> </ul>
    #   @return [String]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The time at which this stream group expires. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC). After this time, you will no longer be able to update this stream group or use it to start stream sessions. Only Get and Delete operations will work on an expired stream group.</p>
    #   @return [Time]
    class StreamGroupSummary < Struct.new(
      nil,
      :arn,
      :id,
      :description,
      :default_application,
      :stream_class,
      :status,
      :created_at,
      :last_updated_at,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The terminal connection to the stream session is not yet available. Wait before retrying the request.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class StreamSessionAccessNotReadyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon GameLift Streams stream session. To retrieve additional details for the stream session, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html">GetStreamSession</a>.</p>
    # @!attribute arn
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the stream session resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567</code>. </p>
    #   @return [String]
    # @!attribute user_id
    #   <p> An opaque, unique identifier for an end-user, defined by the developer. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the stream session resource.</p> <ul> <li> <p> <code>ACTIVATING</code>: The stream session is starting and preparing to stream.</p> </li> <li> <p> <code>ACTIVE</code>: The stream session is ready and waiting for a client connection. A client has <code>ConnectionTimeoutSeconds</code> (specified in <code>StartStreamSession</code>) from when the session reaches <code>ACTIVE</code> state to establish a connection. If no client connects within this timeframe, the session automatically terminates.</p> </li> <li> <p> <code>CONNECTED</code>: The stream session has a connected client. A session will automatically terminate if there is no user input for 60 minutes, or if the maximum length of a session specified by <code>SessionLengthSeconds</code> in <code>StartStreamSession</code> is exceeded.</p> </li> <li> <p> <code>ERROR</code>: The stream session failed to activate. See <code>StatusReason</code> (returned by <code>GetStreamSession</code> and <code>StartStreamSession</code>) for more information.</p> </li> <li> <p> <code>PENDING_CLIENT_RECONNECTION</code>: A client has recently disconnected and the stream session is waiting for the client to reconnect. A client has <code>ConnectionTimeoutSeconds</code> (specified in <code>StartStreamSession</code>) from when the session reaches <code>PENDING_CLIENT_RECONNECTION</code> state to re-establish a connection. If no client connects within this timeframe, the session automatically terminates.</p> </li> <li> <p> <code>RECONNECTING</code>: A client has initiated a reconnect to a session that was in <code>PENDING_CLIENT_RECONNECTION</code> state.</p> </li> <li> <p> <code>TERMINATING</code>: The stream session is ending.</p> </li> <li> <p> <code>TERMINATED</code>: The stream session has ended.</p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A short description of the reason the stream session is in <code>ERROR</code> status or <code>TERMINATED</code> status.</p> <p> <code>ERROR</code> status reasons:</p> <ul> <li> <p> <code>applicationLogS3DestinationError</code>: Could not write the application log to the Amazon S3 bucket that is configured for the streaming application. Make sure the bucket still exists.</p> </li> <li> <p> <code>internalError</code>: An internal service error occurred. Start a new stream session to continue streaming.</p> </li> <li> <p> <code>invalidSignalRequest</code>: The WebRTC signal request that was sent is not valid. When starting or reconnecting to a stream session, use <code>generateSignalRequest</code> in the Amazon GameLift Streams Web SDK to generate a new signal request.</p> </li> <li> <p> <code>placementTimeout</code>: Amazon GameLift Streams could not find available stream capacity to start a stream session. Increase the stream capacity in the stream group or wait until capacity becomes available.</p> </li> </ul> <p> <code>TERMINATED</code> status reasons:</p> <ul> <li> <p> <code>apiTerminated</code>: The stream session was terminated by an API call to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TerminateStreamSession.html">TerminateStreamSession</a>.</p> </li> <li> <p> <code>applicationExit</code>: The streaming application exited or crashed. The stream session was terminated because the application is no longer running.</p> </li> <li> <p> <code>connectionTimeout</code>: The stream session was terminated because the client failed to connect within the connection timeout period specified by <code>ConnectionTimeoutSeconds</code>.</p> </li> <li> <p> <code>maxSessionLengthTimeout</code>: The stream session was terminated because it exceeded the maximum session length timeout period specified by <code>SessionLengthSeconds</code>.</p> </li> <li> <p> <code>reconnectionTimeout</code>: The stream session was terminated because the client failed to reconnect within the reconnection timeout period specified by <code>ConnectionTimeoutSeconds</code> after losing connection.</p> </li> </ul>
    #   @return [String]
    # @!attribute protocol
    #   <p>The data transfer protocol in use with the stream session.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute application_arn
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute export_files_metadata
    #   <p>Provides details about the stream session's exported files. </p>
    #   @return [Types::ExportFilesMetadata]
    # @!attribute location
    #   <p>The location where Amazon GameLift Streams hosts and streams your application. For example, <code>us-east-1</code>. For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the AWS Identity and Access Management (IAM) role that Amazon GameLift Streams assumes on behalf of your application during the stream session.</p>
    #   @return [String]
    class StreamSessionSummary < Struct.new(
      nil,
      :arn,
      :user_id,
      :status,
      :status_reason,
      :protocol,
      :last_updated_at,
      :created_at,
      :application_arn,
      :export_files_metadata,
      :location,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a stream URL. This is a summary view that omits the full configuration, such as launch arguments and display settings. To retrieve the complete configuration, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamUrl.html">GetStreamUrl</a>.</p>
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the stream URL across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:streamurl/[stream group resource ID]/[stream URL resource ID]</code>.</p>
    #   @return [String]
    # @!attribute stream_url_id
    #   <p>The unique identifier for the stream URL resource, for example <code>su-1AB2C3De4</code>.</p>
    #   @return [String]
    # @!attribute stream_url
    #   <p>The shareable stream URL. Distribute this URL to end users so that they can start and play a stream session in a hosted web player. Treat the stream URL as a secret. Anyone who has it can start a stream session until the stream URL expires, is revoked, or reaches its usage limit.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the stream URL. Possible statuses include the following:</p> <ul> <li> <p> <code>ACTIVE</code>: The stream URL is valid and can start stream sessions.</p> </li> <li> <p> <code>EXPIRED</code>: The stream URL has passed its expiration time and can no longer start stream sessions.</p> </li> <li> <p> <code>REVOKED</code>: The stream URL was revoked and can no longer start stream sessions.</p> </li> <li> <p> <code>LIMIT_REACHED</code>: The stream URL has been used the maximum number of times and can no longer start stream sessions.</p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information about why the stream URL is in its current status. Amazon GameLift Streams populates this value when the status is <code>REVOKED</code>. Possible values include the following:</p> <ul> <li> <p> <code>userRevoked</code>: You revoked the stream URL.</p> </li> <li> <p> <code>revokedAndTerminatingSessions</code>: You revoked the stream URL and Amazon GameLift Streams is ending its running stream sessions.</p> </li> <li> <p> <code>revokedAndSessionsTerminated</code>: You revoked the stream URL and its running stream sessions have ended.</p> </li> <li> <p> <code>streamGroupDeleted</code>: The stream group was deleted, which revoked the stream URL.</p> </li> <li> <p> <code>applicationDeleted</code>: The application was deleted, which revoked the stream URL.</p> </li> </ul>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The date and time when the stream URL expires and stops accepting new stream sessions. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute usage_limit
    #   <p>The maximum number of times the stream URL can start a stream session.</p>
    #   @return [Integer]
    # @!attribute remaining_uses
    #   <p>The number of times the stream URL can still be used to start a stream session.</p>
    #   @return [Integer]
    # @!attribute stream_group_arn
    #   <p>The stream group that runs the stream sessions.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The application that runs in the stream sessions.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute session_length_seconds
    #   <p>The maximum length of time, in seconds, that a stream session started from this stream URL can run.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The descriptive label for the stream URL.</p>
    #   @return [String]
    class StreamUrlSummary < Struct.new(
      nil,
      :arn,
      :stream_url_id,
      :stream_url,
      :status,
      :status_reason,
      :expires_at,
      :created_at,
      :usage_limit,
      :remaining_uses,
      :stream_group_arn,
      :application_arn,
      :session_length_seconds,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> of the Amazon GameLift Streams resource that you want to apply tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags, in the form of key-value pairs, to assign to the specified Amazon GameLift Streams resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p> <p>The stream group that runs this stream session.</p>
    #   @return [String]
    # @!attribute stream_session_identifier
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream session resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567</code>. Example ID: <code>ABC123def4567</code>. </p>
    #   @return [String]
    class TerminateStreamSessionInput < Struct.new(
      nil,
      :identifier,
      :stream_session_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. Retry the request after the suggested wait time.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> of the Amazon GameLift Streams resource that you want to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the specified Amazon GameLift Streams resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable label for the application.</p>
    #   @return [String]
    # @!attribute application_log_paths
    #   <p>Locations of log files that your content generates during a stream session. Enter path values that are relative to the <code>ApplicationSourceUri</code> location, or relative to the user's home directory when using a supported path variable. You can specify up to 10 log paths. Each individual log file cannot exceed 50 MB in size.</p> <p>Each path can be a directory or an exact file path. When you specify a directory, Amazon GameLift Streams collects only files with the following extensions: <code>.txt</code>, <code>.log</code>, and <code>.utrace</code>. To collect files with other extensions, specify the exact file path. The copy operation is not performed recursively in subfolders.</p> <p>The following path variables are recognized when they appear as the first component of a path: <code>%USERPROFILE%</code> (Windows and Proton), <code>$HOME</code> or <code>~</code> (Linux). Use a path variable when your application writes logs outside of the application directory.</p> <p>Amazon GameLift Streams uploads designated log files to the Amazon S3 bucket that you specify in <code>ApplicationLogOutputUri</code> at the end of a stream session. To retrieve stored log files, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html">GetStreamSession</a> and get the <code>LogFileLocationUri</code>.</p>
    #   @return [Array<String>]
    # @!attribute application_log_output_uri
    #   <p>An Amazon S3 URI to a bucket where you would like Amazon GameLift Streams to save application logs. Required if you specify one or more <code>ApplicationLogPaths</code>.</p> <note> <p>The log bucket must have permissions that give Amazon GameLift Streams access to write the log files. For more information, see <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/applications.html#application-bucket-permission-template">Application log bucket permission policy</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p> </note>
    #   @return [String]
    class UpdateApplicationInput < Struct.new(
      nil,
      :identifier,
      :description,
      :application_log_paths,
      :application_log_output_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that's assigned to an application resource and uniquely identifies it across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:application/[resource ID]</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable label for the application. You can edit this value. </p>
    #   @return [String]
    # @!attribute runtime_environment
    #   <p> Configuration settings that identify the operating system for an application resource. This can also include a compatibility layer and other drivers. </p> <p>A runtime environment can be one of the following:</p> <ul> <li> <p> For Linux applications </p> <ul> <li> <p> Ubuntu 22.04 LTS (<code>Type=UBUNTU, Version=22_04_LTS</code>) </p> </li> </ul> </li> <li> <p> For Windows applications </p> <ul> <li> <p>Microsoft Windows Server 2022 Base (<code>Type=WINDOWS, Version=2022</code>)</p> </li> <li> <p>Proton 10.0-4 (<code>Type=PROTON, Version=20260204</code>)</p> </li> <li> <p>Proton 9.0-2 (<code>Type=PROTON, Version=20250516</code>)</p> </li> <li> <p>Proton 8.0-5 (<code>Type=PROTON, Version=20241007</code>)</p> </li> <li> <p>Proton 8.0-2c (<code>Type=PROTON, Version=20230704</code>)</p> </li> </ul> </li> </ul>
    #   @return [Types::RuntimeEnvironment]
    # @!attribute executable_path
    #   <p>The relative path and file name of the executable file that launches the content for streaming.</p>
    #   @return [String]
    # @!attribute application_log_paths
    #   <p>Locations of log files that your content generates during a stream session. Amazon GameLift Streams uploads log files to the Amazon S3 bucket that you specify in <code>ApplicationLogOutputUri</code> at the end of a stream session. To retrieve stored log files, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html">GetStreamSession</a> and get the <code>LogFileLocationUri</code>.</p>
    #   @return [Array<String>]
    # @!attribute application_log_output_uri
    #   <p>An Amazon S3 URI to a bucket where you would like Amazon GameLift Streams to save application logs. Required if you specify one or more <code>ApplicationLogPaths</code>.</p>
    #   @return [String]
    # @!attribute application_source_uri
    #   <p>The original Amazon S3 location of uploaded stream content for the application.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique ID value that is assigned to the resource when it's created. Format example: <code>a-9ZY8X7Wv6</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the application resource. Possible statuses include the following:</p> <ul> <li> <p> <code>INITIALIZED</code>: Amazon GameLift Streams has received the request and is initiating the work flow to create an application. </p> </li> <li> <p> <code>PROCESSING</code>: The create application work flow is in process. Amazon GameLift Streams is copying the content and caching for future deployment in a stream group.</p> </li> <li> <p> <code>READY</code>: The application is ready to deploy in a stream group.</p> </li> <li> <p> <code>ERROR</code>: An error occurred when setting up the application. See <code>StatusReason</code> for more information.</p> </li> <li> <p> <code>DELETING</code>: Amazon GameLift Streams is in the process of deleting the application.</p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A short description of the status reason when the application is in <code>ERROR</code> status.</p>
    #   @return [String]
    # @!attribute replication_statuses
    #   <p>A set of replication statuses for each location.</p>
    #   @return [Array<Types::ReplicationStatus>]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute associated_stream_groups
    #   <p> A set of stream groups that this application is associated with. You can use any of these stream groups to stream your application. </p> <p>This value is a set of <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARNs)</a> that uniquely identify stream group resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. </p>
    #   @return [Array<String>]
    class UpdateApplicationOutput < Struct.new(
      nil,
      :arn,
      :description,
      :runtime_environment,
      :executable_path,
      :application_log_paths,
      :application_log_output_uri,
      :application_source_uri,
      :id,
      :status,
      :status_reason,
      :replication_statuses,
      :created_at,
      :last_updated_at,
      :associated_stream_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    #   @return [String]
    # @!attribute location_configurations
    #   <p> A set of one or more locations and the streaming capacity for each location. </p>
    #   @return [Array<Types::LocationConfiguration>]
    # @!attribute description
    #   <p>A descriptive label for the stream group.</p>
    #   @return [String]
    # @!attribute default_application_identifier
    #   <p>The unique identifier of the Amazon GameLift Streams application that you want to set as the default application in a stream group. The application that you specify must be in <code>READY</code> status. The default application is pre-cached on always-on compute resources, reducing stream startup times. Other applications are automatically cached as needed.</p> <p>Note that this parameter only sets the default application in a stream group. To associate a new application to an existing stream group, you must use <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_AssociateApplications.html">AssociateApplications</a>.</p> <p>When you switch default applications in a stream group, it can take up to a few hours for the new default application to be pre-cached.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    #   @return [String]
    class UpdateStreamGroupInput < Struct.new(
      nil,
      :identifier,
      :location_configurations,
      :description,
      :default_application_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that is assigned to the stream group resource and that uniquely identifies the group across all Amazon Web Services Regions. Format is <code>arn:aws:gameliftstreams:[AWS Region]:[AWS account]:streamgroup/[resource ID]</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A descriptive label for the stream group.</p>
    #   @return [String]
    # @!attribute default_application
    #   <p>The default Amazon GameLift Streams application that is associated with this stream group.</p>
    #   @return [Types::DefaultApplication]
    # @!attribute location_states
    #   <p>This value is set of locations, including their name, current status, and capacities. </p> <p>A location can be in one of the following states:</p> <ul> <li> <p> <code>ACTIVATING</code>: Amazon GameLift Streams is preparing the location. You cannot stream from, scale the capacity of, or remove this location yet.</p> </li> <li> <p> <code>ACTIVE</code>: The location is provisioned with initial capacity. You can now stream from, scale the capacity of, or remove this location.</p> </li> <li> <p> <code>ERROR</code>: Amazon GameLift Streams failed to set up this location. The <code>StatusReason</code> field describes the error. You can remove this location and try to add it again.</p> </li> <li> <p> <code>REMOVING</code>: Amazon GameLift Streams is working to remove this location. This will release all provisioned capacity for this location in this stream group.</p> </li> </ul>
    #   @return [Array<Types::LocationState>]
    # @!attribute stream_class
    #   <p>The target stream quality for the stream group.</p> <p>A stream class can be one of the following:</p> <ul> <li> <p> <b> <code>gen6n_pro_win2022</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 64 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_pro</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 64 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_ultra_win2022</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_ultra</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_medium</code> (NVIDIA, medium)</b> Supports applications with moderate 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 2 vCPUs, 8 GB RAM, 6 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 4 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_small</code> (NVIDIA, small)</b> Supports applications with lightweight 3D scene complexity and low CPU usage. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 1 vCPUs, 4 GB RAM, 2 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 12 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_medium_win2022</code> (NVIDIA, medium)</b> Supports applications with low 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 6 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6n_small_win2022</code> (NVIDIA, small)</b> Supports applications with low 3D scene complexity. Powered by NVIDIA L4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 2 vCPUs, 8 GB RAM, 3 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6e_pro_win2022</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA L40S Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 128 GB RAM, 48 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen6e_pro</code> (NVIDIA, pro)</b> Supports applications with extremely high 3D scene complexity which require maximum resources. Powered by NVIDIA L40S Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 16 vCPUs, 128 GB RAM, 48 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_ultra</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Powered by NVIDIA A10G Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.6, 32 and 64-bit applications, and anti-cheat technology. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 8 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_ultra</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Powered by NVIDIA T4 Tensor Core GPUs.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique ID value that is assigned to the resource when it's created. Format example: <code>sg-1AB2C3De4</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the stream group resource. Possible statuses include the following:</p> <ul> <li> <p> <code>ACTIVATING</code>: The stream group is deploying and isn't ready to host streams. </p> </li> <li> <p> <code>ACTIVE</code>: The stream group is ready to host streams. </p> </li> <li> <p> <code>ACTIVE_WITH_ERRORS</code>: One or more locations in the stream group are in an error state. Verify the details of individual locations and remove any locations which are in error. </p> </li> <li> <p> <code>DELETING</code>: Amazon GameLift Streams is in the process of deleting the stream group. </p> </li> <li> <p> <code>ERROR</code>: An error occurred when the stream group deployed. See <code>StatusReason</code> (returned by <code>CreateStreamGroup</code>, <code>GetStreamGroup</code>, and <code>UpdateStreamGroup</code>) for more information. </p> </li> <li> <p> <code>EXPIRED</code>: The stream group is expired and can no longer host streams. This typically occurs when a stream group is 365 days old, as indicated by the value of <code>ExpiresAt</code>. Create a new stream group to resume streaming capabilities. </p> </li> <li> <p> <code>UPDATING_LOCATIONS</code>: One or more locations in the stream group are in the process of updating (either activating or deleting). </p> </li> </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p> A short description of the reason that the stream group is in <code>ERROR</code> status. The possible reasons can be one of the following: </p> <ul> <li> <p> <code>internalError</code>: The request can't process right now because of an issue with the server. Try again later.</p> </li> <li> <p> <code>noAvailableInstances</code>: Amazon GameLift Streams does not currently have enough available capacity to fulfill your request. Wait a few minutes and retry the request as capacity can shift frequently. You can also try to make the request using a different stream class or in another region.</p> </li> </ul>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>A timestamp that indicates when this resource was last updated. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>A timestamp that indicates when this resource was created. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC).</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The time at which this stream group expires. Timestamps are expressed using in ISO8601 format, such as: <code>2022-12-27T22:29:40+00:00</code> (UTC). After this time, you will no longer be able to update this stream group or use it to start stream sessions. Only Get and Delete operations will work on an expired stream group.</p>
    #   @return [Time]
    # @!attribute associated_applications
    #   <p> A set of applications that this stream group is associated with. You can stream any of these applications with the stream group. </p> <p>This value is a set of <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARNs)</a> that uniquely identify application resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. </p>
    #   @return [Array<String>]
    class UpdateStreamGroupOutput < Struct.new(
      nil,
      :arn,
      :description,
      :default_application,
      :location_states,
      :stream_class,
      :id,
      :status,
      :status_reason,
      :last_updated_at,
      :created_at,
      :expires_at,
      :associated_applications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameter values in the request fail to satisfy the specified constraints. Correct the invalid parameter values before retrying the request.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for connecting a stream group location to resources in your Amazon VPC using AWS Transit Gateway. When you specify a VPC transit configuration, Amazon GameLift Streams creates a Transit Gateway and shares it with your account using AWS Resource Access Manager. After the stream group is active, you must complete the setup by accepting the resource share, creating a VPC attachment, and configuring routing.</p>
    # @!attribute vpc_id
    #   <p>The ID of the Amazon VPC that you want to connect to the stream group. The VPC must be in the same Amazon Web Services account as the stream group. This value cannot be changed after the stream group is created.</p>
    #   @return [String]
    # @!attribute ipv4_cidr_blocks
    #   <p>A list of IPv4 CIDR blocks in your VPC that you want the stream group to be able to access. You can specify up to 5 CIDR blocks. The CIDR blocks must be valid subsets of the VPC's CIDR blocks and cannot overlap with the service VPC CIDR block.</p>
    #   @return [Array<String>]
    class VpcTransitConfiguration < Struct.new(
      nil,
      :vpc_id,
      :ipv4_cidr_blocks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC transit configuration details for a stream group location, including the Transit Gateway information needed to complete the VPC attachment setup.</p>
    # @!attribute vpc_id
    #   <p>The ID of the Amazon VPC that is connected to the stream group.</p>
    #   @return [String]
    # @!attribute ipv4_cidr_blocks
    #   <p>The IPv4 CIDR blocks in your VPC that the stream group can access.</p>
    #   @return [Array<String>]
    # @!attribute transit_gateway_id
    #   <p>The ID of the Transit Gateway that Amazon GameLift Streams created for this VPC connection. Use this ID when creating your VPC attachment.</p>
    #   @return [String]
    # @!attribute transit_gateway_resource_share_arn
    #   <p>The ARN of the AWS Resource Access Manager resource share for the Transit Gateway. You must accept this resource share before you can create a VPC attachment.</p>
    #   @return [String]
    class VpcTransitConfigurationResponse < Struct.new(
      nil,
      :vpc_id,
      :ipv4_cidr_blocks,
      :transit_gateway_id,
      :transit_gateway_resource_share_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
