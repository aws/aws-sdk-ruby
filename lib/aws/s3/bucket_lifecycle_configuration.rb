# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'builder'
require 'uuidtools'

module AWS
  class S3

    # A lifecycle configuration is collections of rules for a single
    # bucket that instructs that instruct
    # Amazon S3 to delete certain objects after a period of days.
    #
    # == Rules
    #
    # Each lifecycle configuration has a list of rules.  Each rule has the
    # following attributes:
    #
    # * +#prefix+
    # * +#expiration_days+
    # * +#status+
    # * +#id+
    #
    # Objects with keys matching a rule prefix will be deleted after 
    # #expiration_days have passed.
    # 
    # A rule is comprised primarily of a prefix and number of expiration days.
    # Objects with keys that start with the given prefix will be automatically
    # deleted after "expiration days" have passed.  Rules also have an
    # ID and a status (they can be disabled).
    #
    # See {Rule} for more information on all of the attributes and methods
    # available for rules.
    #
    # == Adding Rules
    #
    # You can add a rule to a bucket lifecycle configuration using {#add_rule}.
    #
    #   # add a rule that deletes backups after they are 1 year old
    #   bucket.lifecycle_configuration.update do
    #     add_rule('backups/', 365)
    #   end
    #
    # If you perfer to specify a rule's ID or status (defaults to 'Enabled')
    # you can do this with {#add_rule}.
    #
    #   # add a rule that deletes backups after they are 1 year old
    #   bucket.lifecycle_configuration.update do
    #     add_rule('backups/', 365, :id => 'backup-rule', :disabled => true
    #   end
    #
    # == Replacing Rules
    #
    # If you prefer to completely replace a lifecycle configuration, call
    # {#add_rule} inside a #replace block instead of an #update block:
    #
    #   # replace all existing rules with the following
    #   bucket.lifecycle_configuration.replace do
    #     add_rule('backups/', 30)
    #     add_rule('temp/', 10)
    #   end
    #
    # == Removing Rules
    #
    # You can delete specific rules with #remove_rule.
    #
    #   # delete all disabled rules
    #   bucket.lifecycle_configuration.update do
    #     rules.each do |rule|
    #       remove_rule(rule) if rule.disabled?
    #     end
    #   end
    #   
    # You can also remove all rules in a single call:
    #
    #   # remove all rules from this lifecycle configuration
    #   bucket.lifecycle_configuration.clear
    # 
    # == Editing Existing Rules
    #
    # You can also make changes to existing rules.  
    #
    #   # change the expiration days to 10 for EVERY rule
    #   bucket.lifecycle_configuration.update do
    #     rules.each do |rule|
    #       rule.expiration_days = 10
    #     end
    #   end
    #
    # Please be aware, if you add, remove or edit rules outside of an
    # #update or #replace block, then you must call {#update} yourself
    # or the changes will not be persisted.
    #
    class BucketLifecycleConfiguration
      
      # @private
      def initialize bucket, options = {}
        @bucket = bucket
        @rules = parse_xml(options[:xml]) if options[:xml]
        @rules = [] if options[:empty] == true
      end

      # @return [Bucket] Returns the bucket this lifecycle configuration 
      #   belongs to.
      attr_reader :bucket

      # @return [Array<Hash>] Returns an array of rules.
      def rules
        @rules ||= begin
          begin
            opts = { :bucket_name => bucket.name }
            response = bucket.client.get_bucket_lifecycle_configuration(opts)
            parse_xml(response.http_response.body)
          rescue Errors::NoSuchLifecycleConfiguration
            []
          end
        end
      end

      # @param [String] prefix 
      #
      # @param [Integer] expiration_days Indicates the lifetime for objects
      #   matching the given prefix.
      #
      # @param [Hash] options
      #
      # @option options [String] :id A unique ID for this rule.  If an ID
      #   is not provided, one will be generated.
      #
      # @option options [Boolean] :disabled (false) By default, all rules
      #   will have the status of enabled.  You can override this default
      #   by passing +:disabled+ => true.
      #
      # @return [Rule] Returns the rule that was added, as a {Rule} object.
      #
      def add_rule prefix, expiration_days, options = {}
        id = options[:id] || UUIDTools::UUID.random_create.to_s
        status = options[:disabled] == true ? 'Disabled' : 'Enabled'
        rule = Rule.new(self, id, prefix, expiration_days, status)
        self.rules << rule
        rule
      end

      # Removes a single rule.  You can pass a rule id or a {Rule}
      # object.
      #
      #   # remove a single rule by its ID
      #   bucket.lifecycle_configuration.update do
      #     remove_rule('rule-id')
      #   end
      #   
      #   # remove all disabled rules
      #   bucket.lifecycle_configuration.update do
      #     rules.each do |rule|
      #       remove_rule(rule) if rule.disabled?
      #     end
      #   end
      #
      # If you call #remove_rule outside an update block
      # you need to call #update to save the changes.
      #
      # @param [Rule,String] rule_or_rule_id
      #
      # @return [nil]
      # 
      def remove_rule rule_or_rule_id
        rule_id = rule_or_rule_id
        if rule_id.nil?
          raise ArgumentError, "expected a rule or rule id, got nil"
        end
        rule_id = rule_id.id unless rule_id.is_a?(String)
        @rules = rules.select{|r| r.id != rule_id }
        nil
      end

      # Saves changes made to this lifecycle configuration.
      # 
      #   # set the number of days before expiration for all rules to 10
      #   config = bucket.lifecycle_configuration
      #   config.rules.each do |rule|
      #     rule.expiration_days = 10
      #   end
      #   config.update
      #
      # You can call #update with a block.  Changes are persisted at the
      # end of the block.
      #
      #   # shorter version of the example above
      #   bucket.lifecycle_configuration.update do
      #     rules.each {|rule| rule.expiration_days = 10 }
      #   end
      #
      # A block method for updating a BucketLifecycleConfiguration.
      # All modifications made inside the block are persisted at the end of
      # the block.
      #
      #  # 1 request
      #  bucket.lifecycle_configuration.update do
      #    add_rule 'prefix/a', 10
      #    add_rule 'prefix/b', 5
      #  end
      #
      #  # 2 requests
      #  bucket.lifecycle_configuration.add_rule 'prefix/a', 10
      #  bucket.lifecycle_configuration.add_rule 'prefix/b', 5
      # 
      # @return [nil]
      #
      def update &block
        begin
          @batching = true
          instance_eval(&block) if block_given?
          persist(true)
        ensure
          @batching = false
        end
        nil
      end

      # Yields to the given block.  Before yielding, the current
      # rules will be blanked out.  This allows you to provide all
      # new rules. 
      #
      # When the block is complete, a single call will be made to save
      # the new rules.
      #
      #   bucket.lifecycle_configuration.rules.size #=> 3
      #
      #   # replace the existing 3 rules with a single rule
      #   bucket.lifecycle_configuration.replace
      #     add_rule 'temp/', 10
      #   end
      #
      #   bucket.lifecycle_configuration.rules.size #=> 1
      #
      def replace &block
        @rules = []
        update(&block)
      end

      def clear
        @rules = []
        bucket.lifecycle_configuration = nil
      end
      alias_method :remove, :clear

      # @return [String] Returns an xml string representation of this
      #   bucket lifecycle configuration.
      def to_xml
        xml = Builder::XmlMarkup.new(:indent => 2)
        xml.LifecycleConfiguration do
          rules.each do |rule|
            xml.Rule do
              xml.ID rule.id
              xml.Prefix rule.prefix
              xml.Status rule.status
              xml.Expiration do
                xml.Days rule.expiration_days
              end
            end
          end
        end.strip
      end

      protected
      def persist force = false
        unless @batching and force == false
          if rules.empty?
            bucket.lifecycle_configuration = nil
          else
            bucket.lifecycle_configuration = self
          end
        end
      end

      protected
      def parse_xml xml
        Client::XML::GetBucketLifecycleConfiguration.parse(xml).rules.map do |r|
          Rule.new(self, r.id, r.prefix, r.expiration.days, r.status)
        end
      end

      # Represents a single rule from an Amazon S3 bucket lifecycle
      # configuration.
      #
      #   # delete all objects with the prefix 'temporary/' after 10 days
      #   bucket.lifecycle_configuration.add_rule 'temporary/', 10
      #
      #   # remove the rule created above
      #   bucket.lifecycle_configuration.remove_rule 'temporary/'
      #
      # 
      class Rule

        def initialize configuration, id, prefix, expiration_days, status
          @configuration = configuration
          @id = id
          @prefix = prefix
          @expiration_days = expiration_days
          @status = status
        end

        # @return [BucketLifecycleConfiguration]
        attr_reader :configuration

        # @return [String]
        attr_reader :id

        # @return [String]
        attr_accessor :prefix

        # @return [Integer]
        attr_accessor :expiration_days

        # @return [String] Returns the rule status, 'Enabled' or 'Disabled'
        attr_accessor :status

        def enabled?
          status == 'Enabled'
        end

        def enable!
          self.status = 'Enabled'
        end

        def disabled?
          status == 'Disabled'
        end

        def disabled!
          self.status = 'Disabled'
        end

        # @private
        def eql? other
          other.is_a?(Rule) and
          other.configuration.bucket == configuration.bucket and
          other.id == id and
          other.prefix == prefix and
          other.expiration_days == expiration_days and
          other.status == status
        end
        alias_method :==, :eql?

      end

    end

  end
end
