# TODO (Must haves)

* add #first method to collection classes.

* Decide how to deal with cross-service dependencies. Known deps:
  aws-sdk-s3 => aws-sdk-kms (for encryption client, encryption/client.rb)

* Documentation is not correctly formatted, services are all
  appearing under Aws >, instead of under Services >

* Client#initialize methods are not being documented currently.

* use_accelerate_endpoint: option docs missing from Aws::S3::Client

* Currently there is an ALIAS for Struct = Structure in aws-sdk-core.
  This is a work-around for YARD documentation bugs with struct.
  Rename the actual class from Aws::Structure to Aws::Struct
  and reverse the alias for backwards compatabilty.

* Add documentation for `:response_target` to streaming operations
  like get_object.

* Silence the documentation of the options = {} after params = {}
  in the client class operations.

* Remove the VERSION file from the repo root and replace with gem
  specific versions.

* Update the aws-sdk-core version to 3.0

* Move service specific specs from aws-sdk-resources and aws-sdk-core
  into gem files.

* Migrate resource interface docs from doc-src/plugins/resources.rb
  and aws-sdk-resources/.../documentation into code generator

* Decide the fate of Aws.add_service
  - its not possible to support without a dependency on aws-sdk-code-generator
  - minor API break if passing instance of API

* Verify protocol (un)marshallers and plugins that deal with output shapes
  are functional with no input or output shape ref

* Move EC2 protocol code into ec2 gem

* Remove metadata from shapes, move these attributes onto the
  shapes themselves.

  consider creating a structure shape ref which can be required,
  leaving vanilla shape ref without.

* Add a YARD tag for each of the services to document which gem it is available
  from.

* Implement support for resource collection batch actions. Currently, the
  generated methods are non-functional.

* `Aws::S3::Client` had previously modified the API model prior to generating
   API documentation that added an `:accelerate` option to all but three options.
   We are no longer generating docs in a separate pass of the models. Leaving
   these customizations makes them valid request parameters.

   We need to consider how to re-apply these options to documentation.

   * Add them to the model, and remove the values prior to serialization.
     This has the side-effect of making them members in the generated types.

   * Write a documentation plugin to document the option, but not modify
     the api. This becomes extra code to support. We'd like to eliminate
     all docuemntation plugins if possible.

* Need to decide on versioning scheme for service gems. Currently they
  default to 1.0.0. This means `aws-sdk` v2.5.0 (or 3?) will depends on 70+
  v1 gems.  What version should they start at? (I'm leaning towards 1.0)

# Improvements (Nice to haves)

* In aws-sdk-code-generator/helpers.rb the *markdown* method is removing
  invalid HTML artifacts. This should probably happen BEFORE handing it
  to the code generator. Maybe move this into the rake task.

* Run unit & integration tests against the built gem artifacts
