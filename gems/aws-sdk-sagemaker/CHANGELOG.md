Unreleased Changes
------------------

1.286.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.285.0 (2025-02-04)
------------------

* Feature - IPv6 support for Hyperpod clusters

1.284.0 (2025-01-31)
------------------

* Feature - This release introduces a new valid value in InstanceType parameter: p5en.48xlarge, in ProductionVariant.

1.283.0 (2025-01-17)
------------------

* Feature - Correction of docs for  "Added support for ml.trn1.32xlarge instance type in Reserved Capacity Offering"

1.282.0 (2025-01-16)
------------------

* Feature - Added support for ml.trn1.32xlarge instance type in Reserved Capacity Offering

1.281.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.280.0 (2025-01-08)
------------------

* Feature - Adds support for IPv6 for SageMaker HyperPod cluster nodes.

1.279.0 (2025-01-02)
------------------

* Feature - Adding ETag information with Model Artifacts for Model Registry

1.278.0 (2024-12-20)
------------------

* Feature - This release adds support for c6i, m6i and r6i instance on SageMaker Hyperpod and trn1 instances in batch

1.277.0 (2024-12-04)
------------------

* Feature - Amazon SageMaker HyperPod launched task governance to help customers maximize accelerator utilization for model development and flexible training plans to meet training timelines and budget while reducing weeks of training time. AI apps from AWS partner is now available in SageMaker.

1.276.0 (2024-11-22)
------------------

* Feature - This release adds APIs for new features for SageMaker endpoint to scale down to zero instances, native support for multi-adapter inference, and endpoint scaling improvements.

1.275.0 (2024-11-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.274.0 (2024-11-14)
------------------

* Feature - Add support for Neuron instance types [ trn1/trn1n/inf2 ] on SageMaker Notebook Instances Platform.

1.273.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.272.0 (2024-10-31)
------------------

* Feature - SageMaker HyperPod adds scale-down at instance level via BatchDeleteClusterNodes API and group level via UpdateCluster API. SageMaker Training exposes secondary job status in TrainingJobSummary from ListTrainingJobs API. SageMaker now supports G6, G6e, P5e instances for HyperPod and Training.

1.271.0 (2024-10-30)
------------------

* Feature - Added support for Model Registry Staging construct. Users can define series of stages that models can progress through for model workflows and lifecycle. This simplifies tracking and managing models as they transition through development, testing, and production stages.

1.270.0 (2024-10-29)
------------------

* Feature - Adding `notebook-al2-v3` as allowed value to SageMaker NotebookInstance PlatformIdentifier attribute

1.269.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.268.0 (2024-10-02)
------------------

* Feature - releasing builtinlcc to public

1.267.0 (2024-09-26)
------------------

* Feature - Adding `TagPropagation` attribute to Sagemaker API

1.266.0 (2024-09-24)
------------------

* Feature - Adding `HiddenInstanceTypes` and `HiddenSageMakerImageVersionAliases` attribute to SageMaker API

1.265.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.264.0 (2024-09-20)
------------------

* Feature - Amazon SageMaker now supports using manifest files to specify the location of uncompressed model artifacts within Model Packages

1.263.0 (2024-09-19)
------------------

* Feature - Introduced support for G6e instance types on SageMaker Studio for JupyterLab and CodeEditor applications.

1.262.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.261.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.260.0 (2024-09-09)
------------------

* Feature - Amazon Sagemaker supports orchestrating SageMaker HyperPod clusters with Amazon EKS

1.259.0 (2024-09-05)
------------------

* Feature - Amazon SageMaker now supports idle shutdown of JupyterLab and CodeEditor applications on SageMaker Studio.

1.258.0 (2024-09-03)
------------------

* Feature - Amazon SageMaker now supports automatic mounting of a user's home folder in the Amazon Elastic File System (EFS) associated with the SageMaker Studio domain to their Studio Spaces to enable users to share data between their own private spaces.

1.257.0 (2024-08-16)
------------------

* Feature - Introduce Endpoint and EndpointConfig Arns in sagemaker:ListPipelineExecutionSteps API response

1.256.0 (2024-08-12)
------------------

* Feature - Releasing large data support as part of CreateAutoMLJobV2 in SageMaker Autopilot and CreateDomain API for SageMaker Canvas.

1.255.0 (2024-08-01)
------------------

* Feature - This release adds support for Amazon EMR Serverless applications in SageMaker Studio for running data processing jobs.

1.254.0 (2024-07-18)
------------------

* Feature - SageMaker Training supports R5, T3 and R5D instances family. And SageMaker Processing supports G5 and R5D instances family.

1.253.0 (2024-07-09)
------------------

* Feature - This release 1/ enables optimization jobs that allows customers to perform Ahead-of-time compilation and quantization. 2/ allows customers to control access to Amazon Q integration in SageMaker Studio. 3/ enables AdditionalModelDataSources for CreateModel action.

1.252.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.251.0 (2024-06-27)
------------------

* Feature - Add capability for Admins to customize Studio experience for the user by showing or hiding Apps and MLTools.

1.250.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.249.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.248.0 (2024-06-20)
------------------

* Feature - Adds support for model references in Hub service, and adds support for cross-account access of Hubs

1.247.0 (2024-06-18)
------------------

* Feature - Launched a new feature in SageMaker to provide managed MLflow Tracking Servers for customers to track ML experiments. This release also adds a new capability of attaching additional storage to SageMaker HyperPod cluster instances.

1.246.0 (2024-06-07)
------------------

* Feature - This release introduces a new optional parameter: InferenceAmiVersion, in ProductionVariant.

1.245.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.244.0 (2024-06-04)
------------------

* Feature - Extend DescribeClusterNode response with private DNS hostname and IP address, and placement information about availability zone and availability zone ID.

1.243.0 (2024-05-30)
------------------

* Feature - Adds Model Card information as a new component to Model Package. Autopilot launches algorithm selection for TimeSeries modality to generate AutoML candidates per algorithm.

1.242.0 (2024-05-16)
------------------

* Feature - Introduced WorkerAccessConfiguration to SageMaker Workteam. This allows customers to configure resource access for workers in a workteam.

1.241.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.240.0 (2024-05-10)
------------------

* Feature - Introduced support for G6 instance types on Sagemaker Notebook Instances and on SageMaker Studio for JupyterLab and CodeEditor applications.

1.239.0 (2024-05-03)
------------------

* Feature - Amazon SageMaker Inference now supports m6i, c6i, r6i, m7i, c7i, r7i and g5 instance types for Batch Transform Jobs

1.238.0 (2024-04-30)
------------------

* Feature - Amazon SageMaker Training now supports the use of attribute-based access control (ABAC) roles for training job execution roles. Amazon SageMaker Inference now supports G6 instance types.

1.237.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.236.0 (2024-04-22)
------------------

* Feature - This release adds support for Real-Time Collaboration and Shared Space for JupyterLab App on SageMaker Studio.

1.235.0 (2024-04-18)
------------------

* Feature - Removed deprecated enum values and updated API documentation.

1.234.0 (2024-03-25)
------------------

* Feature - Introduced support for the following new instance types on SageMaker Studio for JupyterLab and CodeEditor applications: m6i, m6id, m7i, c6i, c6id, c7i, r6i, r6id, r7i, and p5

1.233.0 (2024-03-15)
------------------

* Feature - Adds m6i, m6id, m7i, c6i, c6id, c7i, r6i r6id, r7i, p5 instance type support to Sagemaker Notebook Instances and miscellaneous wording fixes for previous Sagemaker documentation.

1.232.0 (2024-02-29)
------------------

* Feature - Adds support for ModelDataSource in Model Packages to support unzipped models. Adds support to specify SourceUri for models which allows registration of models without mandating a container for hosting. Using SourceUri, customers can decouple the model from hosting information during registration.

1.231.0 (2024-02-02)
------------------

* Feature - Amazon SageMaker Canvas adds GenerativeAiSettings support for CanvasAppSettings.

1.230.0 (2024-01-26)
------------------

* Feature - Amazon SageMaker Automatic Model Tuning now provides an API to programmatically delete tuning jobs.

1.229.0 (2024-01-14)
------------------

* Feature - This release will have ValidationException thrown if certain invalid app types are provided. The release will also throw ValidationException if more than 10 account ids are provided in VpcOnlyTrustedAccounts.

1.228.0 (2024-01-04)
------------------

* Feature - Adding support for provisioned throughput mode for SageMaker Feature Groups

1.227.0 (2023-12-28)
------------------

* Feature - Amazon SageMaker Studio now supports Docker access from within app container

1.226.0 (2023-12-21)
------------------

* Feature - Amazon SageMaker Training now provides model training container access for debugging purposes. Amazon SageMaker Search now provides the ability to use visibility conditions to limit resource access to a single domain or multiple domains.

1.225.0 (2023-12-15)
------------------

* Feature - This release 1) introduces a new API: DeleteCompilationJob , and 2) adds InfraCheckConfig for Create/Describe training job API

1.224.0 (2023-11-30)
------------------

* Feature - This release adds support for 1/ Code Editor, based on Code-OSS, Visual Studio Code Open Source, a new fully managed IDE option in SageMaker Studio  2/ JupyterLab, a new fully managed JupyterLab IDE experience in SageMaker Studio

1.223.0 (2023-11-29)
------------------

* Feature - This release adds following support 1/ Improved SDK tooling for model deployment. 2/ New Inference Component based features to lower inference costs and latency 3/ SageMaker HyperPod management. 4/ Additional parameters for FM Fine Tuning in Autopilot

1.222.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.221.0 (2023-11-22)
------------------

* Feature - This feature adds the end user license agreement status as a model access configuration parameter.

1.220.0 (2023-11-16)
------------------

* Feature - Amazon SageMaker Studio now supports Trainium instance types - trn1.2xlarge, trn1.32xlarge, trn1n.32xlarge.

1.219.0 (2023-11-14)
------------------

* Feature - This release makes Model Registry Inference Specification fields as not required.

1.218.0 (2023-11-01)
------------------

* Feature - Support for batch transform input in Model dashboard

1.217.0 (2023-10-26)
------------------

* Feature - Amazon Sagemaker Autopilot now supports Text Generation jobs.

1.216.0 (2023-10-12)
------------------

* Feature - Amazon SageMaker Canvas adds KendraSettings and DirectDeploySettings support for CanvasAppSettings

1.215.0 (2023-10-04)
------------------

* Feature - Adding support for AdditionalS3DataSource, a data source used for training or inference that is in addition to the input dataset or model data.

1.214.0 (2023-10-03)
------------------

* Feature - This release allows users to run Selective Execution in SageMaker Pipelines without SourcePipelineExecutionArn if selected steps do not have any dependent steps.

1.213.0 (2023-09-28)
------------------

* Feature - Online store feature groups supports Standard and InMemory tier storage types for low latency storage for real-time data retrieval. The InMemory tier supports collection types List, Set, and Vector.

1.212.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.211.0 (2023-09-19)
------------------

* Feature - This release adds support for one-time model monitoring schedules that are executed immediately without delay, explicit data analysis windows for model monitoring schedules and exclude features attributes to remove features from model monitor analysis.

1.210.0 (2023-09-15)
------------------

* Feature - This release introduces Skip Model Validation for Model Packages

1.209.0 (2023-09-08)
------------------

* Feature - Autopilot APIs will now support holiday featurization for Timeseries models. The models will now hold holiday metadata and should be able to accommodate holiday effect during inference.

1.208.0 (2023-09-05)
------------------

* Feature - SageMaker Neo now supports data input shape derivation for Pytorch 2.0  and XGBoost compilation job for cloud instance targets. You can skip DataInputConfig field during compilation job creation. You can also access derived information from model in DescribeCompilationJob response.

1.207.0 (2023-08-30)
------------------

* Feature - Amazon SageMaker Canvas adds IdentityProviderOAuthSettings support for CanvasAppSettings

1.206.0 (2023-08-15)
------------------

* Feature - SageMaker Inference Recommender now provides SupportedResponseMIMETypes from DescribeInferenceRecommendationsJob response

1.205.0 (2023-08-09)
------------------

* Feature - This release adds support for cross account access for SageMaker Model Cards through AWS RAM.

1.204.0 (2023-08-04)
------------------

* Feature - Including DataCaptureConfig key in the Amazon Sagemaker Search's transform job object

1.203.0 (2023-08-03)
------------------

* Feature - Amazon SageMaker now supports running training jobs on p5.48xlarge instance types.

1.202.0 (2023-08-02)
------------------

* Feature - SageMaker Inference Recommender introduces a new API GetScalingConfigurationRecommendation to recommend auto scaling policies based on completed Inference Recommender jobs.

1.201.0 (2023-08-01)
------------------

* Feature - Add Stairs TrafficPattern and FlatInvocations to RecommendationJobStoppingConditions

1.200.0 (2023-07-27)
------------------

* Feature - Expose ProfilerConfig attribute in SageMaker Search API response.

1.199.0 (2023-07-25)
------------------

* Feature - Mark ContentColumn and TargetLabelColumn as required Targets in TextClassificationJobConfig in CreateAutoMLJobV2API

1.198.0 (2023-07-20)
------------------

* Feature - Cross account support for SageMaker Feature Store

1.197.0 (2023-07-13)
------------------

* Feature - Amazon SageMaker Canvas adds WorkspeceSettings support for CanvasAppSettings

1.196.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.195.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.194.0 (2023-07-03)
------------------

* Feature - SageMaker Inference Recommender now accepts new fields SupportedEndpointType and ServerlessConfiguration to support serverless endpoints.

1.193.0 (2023-06-30)
------------------

* Feature - This release adds support for rolling deployment in SageMaker Inference.

1.192.0 (2023-06-29)
------------------

* Feature - Adding support for timeseries forecasting in the CreateAutoMLJobV2 API.

1.191.0 (2023-06-28)
------------------

* Feature - This release adds support for Model Cards Model Registry integration.

1.190.0 (2023-06-27)
------------------

* Feature - Introducing TTL for online store records in feature groups.

1.189.0 (2023-06-21)
------------------

* Feature - This release provides support in SageMaker for output files in training jobs to be uploaded without compression and enable customer to deploy uncompressed model from S3 to real-time inference Endpoints. In addition, ml.trn1n.32xlarge is added to supported instance type list in training job.

1.188.0 (2023-06-19)
------------------

* Feature - Amazon Sagemaker Autopilot releases CreateAutoMLJobV2 and DescribeAutoMLJobV2 for Autopilot customers with ImageClassification, TextClassification and Tabular problem type config support.

1.187.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.186.0 (2023-06-12)
------------------

* Feature - Sagemaker Neo now supports compilation for inferentia2 (ML_INF2) and Trainium1 (ML_TRN1) as available targets. With these devices, you can run your workloads at highest performance with lowest cost. inferentia2 (ML_INF2) is available in CMH and Trainium1 (ML_TRN1) is available in IAD currently

1.185.0 (2023-06-02)
------------------

* Feature - This release adds Selective Execution feature that allows SageMaker Pipelines users to run selected steps in a pipeline.

1.184.0 (2023-06-01)
------------------

* Feature - Amazon Sagemaker Autopilot adds support for Parquet file input to NLP text classification jobs.

1.183.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.182.0 (2023-05-26)
------------------

* Feature - Added ml.p4d and ml.inf1 as supported instance type families for SageMaker Notebook Instances.

1.181.0 (2023-05-25)
------------------

* Feature - Amazon SageMaker Automatic Model Tuning now supports enabling Autotune for tuning jobs which can choose tuning job configurations.

1.180.0 (2023-05-24)
------------------

* Feature - SageMaker now provides an instantaneous deployment recommendation through the DescribeModel API

1.179.0 (2023-05-23)
------------------

* Feature - Added ModelNameEquals, ModelPackageVersionArnEquals in request and ModelName, SamplePayloadUrl, ModelPackageVersionArn in response of ListInferenceRecommendationsJobs API. Added Invocation timestamps in response of DescribeInferenceRecommendationsJob API & ListInferenceRecommendationsJobSteps API.

1.178.0 (2023-05-09)
------------------

* Feature - This release includes support for (1) Provisioned Concurrency for Amazon SageMaker Serverless Inference and (2) UpdateEndpointWeightsAndCapacities API for Serverless endpoints.

1.177.0 (2023-05-04)
------------------

* Feature - We added support for ml.inf2 and ml.trn1 family of instances on Amazon SageMaker for deploying machine learning (ML) models for Real-time and Asynchronous inference. You can use these instances to achieve high performance at a low cost for generative artificial intelligence (AI) models.

1.176.0 (2023-05-02)
------------------

* Feature - Amazon Sagemaker Autopilot supports training models with sample weights and additional objective metrics.

1.175.0 (2023-04-27)
------------------

* Feature - Added ml.p4d.24xlarge and ml.p4de.24xlarge as supported instances for SageMaker Studio

1.174.0 (2023-04-20)
------------------

* Feature - Amazon SageMaker Canvas adds ModelRegisterSettings support for CanvasAppSettings.

1.173.0 (2023-04-04)
------------------

* Feature - Amazon SageMaker Asynchronous Inference now allows customer's to receive failure model responses in S3 and receive success/failure model responses in SNS notifications.

1.172.0 (2023-04-04)
------------------

* Feature - Amazon SageMaker Asynchronous Inference now allows customer's to receive failure model responses in S3 and receive success/failure model responses in SNS notifications.

1.171.0 (2023-03-27)
------------------

* Feature - Fixed some improperly rendered links in SDK documentation.

1.170.0 (2023-03-23)
------------------

* Feature - Amazon SageMaker Autopilot adds two new APIs - CreateAutoMLJobV2 and DescribeAutoMLJobV2. Amazon SageMaker Notebook Instances now supports the ml.geospatial.interactive instance type.

1.169.0 (2023-03-09)
------------------

* Feature - Amazon SageMaker Inference now allows SSM access to customer's model container by setting the "EnableSSMAccess" parameter for a ProductionVariant in CreateEndpointConfig API.

1.168.0 (2023-03-08)
------------------

* Feature - There needs to be a user identity to specify the SageMaker user who perform each action regarding the entity. However, these is a not a unified concept of user identity across SageMaker service that could be used today.

1.167.0 (2023-03-02)
------------------

* Feature - Add a new field "EndpointMetrics" in SageMaker Inference Recommender "ListInferenceRecommendationsJobSteps" API response.

1.166.0 (2023-02-10)
------------------

* Feature - Amazon SageMaker Autopilot adds support for selecting algorithms in CreateAutoMLJob API.

1.165.0 (2023-01-31)
------------------

* Feature - Amazon SageMaker Automatic Model Tuning now supports more completion criteria for Hyperparameter Optimization.

1.164.0 (2023-01-27)
------------------

* Feature - This release supports running SageMaker Training jobs with container images that are in a private Docker registry.

1.163.0 (2023-01-25)
------------------

* Feature - SageMaker Inference Recommender now decouples from Model Registry and could accept Model Name to invoke inference recommendations job; Inference Recommender now provides CPU/Memory Utilization metrics data in recommendation output.

1.162.0 (2023-01-23)
------------------

* Feature - Amazon SageMaker Inference now supports P4de instance types.

1.161.0 (2023-01-19)
------------------

* Feature - HyperParameterTuningJobs now allow passing environment variables into the corresponding TrainingJobs

1.160.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.159.0 (2022-12-21)
------------------

* Feature - This release enables adding RStudio Workbench support to an existing Amazon SageMaker Studio domain. It allows setting your RStudio on SageMaker environment configuration parameters and also updating the RStudioConnectUrl and RStudioPackageManagerUrl parameters for existing domains

1.158.0 (2022-12-20)
------------------

* Feature - Amazon SageMaker Autopilot adds support for new objective metrics in CreateAutoMLJob API.

1.157.0 (2022-12-19)
------------------

* Feature - AWS Sagemaker - Sagemaker Images now supports Aliases as secondary identifiers for ImageVersions. SageMaker Images now supports additional metadata for ImageVersions for better images management.

1.156.0 (2022-12-16)
------------------

* Feature - AWS sagemaker - Features: This release adds support for random seed, it's an integer value used to initialize a pseudo-random number generator. Setting a random seed will allow the hyperparameter tuning search strategies to produce more consistent configurations for the same tuning job.

1.155.0 (2022-12-15)
------------------

* Feature - SageMaker Inference Recommender now allows customers to load tests their models on various instance types using private VPC.

1.154.0 (2022-11-30)
------------------

* Feature - Added Models as part of the Search API. Added Model shadow deployments in realtime inference, and shadow testing in managed inference. Added support for shared spaces, geospatial APIs, Model Cards, AutoMLJobStep in pipelines, Git repositories on user profiles and domains, Model sharing in Jumpstart.

1.153.0 (2022-11-18)
------------------

* Feature - Added DisableProfiler flag as a new field in ProfilerConfig

1.152.0 (2022-11-03)
------------------

* Feature - Amazon SageMaker now supports running training jobs on ml.trn1 instance types.

1.151.0 (2022-11-02)
------------------

* Feature - This release updates Framework model regex for ModelPackage to support new Framework version xgboost, sklearn.

1.150.0 (2022-10-27)
------------------

* Feature - This change allows customers to provide a custom entrypoint script for the docker container to be run while executing training jobs, and provide custom arguments to the entrypoint script.

1.149.0 (2022-10-26)
------------------

* Feature - Amazon SageMaker Automatic Model Tuning now supports specifying Grid Search strategy for tuning jobs, which evaluates all hyperparameter combinations exhaustively based on the categorical hyperparameters provided.

1.148.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.147.0 (2022-10-24)
------------------

* Feature - SageMaker Inference Recommender now supports a new API ListInferenceRecommendationJobSteps to return the details of all the benchmark we create for an inference recommendation job.

1.146.0 (2022-10-21)
------------------

* Feature - CreateInferenceRecommenderjob API now supports passing endpoint details directly, that will help customers to identify the max invocation and max latency they can achieve for their model and the associated endpoint along with getting recommendations on other instances.

1.145.0 (2022-10-18)
------------------

* Feature - This change allows customers to enable data capturing while running a batch transform job, and configure monitoring schedule to monitoring the captured data.

1.144.0 (2022-10-17)
------------------

* Feature - This release adds support for C7g, C6g, C6gd, C6gn, M6g, M6gd, R6g, and R6gn Graviton instance types in Amazon SageMaker Inference.

1.143.0 (2022-09-30)
------------------

* Feature - A new parameter called ExplainerConfig is added to CreateEndpointConfig API to enable SageMaker Clarify online explainability feature.

1.142.0 (2022-09-29)
------------------

* Feature - SageMaker Training Managed Warm Pools let you retain provisioned infrastructure to reduce latency for repetitive training workloads.

1.141.0 (2022-09-21)
------------------

* Feature - SageMaker now allows customization on Canvas Application settings, including enabling/disabling time-series forecasting and specifying an Amazon Forecast execution role at both the Domain and UserProfile levels.

1.140.0 (2022-09-15)
------------------

* Feature - Amazon SageMaker Automatic Model Tuning now supports specifying Hyperband strategy for tuning jobs, which uses a multi-fidelity based tuning strategy to stop underperforming hyperparameter configurations early.

1.139.0 (2022-09-08)
------------------

* Feature - This release adds Mode to AutoMLJobConfig.

1.138.0 (2022-09-07)
------------------

* Feature - SageMaker Hosting now allows customization on ML instance storage volume size, model data download timeout and inference container startup ping health check timeout for each ProductionVariant in CreateEndpointConfig API.

1.137.0 (2022-09-06)
------------------

* Feature - This release adds HyperParameterTuningJob type in Search API.

1.136.0 (2022-09-02)
------------------

* Feature - This release enables administrators to attribute user activity and API calls from Studio notebooks, Data Wrangler and Canvas to specific users even when users share the same execution IAM role.  ExecutionRoleIdentityConfig at Sagemaker domain level enables this feature.

1.135.0 (2022-08-31)
------------------

* Feature - SageMaker Inference Recommender now accepts Inference Recommender fields: Domain, Task, Framework, SamplePayloadUrl, SupportedContentTypes, SupportedInstanceTypes, directly in our CreateInferenceRecommendationsJob API through ContainerConfig

1.134.0 (2022-08-09)
------------------

* Feature - Amazon SageMaker Automatic Model Tuning now supports specifying multiple alternate EC2 instance types to make tuning jobs more robust when the preferred instance type is not available due to insufficient capacity.

1.133.0 (2022-07-19)
------------------

* Feature - Fixed an issue with cross account QueryLineage

1.132.0 (2022-07-18)
------------------

* Feature - Amazon SageMaker Edge Manager provides lightweight model deployment feature to deploy machine learning models on requested devices.

1.131.0 (2022-07-14)
------------------

* Feature - This release adds support for G5, P4d, and C6i instance types in Amazon SageMaker Inference and increases the number of hyperparameters that can be searched from 20 to 30 in Amazon SageMaker Automatic Model Tuning

1.130.0 (2022-07-07)
------------------

* Feature - Heterogeneous clusters: the ability to launch training jobs with multiple instance types. This enables running component of the training job on the instance type that is most suitable for it. e.g. doing data processing and augmentation on CPU instances and neural network training on GPU instances

1.129.0 (2022-06-29)
------------------

* Feature - This release adds: UpdateFeatureGroup, UpdateFeatureMetadata, DescribeFeatureMetadata APIs; FeatureMetadata type in Search API; LastModifiedTime, LastUpdateStatus, OnlineStoreTotalSizeBytes in DescribeFeatureGroup API.

1.128.0 (2022-06-23)
------------------

* Feature - SageMaker Ground Truth now supports Virtual Private Cloud. Customers can launch labeling jobs and access to their private workforce in VPC mode.

1.127.0 (2022-05-31)
------------------

* Feature - Amazon SageMaker Notebook Instances now support Jupyter Lab 3.

1.126.0 (2022-05-27)
------------------

* Feature - Amazon SageMaker Notebook Instances now allows configuration of Instance Metadata Service version and Amazon SageMaker Studio now supports G5 instance types.

1.125.0 (2022-05-25)
------------------

* Feature - Amazon SageMaker Autopilot adds support for manually selecting features from the input dataset using the CreateAutoMLJob API.

1.124.0 (2022-05-03)
------------------

* Feature - SageMaker Autopilot adds new metrics for all candidate models generated by Autopilot experiments; RStudio on SageMaker now allows users to bring your own development environment in a custom image.

1.123.0 (2022-04-27)
------------------

* Feature - Amazon SageMaker Autopilot adds support for custom validation dataset and validation ratio through the CreateAutoMLJob and DescribeAutoMLJob APIs.

1.122.0 (2022-04-26)
------------------

* Feature - SageMaker Inference Recommender now accepts customer KMS key ID for encryption of endpoints and compilation outputs created during inference recommendation.

1.121.0 (2022-04-07)
------------------

* Feature - Amazon Sagemaker Notebook Instances now supports G5 instance types

1.120.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.119.0 (2022-02-08)
------------------

* Feature - Autopilot now generates an additional report with information on the performance of the best model, such as a Confusion matrix and  Area under the receiver operating characteristic (AUC-ROC). The path to the report can be found in CandidateArtifactLocations.

1.118.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.117.0 (2022-01-28)
------------------

* Feature - This release added a new NNA accelerator compilation support for Sagemaker Neo.

1.116.0 (2022-01-26)
------------------

* Feature - API changes relating to Fail steps in model building pipeline and add PipelineExecutionFailureReason in PipelineExecutionSummary.

1.115.0 (2022-01-05)
------------------

* Feature - Amazon SageMaker now supports running training jobs on ml.g5 instance types.

1.114.0 (2022-01-03)
------------------

* Feature - The release allows users to pass pipeline definitions as Amazon S3 locations and control the pipeline execution concurrency using ParallelismConfiguration. It also adds support of EMR jobs as pipeline steps.

1.113.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.112.0 (2021-12-20)
------------------

* Feature - This release adds a new ContentType field in AutoMLChannel for SageMaker CreateAutoMLJob InputDataConfig.

1.111.0 (2021-12-08)
------------------

* Feature - This release added a new Ambarella device(amba_cv2) compilation support for Sagemaker Neo.

1.110.0 (2021-12-01)
------------------

* Feature - This release enables - 1/ Inference endpoint configuration recommendations and ability to run custom load tests to meet performance needs. 2/ Deploy serverless inference endpoints. 3/ Query, filter and retrieve end-to-end ML lineage graph, and incorporate model quality/bias detection in ML workflow.

1.109.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.108.0 (2021-11-08)
------------------

* Feature - SageMaker CreateEndpoint and UpdateEndpoint APIs now support additional deployment configuration to manage traffic shifting options and automatic rollback monitoring. DescribeEndpoint now shows new in-progress deployment details with stage status.

1.107.0 (2021-11-04)
------------------

* Feature - ListDevices and DescribeDevice now show Edge Manager agent version.

1.106.0 (2021-10-28)
------------------

* Feature - This release adds support for RStudio on SageMaker.

1.105.0 (2021-10-27)
------------------

* Feature - This release allows customers to describe one or more versioned model packages through BatchDescribeModelPackage, update project via UpdateProject, modify and read customer metadata properties using Create, Update and Describe ModelPackage and enables cross account registration of model packages.

1.104.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.103.0 (2021-10-14)
------------------

* Feature - This release updates the provisioning artifact ID to an optional parameter in CreateProject API. The provisioning artifact ID defaults to the latest provisioning artifact ID of the product if you don't provide one.

1.102.0 (2021-10-06)
------------------

* Feature - This release adds a new TrainingInputMode FastFile for SageMaker Training APIs.

1.101.0 (2021-09-16)
------------------

* Feature - Add API for users to retry a failed pipeline execution or resume a stopped one.

1.100.0 (2021-09-14)
------------------

* Feature - This release adds support for "Project Search"

1.99.0 (2021-09-10)
------------------

* Feature - This release adds support for "Lifecycle Configurations" to SageMaker Studio

1.98.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.97.0 (2021-08-18)
------------------

* Feature - Amazon SageMaker now supports Asynchronous Inference endpoints. Adds PlatformIdentifier field that allows Notebook Instance creation with different platform selections. Increases the maximum number of containers in multi-container endpoints to 15. Adds more instance types to InstanceType field.

1.96.0 (2021-08-12)
------------------

* Feature - Amazon SageMaker Autopilot adds new metrics for all candidate models generated by Autopilot experiments.

1.95.0 (2021-07-30)
------------------

* Feature - API changes with respect to Lambda steps in model building pipelines. Adds several waiters to async Sagemaker Image APIs. Add more instance types to AppInstanceType field

1.94.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2021-07-09)
------------------

* Feature - Releasing new APIs related to Tuning steps in model building pipelines.

1.92.0 (2021-07-01)
------------------

* Feature - SageMaker model registry now supports up to 5 containers and associated environment variables.

1.91.0 (2021-06-28)
------------------

* Feature - Sagemaker Neo now supports running compilation jobs using customer's Amazon VPC

1.90.0 (2021-06-17)
------------------

* Feature - Enable ml.g4dn instance types for SageMaker Batch Transform and SageMaker Processing

1.89.0 (2021-06-10)
------------------

* Feature - Using SageMaker Edge Manager with AWS IoT Greengrass v2 simplifies accessing, maintaining, and deploying models to your devices. You can now create deployable IoT Greengrass components during edge packaging jobs. You can choose to create a device fleet with or without creating an AWS IoT role alias.

1.88.0 (2021-06-07)
------------------

* Feature - AWS SageMaker - Releasing new APIs related to Callback steps in model building pipelines. Adds experiment integration to model building pipelines.

1.87.0 (2021-05-05)
------------------

* Feature - Amazon SageMaker Autopilot now provides the ability to automatically deploy the best model to an endpoint

1.86.0 (2021-05-04)
------------------

* Feature - Enable retrying Training and Tuning Jobs that fail with InternalServerError by setting RetryStrategy.

1.85.0 (2021-03-30)
------------------

* Feature - Amazon SageMaker Autopilot now supports 1) feature importance reports for AutoML jobs and 2) PartialFailures for AutoML jobs

1.84.0 (2021-03-25)
------------------

* Feature - This feature allows customer to specify the environment variables in their CreateTrainingJob requests.

1.83.0 (2021-03-19)
------------------

* Feature - Adding authentication support for pulling images stored in private Docker registries to build containers for real-time inference.

1.82.0 (2021-03-17)
------------------

* Feature - Support new target device ml_eia2 in SageMaker CreateCompilationJob API

1.81.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2021-03-04)
------------------

* Feature - This release adds the ResolvedOutputS3Uri to the DescribeFeatureGroup API to indicate the S3 prefix where offline data is stored in a feature group

1.79.0 (2021-02-22)
------------------

* Feature - Amazon SageMaker now supports core dump for SageMaker Endpoints and direct invocation of a single container in a SageMaker Endpoint that hosts multiple containers.

1.78.0 (2021-02-18)
------------------

* Feature - This release adds expires-in-seconds parameter to the CreatePresignedDomainUrl API for support of a configurable TTL.

1.77.0 (2021-02-09)
------------------

* Feature - Add a new optional FrameworkVersion field to Sagemaker Neo CreateCompilationJob API

1.76.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.75.0 (2021-01-14)
------------------

* Feature - This feature allows customers to enable/disable model caching on Multi-Model endpoints.

1.74.0 (2020-12-08)
------------------

* Feature - This feature helps you monitor model performance characteristics such as accuracy, identify undesired bias in your ML models, and explain model decisions better with explainability drift detection.

1.73.0 (2020-12-01)
------------------

* Feature - Amazon SageMaker Pipelines for ML workflows. Amazon SageMaker Feature Store, a fully managed repository for ML features.

1.72.0 (2020-11-16)
------------------

* Feature - This feature enables customers to encrypt their Amazon SageMaker Studio storage volumes with customer master keys (CMKs) managed by them in AWS Key Management Service (KMS).

1.71.0 (2020-10-26)
------------------

* Feature - This release enables customers to bring custom images for use with SageMaker Studio notebooks.

1.70.0 (2020-10-08)
------------------

* Feature - This release enables Sagemaker customers to convert Tensorflow and PyTorch models to CoreML (ML Model) format.

1.69.0 (2020-10-05)
------------------

* Feature - This release adds support for launching Amazon SageMaker Studio in your VPC. Use AppNetworkAccessType in CreateDomain API to disable access to public internet and restrict the network traffic to VPC.

1.68.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2020-09-15)
------------------

* Feature - Sagemaker Ground Truth: Added support for a new Streaming feature which helps to continuously feed data and receive labels in real time. This release adds a new input and output SNS data channel.

1.66.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2020-08-14)
------------------

* Feature - Amazon SageMaker now supports 1) creating real-time inference endpoints using model container images from Docker registries in customers' VPC 2) AUC(Area under the curve) as AutoPilot objective metric

1.64.0 (2020-07-24)
------------------

* Feature - Sagemaker Ground Truth:Added support for OIDC (OpenID Connect) to authenticate workers via their own identity provider instead of through Amazon Cognito. This release adds new APIs (CreateWorkforce, DeleteWorkforce, and ListWorkforces) to SageMaker Ground Truth service.  Sagemaker Neo: Added support for detailed target device description by using TargetPlatform fields - OS, architecture, and accelerator. Added support for additional compilation parameters by using JSON field CompilerOptions.  Sagemaker Search: SageMaker Search supports transform job details in trial components.

1.63.0 (2020-07-09)
------------------

* Feature - This release adds the DeleteHumanTaskUi API to Amazon Augmented AI

1.62.0 (2020-06-26)
------------------

* Feature - The new 'ModelClientConfig' parameter being added for CreateTransformJob and DescribeTransformJob api actions enable customers to configure model invocation related parameters such as timeout and retry.

1.61.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.60.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2020-06-01)
------------------

* Feature - We are releasing HumanTaskUiArn as a new parameter in CreateLabelingJob and RenderUiTemplate which can take an ARN for a system managed UI to render a task.

1.58.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2020-05-08)
------------------

* Feature - This release adds a new parameter (EnableInterContainerTrafficEncryption) to CreateProcessingJob API to allow for enabling inter-container traffic encryption on processing jobs.

1.56.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2020-04-27)
------------------

* Feature - Change to the input, ResourceSpec, changing EnvironmentArn to SageMakerImageArn. This affects the following preview APIs: CreateDomain, DescribeDomain, UpdateDomain, CreateUserProfile, DescribeUserProfile, UpdateUserProfile, CreateApp and DescribeApp.

1.54.0 (2020-04-16)
------------------

* Feature - Amazon SageMaker now supports running training jobs on ml.g4dn and ml.c5n instance types. Amazon SageMaker supports in "IN" operation for Search now.

1.53.0 (2020-03-26)
------------------

* Feature - This release updates Amazon Augmented AI CreateFlowDefinition API and DescribeFlowDefinition response.

1.52.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2020-02-26)
------------------

* Feature - SageMaker UpdateEndpoint API now supports retained variant properties, e.g., instance count, variant weight. SageMaker ListTrials API filter by TrialComponentName. Make ExperimentConfig name length limits consistent with CreateExperiment, CreateTrial, and CreateTrialComponent APIs.

1.50.0 (2020-01-16)
------------------

* Feature - This release adds two new APIs (UpdateWorkforce and DescribeWorkforce) to SageMaker Ground Truth service for workforce IP whitelisting.

1.49.0 (2020-01-10)
------------------

* Feature - SageMaker ListTrialComponents API filter by TrialName and ExperimentName.

1.48.0 (2019-12-04)
------------------

* Feature - You can now use SageMaker Autopilot for automatically training and tuning candidate models using a combination of various feature engineering, ML algorithms, and hyperparameters determined from the user's input data. SageMaker Automatic Model Tuning now supports tuning across multiple algorithms. With Amazon SageMaker Experiments users can create Experiments, ExperimentTrials, and ExperimentTrialComponents to track, organize, and evaluate their ML training jobs. With Amazon SageMaker Debugger, users can easily debug training jobs using a number of pre-built rules provided by Amazon SageMaker, or build custom rules. With Amazon SageMaker Processing, users can run on-demand, distributed, and fully managed jobs for data pre- or post- processing or model evaluation. With Amazon SageMaker Model Monitor, a user can create MonitoringSchedules to automatically monitor endpoints to detect data drift and other issues and get alerted on them. This release also includes the preview version of Amazon SageMaker Studio with Domains, UserProfiles, and Apps. This release also includes the preview version of Amazon Augmented AI to easily implement human review of machine learning predictions by creating FlowDefinitions, HumanTaskUis, and HumanLoops.

1.47.0 (2019-11-18)
------------------

* Feature - Amazon SageMaker now supports multi-model endpoints to host multiple models on an endpoint using a single inference container.

1.46.0 (2019-10-24)
------------------

* Feature - Adds support for the new family of Elastic Inference Accelerators (eia2) for SageMaker Hosting and Notebook Services

1.45.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2019-09-25)
------------------

* Feature - Enable G4D and R5 instances in SageMaker Hosting Services

1.43.0 (2019-08-21)
------------------

* Feature - Amazon SageMaker now supports Amazon EFS and Amazon FSx for Lustre file systems as data sources for training machine learning models. Amazon SageMaker now supports running training jobs on ml.p3dn.24xlarge instance type. This instance type is offered as a limited private preview for certain SageMaker customers. If you are interested in joining the private preview, please reach out to the SageMaker Product Management team via AWS Support."

1.42.0 (2019-08-20)
------------------

* Feature - Amazon SageMaker introduces Managed Spot Training. Increases the maximum number of metric definitions to 40 for SageMaker Training and Hyperparameter Tuning Jobs. SageMaker Neo adds support for Acer aiSage and Qualcomm QCS605 and QCS603.

1.41.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2019-06-11)
------------------

* Feature - The default TaskTimeLimitInSeconds of labeling job is increased to 8 hours. Batch Transform introduces a new DataProcessing field which supports input and output filtering and data joining. Training job increases the max allowed input channels from 8 to 20.

1.37.0 (2019-05-21)
------------------

* Feature - API update.

1.36.0 (2019-05-15)
------------------

* Feature - API update.

1.35.0 (2019-05-14)
------------------

* Feature - API update.

1.34.0 (2019-05-08)
------------------

* Feature - API update.

1.33.0 (2019-03-22)
------------------

* Feature - API update.

1.32.0 (2019-03-21)
------------------

* Feature - API update.

1.31.0 (2019-03-18)
------------------

* Feature - API update.

1.30.0 (2019-03-14)
------------------

* Feature - API update.

1.29.0 (2019-03-08)
------------------

* Feature - API update.

1.28.0 (2019-01-10)
------------------

* Feature - API update.

1.27.0 (2018-12-19)
------------------

* Feature - API update.

1.26.0 (2018-12-12)
------------------

* Feature - API update.

1.25.0 (2018-11-29)
------------------

* Feature - API update.

1.24.0 (2018-11-20)
------------------

* Feature - API update.

1.23.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.23.0 (2018-11-14)
------------------

* Feature - API update.

1.22.0 (2018-10-26)
------------------

* Feature - API update.

1.21.0 (2018-10-24)
------------------

* Feature - API update.

1.20.0 (2018-10-23)
------------------

* Feature - API update.

1.19.0 (2018-10-02)
------------------

* Feature - API update.

1.18.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.17.0 (2018-09-05)
------------------

* Feature - API update.

1.16.0 (2018-08-30)
------------------

* Feature - API update.

1.15.0 (2018-08-17)
------------------

* Feature - API update.

1.14.0 (2018-08-13)
------------------

* Feature - API update.

1.13.0 (2018-07-30)
------------------

* Feature - API update.

1.12.0 (2018-07-17)
------------------

* Feature - API update.

1.11.0 (2018-07-05)
------------------

* Feature - API update.

1.10.0 (2018-06-26)
------------------

* Feature - API update.

1.9.0 (2018-06-04)
------------------

* Feature - API update.

1.8.0 (2018-04-30)
------------------

* Feature - API update.

1.7.0 (2018-04-04)
------------------

* Feature - API update.

1.6.0 (2018-03-15)
------------------

* Feature - API update.

1.5.0 (2018-01-18)
------------------

* Feature - API update.

1.4.0 (2017-12-22)
------------------

* Feature - API update.

1.3.0 (2017-12-11)
------------------

* Feature - API update.

1.2.0 (2017-12-06)
------------------

* Feature - API update.

1.1.0 (2017-12-01)
------------------

* Feature - API update.

1.0.0 (2017-11-29)
------------------

* Feature - Initial release of `aws-sdk-sagemaker`.
