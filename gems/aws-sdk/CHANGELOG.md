3.0.0.rc3 (2017-01-24)
------------------

* Feature - Added a dependency on the new `aws-sdk-batch` gem.

* Issue - Added an explicit `require 'aws-sdk-core'` statement to this gem at
  load time. This is necessary to allow users to interact with `Aws.config`
  and shared configuration classes prior to loading a service gem.

3.0.0.rc2 (2016-12-09)
------------------

* Feature - Added a dependency on the new `aws-sdk-xray` gem.

* Feature - Added a dependency on the new `aws-sdk-wafregional` gem.

* Feature - Added a dependency on the new `aws-sdk-shield` gem.

* Feature - Added a dependency on the new `aws-sdk-sfn` gem.

* Feature - Added a dependency on the new `aws-sdk-rekognition` gem.

* Feature - Added a dependency on the new `aws-sdk-polly` gem.

* Feature - Added a dependency on the new `aws-sdk-pinpoint` gem.

* Feature - Added a dependency on the new `aws-sdk-opsworkscm` gem.

* Feature - Added a dependency on the new `aws-sdk-lightsail` gem.

* Feature - Added a dependency on the new `aws-sdk-health` gem.

* Feature - Added a dependency on the new `aws-sdk-codebuild` gem.

* Feature - Added a dependency on the new `aws-sdk-appstream` gem.

3.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk` gem.

