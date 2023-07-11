Unreleased Changes
------------------

1.85.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.81.0 (2023-06-12)
------------------

* Feature - This release adds support for improved accuracy with user vector in Amazon Rekognition Face Search. Adds new APIs: AssociateFaces, CreateUser, DeleteUser, DisassociateFaces, ListUsers, SearchUsers, SearchUsersByImage. Also adds new face metadata that can be stored: user vector.

1.80.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2023-05-15)
------------------

* Feature - This release adds a new EyeDirection attribute in Amazon Rekognition DetectFaces and IndexFaces APIs which predicts the yaw and pitch angles of a person's eye gaze direction for each face detected in the image.

1.78.0 (2023-05-04)
------------------

* Feature - This release adds a new attribute FaceOccluded. Additionally, you can now select attributes individually (e.g. ["DEFAULT", "FACE_OCCLUDED", "AGE_RANGE"] instead of ["ALL"]), which can reduce response time.

1.77.0 (2023-04-28)
------------------

* Feature - Added support for aggregating moderation labels by video segment timestamps for Stored Video Content Moderation APIs and added additional information about the job to all Stored Video Get API responses.

1.76.0 (2023-04-24)
------------------

* Feature - Added new status result to Liveness session status.

1.75.0 (2023-04-10)
------------------

* Feature - This release adds support for Face Liveness APIs in Amazon Rekognition. Updates UpdateStreamProcessor to return ResourceInUseException Exception. Minor updates to API documentation.

1.74.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.73.0 (2022-12-12)
------------------

* Feature - Adds support for "aliases" and "categories", inclusion and exclusion filters for labels and label categories, and aggregating labels by video segment timestamps for Stored Video Label Detection APIs.

1.72.0 (2022-11-11)
------------------

* Feature - Adding support for ImageProperties feature to detect dominant colors and image brightness, sharpness, and contrast, inclusion and exclusion filters for labels and label categories, new fields to the API response, "aliases" and "categories"

1.71.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2022-08-16)
------------------

* Feature - This release adds APIs which support copying an Amazon Rekognition Custom Labels model and managing project policies across AWS account.

1.69.0 (2022-07-26)
------------------

* Feature - This release introduces support for the automatic scaling of inference units used by Amazon Rekognition Custom Labels models.

1.68.0 (2022-05-16)
------------------

* Feature - Documentation updates for Amazon Rekognition.

1.67.0 (2022-04-27)
------------------

* Feature - This release adds support to configure stream-processor resources for label detections on streaming-videos. UpateStreamProcessor API is also launched with this release, which could be used to update an existing stream-processor.

1.66.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2022-01-04)
------------------

* Feature - This release introduces a new field IndexFacesModelVersion, which is the version of the face detect and storage model that was used when indexing the face vector.

1.63.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2021-12-03)
------------------

* Feature - This release added new KnownGender types for Celebrity Recognition.

1.61.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2021-11-01)
------------------

* Feature - This Amazon Rekognition Custom Labels release introduces the management of datasets with  projects

1.58.0 (2021-10-29)
------------------

* Feature - This release added new attributes to Rekognition Video GetCelebrityRecognition API operations.

1.57.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2021-08-26)
------------------

* Feature - This release added new attributes to Rekognition RecognizeCelebities and GetCelebrityInfo API operations.

1.54.0 (2021-08-09)
------------------

* Feature - This release adds support for four new types of segments (opening credits, content segments, slates, and studio logos), improved accuracy for credits and shot detection and new filters to control black frame detection.

1.53.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2021-05-19)
------------------

* Feature - Amazon Rekognition Custom Labels adds support for customer managed encryption, using AWS Key Management Service, of image files copied into the service and files written back to the customer.

1.50.0 (2021-03-25)
------------------

* Feature - This release introduces AWS tagging support for Amazon Rekognition collections, stream processors, and Custom Label models.

1.49.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2020-10-15)
------------------

* Feature - This SDK Release introduces new API (DetectProtectiveEquipment) for Amazon Rekognition. This release also adds ServiceQuotaExceeded exception to Amazon Rekognition IndexFaces API.

1.46.0 (2020-10-08)
------------------

* Feature - This release provides location information for the manifest validation files.

1.45.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2020-06-22)
------------------

* Feature - This update adds the ability to detect black frames, end credits, shots, and color bars in stored videos

1.39.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.39.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2020-03-31)
------------------

* Feature - This release adds DeleteProject and DeleteProjectVersion APIs to Amazon Rekognition Custom Labels.

1.35.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2020-02-17)
------------------

* Feature - This update adds the ability to detect text in videos and adds filters to image and video text detection.

1.33.0 (2019-12-04)
------------------

* Feature - This SDK Release introduces APIs for Amazon Rekognition Custom Labels feature (CreateProjects, CreateProjectVersion,DescribeProjects, DescribeProjectVersions, StartProjectVersion, StopProjectVersion and DetectCustomLabels).  Also new is  AugmentedAI (Human In The Loop) Support for DetectModerationLabels in Amazon Rekognition.

1.32.0 (2019-11-22)
------------------

* Feature - This release adds enhanced face filtering support to the IndexFaces API operation, and introduces face filtering for CompareFaces and SearchFacesByImage API operations.

1.31.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2019-08-21)
------------------

* Feature - Documentation updates for Amazon Rekognition.

1.29.0 (2019-08-12)
------------------

* Feature - Adding new Emotion, Fear

1.28.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2019-05-21)
------------------

* Feature - API update.

1.24.0 (2019-05-15)
------------------

* Feature - API update.

1.23.0 (2019-05-14)
------------------

* Feature - API update.

1.22.0 (2019-03-21)
------------------

* Feature - API update.

1.21.0 (2019-03-18)
------------------

* Feature - API update.

1.20.0 (2019-03-14)
------------------

* Feature - API update.

1.19.0 (2019-03-11)
------------------

* Feature - API update.

1.18.0 (2019-02-13)
------------------

* Feature - API update.

1.17.0 (2019-01-17)
------------------

* Feature - API update.

1.16.0 (2018-11-21)
------------------

* Feature - API update.

1.15.0 (2018-11-20)
------------------

* Feature - API update.

1.14.0 (2018-11-02)
------------------

* Feature - API update.

1.13.0 (2018-10-24)
------------------

* Feature - API update.

1.12.0 (2018-10-23)
------------------

* Feature - API update.

1.11.0 (2018-10-01)
------------------

* Feature - API update.

1.10.0 (2018-09-18)
------------------

* Feature - API update.

1.9.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.8.0 (2018-09-05)
------------------

* Feature - API update.

1.7.0 (2018-09-04)
------------------

* Feature - API update.

1.6.0 (2018-08-23)
------------------

* Feature - API update.

1.5.0 (2018-06-26)
------------------

* Feature - API update.

1.4.0 (2018-06-19)
------------------

* Feature - API update.

1.3.0 (2018-04-25)
------------------

* Feature - API update.

1.2.0 (2017-11-29)
------------------

* Feature - API update.

1.1.0 (2017-11-22)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-rekognition` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc17 (2017-08-24)
------------------

* Feature - API update.

1.0.0.rc16 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc15 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc14 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc13 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc12 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc11 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc10 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc9 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc8 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc7 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-05)
------------------

* Feature - API update.

1.0.0.rc5 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc4 (2017-03-07)
------------------

* Feature - API update.

1.0.0.rc3 (2017-01-24)
------------------

* Feature - API update.

1.0.0.rc2 (2016-12-09)
------------------

* Feature - Initial release of `aws-sdk-rekognition`.
