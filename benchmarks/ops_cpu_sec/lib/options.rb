# frozen_string_literal: true

module OpsCpuSec
  # Command-line options.
  module Options
    DEFAULTS = {
      warmup: 1000, min_iterations: 50_000, min_cpu_seconds: 5.0, transport: 'stub',
      https_server: '127.0.0.1:18443', fixture_control: '127.0.0.1:18080'
    }.freeze

    class << self
      def parse(argv)
        opts = DEFAULTS.dup
        OptionParser.new do |o|
          o.on('--list') { opts[:list] = true }
          o.on('--validate') { opts[:validate] = true }
          o.on('--filter REGEX') { |value| opts[:filter] = Regexp.new(value) }
          o.on('--warmup N', Integer) { |value| opts[:warmup] = value }
          o.on('--min-iterations N', Integer) { |value| opts[:min_iterations] = value }
          o.on('--min-cpu-seconds S', Float) { |value| opts[:min_cpu_seconds] = value }
          o.on('--json FILE') { |value| opts[:json] = value }
          o.on('--transport NAME') { |value| opts[:transport] = value }
          o.on('--https-server ADDR') { |value| opts[:https_server] = value }
          o.on('--fixture-control ADDR') { |value| opts[:fixture_control] = value }
        end.parse!(argv)
        opts
      end

      def transport(opts)
        case opts[:transport]
        when 'stub' then StubTransport
        when 'https'
          HttpsLoopback.new(server: opts[:https_server], control: opts[:fixture_control]).tap(&:install)
        else raise OptionParser::InvalidArgument, "--transport #{opts[:transport]} (expected stub or https)"
        end
      end
    end
  end
end
