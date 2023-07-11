Unreleased Changes
------------------

1.36.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2023-07-06)
------------------

* Feature - This release adds support for authenticating with Amazon Location Service's Places & Routes APIs with an API Key. Also, with this release developers can publish tracked device position updates to Amazon EventBridge.

1.34.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2023-06-15)
------------------

* Feature - Amazon Location Service adds categories to places, including filtering on those categories in searches. Also, you can now add metadata properties to your geofences.

1.32.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2023-05-30)
------------------

* Feature - This release adds API support for political views for the maps service APIs: CreateMap, UpdateMap, DescribeMap.

1.30.0 (2023-03-07)
------------------

* Feature - Documentation update for the release of 3 additional map styles for use with Open Data Maps: Open Data Standard Dark, Open Data Visualization Light & Open Data Visualization Dark.

1.29.0 (2023-02-23)
------------------

* Feature - This release adds support for using Maps APIs with an API Key in addition to AWS Cognito. This includes support for adding, listing, updating and deleting API Keys.

1.28.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.27.0 (2023-01-10)
------------------

* Feature - This release adds support for two new route travel models, Bicycle and Motorcycle which can be used with Grab data source.

1.26.0 (2022-12-15)
------------------

* Feature - This release adds support for a new style, "VectorOpenDataStandardLight" which can be used with the new data source, "Open Data Maps (Preview)".

1.25.0 (2022-10-25)
------------------

* Feature - Added new map styles with satellite imagery for map resources using HERE as a data provider.

1.24.0 (2022-09-27)
------------------

* Feature - This release adds place IDs, which are unique identifiers of places, along with a new GetPlace operation, which can be used with place IDs to find a place again later. UnitNumber and UnitType are also added as new properties of places.

1.23.0 (2022-08-09)
------------------

* Feature - Amazon Location Service now allows circular geofences in BatchPutGeofence, PutGeofence, and GetGeofence  APIs.

1.22.0 (2022-05-06)
------------------

* Feature - Amazon Location Service now includes a MaxResults parameter for ListGeofences requests.

1.21.0 (2022-03-22)
------------------

* Feature - Amazon Location Service now includes a MaxResults parameter for GetDevicePositionHistory requests.

1.20.0 (2022-03-15)
------------------

* Feature - New HERE style "VectorHereExplore" and "VectorHereExploreTruck".

1.19.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2022-01-18)
------------------

* Feature - This release adds the CalculateRouteMatrix API which calculates routes for the provided departure and destination positions. The release also deprecates the use of pricing plan across all verticals.

1.16.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2021-12-20)
------------------

* Feature - Making PricingPlan optional as part of create resource API.

1.14.0 (2021-12-06)
------------------

* Feature - This release adds support for Accuracy position filtering, position metadata and autocomplete for addresses and points of interest based on partial or misspelled free-form text.

1.13.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2021-11-16)
------------------

* Feature - This release adds the support for Relevance, Distance, Time Zone, Language and Interpolated Address for Geocoding and Reverse Geocoding.

1.11.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2021-10-05)
------------------

* Feature - Add support for PositionFiltering.

1.8.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2021-07-19)
------------------

* Feature - Add five new API operations: UpdateGeofenceCollection, UpdateMap, UpdatePlaceIndex, UpdateRouteCalculator, UpdateTracker.

1.4.0 (2021-05-28)
------------------

* Feature - Adds support for calculation of routes, resource tagging and customer provided KMS keys.

1.3.0 (2021-03-29)
------------------

* Feature - Amazon Location added support for specifying pricing plan information on resources in alignment with our cost model.

1.2.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2021-02-02)
------------------

* Feature - Doc only update for Amazon Location Maps that fixes a customer related issue regarding MapConfiguration

1.0.0 (2020-12-16)
------------------

* Feature - Initial release of `aws-sdk-locationservice`.

