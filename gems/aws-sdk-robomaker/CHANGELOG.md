Unreleased Changes
------------------

1.19.0 (2020-02-07)
------------------

* Feature - This release adds support for simulation job batches

1.18.0 (2019-11-04)
------------------

* Feature - RoboMaker Fleet Management launch a feature to verify your robot is ready to download and install the new robot application using a download condition file, which is a script run on the robot prior to downloading the new deployment.

1.17.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2019-10-16)
------------------

* Feature - This release adds support for ROS2 Dashing as a beta feature

1.15.0 (2019-09-09)
------------------

* Feature - Support for Connectivity to Simulation. When you need to interact with the applications in your simulation job, you can connect to your robot application or simulation application with port forwarding. When you configure port forwarding, traffic will be forwarded from the simulation job port to the application port. Port forwarding makes it easy to connect with tools such as ROS Bridge and other tools. This can be useful when you want to debug or run custom tools to interact with your applications.

1.14.0 (2019-08-16)
------------------

* Feature - Two feature release: 1. AWS RoboMaker introduces log-based simulation. Log-based simulation allows you to play back pre-recorded log data such as sensor streams for testing robotic functions like localization, mapping, and object detection. Use the AWS RoboMaker SDK to test your robotic applications.  2.  AWS RoboMaker allow customer to setup a robot deployment timeout when CreateDeploymentJob.

1.13.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2019-07-12)
------------------

* Feature - Added Melodic as a supported Robot Software Suite Version

1.11.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2019-06-17)
------------------

* Feature - Add the ServiceUnavailableException (503) into CreateSimulationJob API.

1.9.0 (2019-05-28)
------------------

* Feature - Added support for an additional robot software suite (Gazebo 9) and for cancelling deployment jobs.

1.8.0 (2019-05-21)
------------------

* Feature - API update.

1.7.0 (2019-05-15)
------------------

* Feature - API update.

1.6.0 (2019-05-14)
------------------

* Feature - API update.

1.5.0 (2019-03-25)
------------------

* Feature - API update.

1.4.0 (2019-03-21)
------------------

* Feature - API update.

1.3.0 (2019-03-18)
------------------

* Feature - API update.

1.2.0 (2019-03-14)
------------------

* Feature - API update.

1.1.0 (2019-02-07)
------------------

* Feature - API update.

1.0.0 (2018-11-26)
------------------

* Feature - Initial release of `aws-sdk-robomaker`.

