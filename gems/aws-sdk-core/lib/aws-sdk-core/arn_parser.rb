# frozen_string_literal: true

module Aws
  # Parses a string with an ARN format into an {ARN} object.
  module ARNParser
    # Raised when the provided string is not a valid ARN.
    class InvalidARNError < StandardError; end

    # Parse a string with an ARN format into an {Aws::ARN} object.
    # @param [String] arn_str
    # @return [Aws::ARN]
    # @raise [Aws::Errors::InvalidARNError] when the string is not a valid ARN.
    # @see https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-arns
    def self.parse(arn_str)
      parts = arn_str.nil? ? [] : arn_str.split(':', 6)
      raise InvalidARNError if parts.size < 6

      # part[0] is "arn"
      arn = ARN.new(
        partition: parts[1],
        service: parts[2],
        region: parts[3],
        account_id: parts[4],
        resource: parts[5]
      )
      raise InvalidARNError unless arn.valid?

      arn
    end

    # Checks whether a String could be a ARN or not. An ARN starts with 'arn:'
    # and has at least 6 segments separated by a colon (:).
    # @param [String] str
    # @return [Boolean]
    def self.arn?(str)
      !str.nil? && str.start_with?('arn:') && str.scan(':').length >= 5
    end
  end
end
