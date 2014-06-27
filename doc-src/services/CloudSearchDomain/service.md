Returns a client suitable for making requests against a CloudSearch domain.

To construct a client, you must configure the `:endpoint` option:

    client = Aws::CloudSearchDomain.new(endpoint:'http://...')

See {CloudSearchDomain::V<%= default_api.version.gsub(/-/, '') %>} for a list of
operations.
