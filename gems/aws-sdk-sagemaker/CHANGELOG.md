Unreleased Changes
------------------

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