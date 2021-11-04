# frozen_string_literal: true

module Aws
  module S3Control
    # @api private
    class OutpostBucketARN < Aws::ARN
      def initialize(options)
        super(options)
        @type, @outpost_id, @subtype, @bucket_name, @extra =
          @resource.split(/[:,\/]/)
      end

      attr_reader :outpost_id, :bucket_name

      # After expanding this ARN, this value will be used to repopulate
      # input so that URIs do not contain ARNs
      def input_member
        bucket_name
      end

      def support_dualstack?
        false
      end

      def support_fips?
        false
      end

      def validate_arn!
        unless @service == 's3-outposts'
          raise ArgumentError, 'Must provide a valid S3 Outpost Bucket ARN.'
        end

        if @region.empty? || @account_id.empty?
          raise ArgumentError,
                'S3 Outpost Bucket ARNs must contain both a region '\
                'and an Account ID.'
        end

        if @region.include?('-fips') || @region.include?('fips-')
          raise ArgumentError,
                'S3 Outpost Bucket ARNs cannot contain a FIPS region.'
        end

        if @type != 'outpost' && @subtype != 'bucket'
          raise ArgumentError, 'Invalid ARN, resource format is not correct'
        end

        if @outpost_id.nil? || @outpost_id.empty?
          raise ArgumentError, 'Missing ARN Outpost ID.'
        end

        if @bucket_name.nil? || @bucket_name.empty?
          raise ArgumentError, 'Missing ARN bucket name.'
        end

        if @extra
          raise ArgumentError,
                'ARN Outpost bucket must be a single value.'
        end

        unless Seahorse::Util.host_label?(@outpost_id)
          raise ArgumentError, "#{@outpost_id} is not a valid host label."
        end

        unless Seahorse::Util.host_label?(@bucket_name)
          raise ArgumentError, "#{@bucket_name} is not a valid host label."
        end
      end

      # Outpost Bucket ARNs currently do not support dualstack
      def host_url(region, fips = false, _dualstack = false, custom_endpoint = nil)
        if custom_endpoint
          custom_endpoint
        else
          "s3-outposts#{'-fips' if fips}.#{region}.amazonaws.com"
        end
      end
    end
  end
end
