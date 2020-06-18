# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Underscore
    class << self

      def irregular_inflections(hash)
        @irregular_inflections.update(hash)
        @irregular_regex = Regexp.new(@irregular_inflections.keys.join('|'))
      end

      # @param [String] string
      # @return [String] Returns the underscored version of the given string.
      def underscore(string)
        new_string = string.dup
        new_string.gsub!(@irregular_regex) { |word| "_#{@irregular_inflections[word]}" }
        new_string.gsub!(/([A-Z0-9]+)([A-Z][a-z])/, '\1_\2'.freeze)
        new_string = new_string.scan(/[a-z0-9]+|\d+|[A-Z0-9]+[a-z]*/).join('_'.freeze)
        new_string.downcase!
        new_string
      end

      # @param [String<JMESPath>]
      # @return [String]
      def underscore_jmespath(expression)
        expression.
          gsub(' or ', '||').
          gsub(/(?<![`'])\b\w+\b(?![`'])/) { |str| Underscore.underscore(str) }
      end

    end

    @irregular_inflections = {}

    irregular_inflections({
      'ARNs' => 'arns',
      'CNAMEs' => 'cnames',
      'ETag' => 'etag',
      'Ec2' => 'ec2',
      'ElastiCache' => 'elasticache',
      'iSCSI' => 'iscsi',
      'ACLs' => 'acls',
      'Md5s' => 'md5s',
      'HIT' => 'hit',
      'URL' => 'url',
      #'SSEKMS' => 'sse_kms',
    })

  end
end
