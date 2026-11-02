# frozen_string_literal: true

# Generates the ops/CPU-sec benchmark inputs from the shared serde benchmark
# Smithy model, read as a Smithy JSON AST (see smithy_ast/build_ast.sh):
#
# Output goes to ../fixtures/:
#
#   * cases.json - one entry per @httpRequestTests / @httpResponseTests test
#     tagged "serde-benchmark": request params, or the canned response status,
#     headers and body.
#   * models/<service>/endpoint-rule-set-1.json - the service's
#     @endpointRuleSet trait.
#   * models/<service>/api-2.json - the service API, derived from a C2J
#     source model (--source-apis) by keeping the operations the Smithy
#     service binds that have protocol tests (as the models' C2J projection
#     does), and applying the Smithy service's signing name and name.
#
# Usage:
#   generation/smithy_ast/build_ast.sh <models-repo>/model model-ast.json
#   ruby generation/generate.rb --ast model-ast.json [--source-apis <dir>]
#
# Generated files are committed; do not edit them by hand.

require 'fileutils'
require 'json'
require 'optparse'
require 'set'

module OpsCpuSec
  NAMESPACE = 'com.amazonaws.sdk.benchmark'

  # protocol => Ruby service name, Smithy service, C2J source dir, endpointPrefix
  SERVICES = {
    'awsJson1_0' => %w[AwsJsonRpcDataPlane AwsJsonRpc10DataPlane aws-json-rpc-1-0-data-plane awsjsonrpc10dataplane],
    'rpcv2Cbor' => %w[SmithyRpcV2CborDataPlane SmithyRpcV2CborDataPlane smithy-rpc-v2-cbor-data-plane
                      smithyrpcv2cbordataplane],
    'awsQuery' => %w[AwsQueryDataPlane AwsQueryDataPlane aws-query-data-plane awsquerydataplane],
    'restJson1' => %w[AwsRestJsonDataPlane AwsRestJsonDataPlane aws-rest-json-data-plane awsrestjsondataplane],
    'restXml' => %w[AwsRestXmlDataPlane AwsRestXmlDataPlane aws-rest-xml-data-plane awsrestxmldataplane]
  }.freeze

  # Tagged in the model but not part of the ops/CPU-sec case set.
  EXCLUDED_IDS = %w[restJson1_GetObjectStreaming].freeze
  # Operations whose only benchmark case is excluded (not in the source C2J).
  EXCLUDED_OPERATIONS = %w[GetObjectStreaming].freeze
  EXPECTED_CASES = 71

  # Writes fixtures/ from the model's Smithy JSON AST.
  module Generate
    class << self
      def local(id)
        id.split('#').last
      end

      def cases(shapes)
        out = []
        shapes.each do |id, shape|
          next unless shape['type'] == 'operation'

          traits = shape['traits'] || {}
          { 'request' => 'smithy.test#httpRequestTests',
            'response' => 'smithy.test#httpResponseTests' }.each do |kind, trait|
            (traits[trait] || []).each do |test|
              next unless (test['tags'] || []).include?('serde-benchmark')
              next if EXCLUDED_IDS.include?(test['id'])

              c = { 'id' => test['id'], 'protocol' => local(test['protocol']), 'operation' => local(id),
                    'kind' => kind }
              if kind == 'request'
                c['params'] = test['params'] || {}
                %w[method uri headers queryParams body bodyMediaType].each { |k| c[k] = test[k] if test.key?(k) }
              else
                c['code'] = test['code']
                c['headers'] = test['headers'] || {}
                c['body'] = test['body'] || ''
                c['params'] = test['params'] if test.key?('params')
              end
              out << c
            end
          end
        end
        out.sort_by { |c| c['id'] }
      end

      def bound_operations(shapes, service_id)
        svc = shapes.fetch(service_id)
        ops = (svc['operations'] || []).map { |o| o['target'] }
        (svc['resources'] || []).each do |r|
          ops.concat((shapes.fetch(r['target'])['operations'] || []).map { |o| o['target'] })
        end
        tested = ops.select do |op|
          traits = shapes.fetch(op)['traits'] || {}
          traits.key?('smithy.test#httpRequestTests') || traits.key?('smithy.test#httpResponseTests')
        end
        tested.map { |op| local(op) } - EXCLUDED_OPERATIONS
      end

      def reachable_shapes(api)
        seen = Set.new
        stack = api['operations'].values.flat_map do |o|
          [o.dig('input', 'shape'), o.dig('output', 'shape'), *(o['errors'] || []).map { |e| e['shape'] }]
        end.compact
        until stack.empty?
          name = stack.pop
          next if seen.include?(name)

          seen << name
          s = api['shapes'].fetch(name)
          (s['members'] || {}).each_value { |m| stack << m['shape'] }
          %w[member key value].each { |k| stack << s[k]['shape'] if s[k] }
        end
        seen
      end

      def derive_api(source_api, ops, signing_name, endpoint_prefix, service_name)
        api = JSON.parse(JSON.generate(source_api))
        missing = ops - api['operations'].keys
        raise "source api is missing operations #{missing}" unless missing.empty?

        api['operations'].select! { |name, _| ops.include?(name) }
        keep = reachable_shapes(api)
        api['shapes'].select! { |name, _| keep.include?(name) }
        api['metadata']['signingName'] = signing_name
        api['metadata']['endpointPrefix'] = endpoint_prefix
        # RPC protocols target "<Smithy service name>.<operation>".
        api['metadata']['targetPrefix'] = service_name if api['metadata'].key?('targetPrefix')
        api
      end

      def write_json(path, data)
        File.write(path, "#{JSON.pretty_generate(data)}\n")
      end

      def run(ast_path, source_apis, out_dir)
        shapes = JSON.parse(File.read(ast_path, encoding: 'UTF-8')).fetch('shapes')
        all = cases(shapes)
        raise "expected #{EXPECTED_CASES} cases, found #{all.size}" unless all.size == EXPECTED_CASES

        dups = all.group_by { |c| c['id'] }.select { |_, v| v.size > 1 }.keys
        raise "duplicate ids #{dups}" unless dups.empty?

        write_json(File.join(out_dir, 'cases.json'), all)
        SERVICES.each_value do |name, smithy_name, source_dir, endpoint_prefix|
          service_id = "#{NAMESPACE}##{smithy_name}"
          traits = shapes.fetch(service_id)['traits']
          dir = File.join(out_dir, 'models', name)
          FileUtils.mkdir_p(dir)
          write_json(File.join(dir, 'endpoint-rule-set-1.json'), traits.fetch('smithy.rules#endpointRuleSet'))
          next unless source_apis

          path = File.join(source_apis, source_dir, '1999-12-31', 'api-2.json')
          source = JSON.parse(File.read(path, encoding: 'bom|utf-8'))
          api = derive_api(source, bound_operations(shapes, service_id),
                           traits.fetch('aws.auth#sigv4').fetch('name'), endpoint_prefix, smithy_name)
          write_json(File.join(dir, 'api-2.json'), api)
          puts "#{name}: operations #{api['operations'].keys.sort.join(', ')}"
        end
        counts = all.group_by { |c| c['protocol'] }.transform_values(&:size)
        puts "#{all.size} cases: #{counts}"
      end
    end
  end
end

if $PROGRAM_NAME == __FILE__
  opts = { out: File.expand_path('../fixtures', __dir__) }
  OptionParser.new do |o|
    o.on('--ast FILE', 'Smithy JSON AST of the models repo "model" directory') { |v| opts[:ast] = v }
    o.on('--source-apis DIR', 'Directory with <service>/1999-12-31/api-2.json C2J models') { |v| opts[:apis] = v }
    o.on('--out DIR', 'Output directory (default: ../fixtures)') { |v| opts[:out] = v }
  end.parse!
  abort 'missing --ast' unless opts[:ast]
  OpsCpuSec::Generate.run(opts[:ast], opts[:apis], opts[:out])
end
