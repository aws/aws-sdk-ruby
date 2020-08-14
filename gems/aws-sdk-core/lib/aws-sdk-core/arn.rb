# frozen_string_literal: true

module Aws
  # Create and provide access to components of Amazon Resource Names (ARN).
  #
  # You can create an ARN and access it's components like the following:
  #
  #   arn = Aws::ARN.new(
  #     partition: 'aws',
  #     service: 's3',
  #     region: 'us-west-2',
  #     account_id: '12345678910',
  #     resource: 'foo/bar'
  #   )
  #   # => #<Aws::ARN ...>
  #
  #   arn.to_s
  #   # => "arn:aws:s3:us-west-2:12345678910:foo/bar"
  #
  #   arn.partition
  #   # => 'aws'
  #   arn.service
  #   # => 's3'
  #   arn.resource
  #   # => foo/bar
  #
  #   # Note: parser available for parsing resource details
  #   @see Aws::ARNParser#parse_resource
  #
  # @see https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-arns
  class ARN

    # @param [Hash] options
    # @option options [String] :partition
    # @option options [String] :service
    # @option options [String] :region
    # @option options [String] :account_id
    # @option options [String] :resource
    def initialize(options = {})
      @partition = options[:partition]
      @service = options[:service]
      @region = options[:region]
      @account_id = options[:account_id]
      @resource = options[:resource]
    end

    # @return [String]
    attr_reader :partition

    # @return [String]
    attr_reader :service

    # @return [String]
    attr_reader :region

    # @return [String]
    attr_reader :account_id

    # @return [String]
    attr_reader :resource

    # Determine the "official" name of a resource
    #
    # This function attempts to render a resource name in this form
    # https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #
    # Barring an API call that accomplishes this, we guess the capitalization by introspection
    # on the AWS SDK class names
    def resource_type
      # look for a match in the defined constants, to get proper capitalization. default capitalize first letter
      guess_capitalization = Proc.new do |a_module, member_name|
        a_module.constants.map(&:to_s).find(member_name.method(:capitalize)) { |t| member_name.casecmp(t) == 0 }
      end

      # extract the portion of resource type that's contained in the ARN. split on either : or /
      local_type = resource.split(/[:\/]/)[0]

      # look for a match in the defined constants, to get proper capitalization.  Same for resource
      official_service = guess_capitalization.call(Aws, service)
      official_resource = guess_capitalization.call(Object.const_get(official_service), local_type

      ["AWS", official_service, official_resource].join("::")
    end
    
    # Validates ARN contains non-empty required components.
    # Region and account_id can be optional.
    #
    # @return [Boolean]
    def valid?
      !partition.nil? && !partition.empty? &&
        !service.nil? && !service.empty? &&
        !resource.nil? && !resource.empty?
    end

    # Return the ARN format in string
    #
    # @return [String]
    def to_s
      "arn:#{partition}:#{service}:#{region}:#{account_id}:#{resource}"
    end
  end
end
