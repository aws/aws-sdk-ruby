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

module AWS
  class SimpleDB

    # An Enumerable collection representing all your domains in SimpleDB.
    #
    # Use a DomainCollection to create, get and list domains.
    #
    # @example Creating a domain in SimpleDB
    #
    #   sdb = SimpleDB.new
    #   domain = sdb.domains.create('mydomain')
    #
    # @example Getting a domain with indifferent access
    #
    #   domain = sdb.domains[:mydomain]
    #   domain = sdb.domains['mydomain']
    #
    # @example Enumerating domains
    #
    #   sdb.domains.each do |domain|
    #     puts domain.name
    #   end
    #
    class DomainCollection

      include Core::Model
      include Enumerable

      # Creates a domain in SimpleDB and returns a domain object.
      #
      # @note This operation might take 10 or more seconds to complete.
      # @note Creating a domain in SimpleDB is an idempotent operation; 
      #   running it multiple times using the same domain name will not 
      #   result in an error.
      # @note You can create up to 100 domains per account.
      # @param [String] domain_name 
      # @return [Domain] Returns a new domain with the given name.
      def create(domain_name)
        client.create_domain(:domain_name => domain_name)
        domain_named(domain_name)
      end

      # Returns a domain object with the given name.
      #
      # @note This does not attempt to create the domain if it does not 
      #   already exist in SimpleDB.  Use {#create} to add a domain to SDB.
      #
      # @param [String] domain_name The name of the domain to return.
      # @return [Domain] Returns the domain with the given name.
      def [] domain_name
        domain_named(domain_name)
      end

      # @note Normally your account has a limit of 100 SimpleDB domains.  You can {request more here}[http://aws.amazon.com/contact-us/simpledb-limit-request/]
      # @yield [domain] Yields once for every domain in your account. 
      # @yieldparam [Domain] domain
      # @param [Hash] options
      # @option options [Integer] :limit (nil) The maximum number of 
      #   domains to yield.
      # @option options [Integer] :batch_size (100) The number of domains to
      #   fetch each request to SimpleDB.  Maximum is 100.
      # @return [nil]
      def each options = {}, &block

        total_limit = options[:limit]
        batch_size = options[:batch_size] || 100
        received = 0
        next_token = nil

        begin

          limit = total_limit ? 
            [total_limit - received, batch_size].min : 
            batch_size

          list_options = { :limit => limit }
          list_options[:next_token] = next_token if next_token
          list = client.list_domains(list_options)

          next_token = list.next_token
          received += list.domain_names.length

          list.domain_names.each do |name|
            yield(domain_named(name))
          end
        
        end while next_token and (total_limit.nil? or received < total_limit)
        nil
      end

      # @return [Domain] Returns a domain with the given name.
      # @private
      protected
      def domain_named name
        Domain.new(name.to_s, :config => config)
      end

    end
  end
end
