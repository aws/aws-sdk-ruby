# TODO

* Move EC2 protocol code into ec2 gem

* Remove metadata from shapes, move these attributes onto the
  shapes themselves.

  consider creating a structure shape ref which can be required,
  leaving vanilla shape ref without.

* Move service specific customizations from aws-sdk-core into service gems.

  * DynamoDB simple attribute
  * S3 plugins
  * Glacier
  * etc

* Add a YARD tag for each of the services to document which gem it is available
  from.

* Support mixins/customizations of generated source code. This currently
  affects S3, DynamoDB in aws-sdk-core, and S3, SNS, SQS, EC2, IAM from
  resources.

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
  default to 1.0.0. This means `aws-sdk` v2.5.0 will depends on 70+ v1 gems.
  What version should they start at? (I'm leaning towards 1.0)

* Ensure rake handlers:s3 functions (currently blocked by service loading)
