$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-echo/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-echo'
require 'aws-sdk-core/plugins/protocols/json_rpc'
require 'aws-sdk-core/plugins/protocols/rpc_v2'

ITERATIONS = ARGV.first.to_i

ASCII = "!\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".chars
INT_MIN = -2147483648
INT_MAX = 2147483647
LONG_MIN = -9223372036854775808
LONG_MAX = 9223372036854775807
FLOAT_MIN = -2147483648.0
FLOAT_MAX = 2147483647.0
DOUBLE_MIN = -9223372036854775808.0
DOUBLE_MAX = 9223372036854775807.0
RUN_START_TIMESTAMP = Time.now

def random_map_of_string_to_string
  map = {}
  8.times do
    key = (0...32).map { ASCII[rand(ASCII.length)] }.join
    value = (0...64).map { ASCII[rand(ASCII.length)] }.join
    map[key] = value
  end
  map
end

def random_all_types
  {
    boolean_member: rand(2) == 1,
    string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
    integer_member: rand(INT_MIN...INT_MAX),
    long_member: rand(LONG_MIN...LONG_MAX),
    float_member: rand(FLOAT_MIN...FLOAT_MAX),
    double_member: rand(DOUBLE_MIN...DOUBLE_MAX),
    timestamp_member: RUN_START_TIMESTAMP,
    blob_member: Random.bytes(128),
    list_of_strings_member: (0...8).map { (0...32).map { ASCII[rand(ASCII.length)] }.join },
    map_of_string_to_string_member: random_map_of_string_to_string,
    complex_struct_member: {
      string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
      complex_struct_member: {
        string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join
      }
    }
  }
end

def random_long_list_of_strings
  {
    list_of_strings_member: (0...256).map { (0...64).map { ASCII[rand(ASCII.length)] }.join }
  }
end

def random_complex_object
  {
    complex_struct_member: {
      boolean_member: rand(2) == 1,
      blob_member: Random.bytes(128),
      string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
      complex_struct_member: {
        integer_member: rand(INT_MIN...INT_MAX),
        long_member: rand(LONG_MIN...LONG_MAX),
        string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
        complex_struct_member: {
          float_member: rand(FLOAT_MIN...FLOAT_MAX),
          double_member: rand(DOUBLE_MIN...DOUBLE_MAX),
          string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
          complex_struct_member: {
            list_of_strings_member: (0...8).map { (0...32).map { ASCII[rand(ASCII.length)] }.join },
            complex_struct_member: {
              map_of_string_to_string_member: random_map_of_string_to_string,
            }
          }
        }
      }
    }
  }
end

def random_list_of_complex_objects
  {
    list_of_complex_object_member: (0...64).map do
      {
        boolean_member: rand(2) == 1,
        string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
        long_member: rand(LONG_MIN...LONG_MAX),
        double_member: rand(DOUBLE_MIN...DOUBLE_MAX),
        timestamp_member: RUN_START_TIMESTAMP,
        list_of_strings_member: (0...8).map { (0...32).map { ASCII[rand(ASCII.length)] }.join }
      }
    end
  }
end

def random_large_blob
  {
    blob_member: Random.bytes(262144)
  }
end

thread = Thread.current
thread[:json_data] = []
thread[:cbor_data] = []

Aws::Echo::Client.remove_plugin(Aws::Plugins::Protocols::JsonRpc)
json_echo = Aws::Echo::Client.new(plugins: [Aws::Plugins::Protocols::JsonRpc], stub_responses: true)

cbor_echo = Aws::Echo::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], stub_responses: true)
cbor_echo.config.api = cbor_echo.config.api.dup
cbor_echo.config.api.metadata = cbor_echo.config.api.metadata.dup
cbor_echo.config.api.metadata['protocol'] = 'smithy-rpc-v2-cbor'

(1..ITERATIONS).each do
  all_types = random_all_types
  list_of_strings = random_long_list_of_strings
  complex_object = random_complex_object
  list_of_complex = random_list_of_complex_objects
  large_blob = random_large_blob
  json_echo.stub_responses(:echo_operation,
                           all_types,
                           list_of_strings,
                           complex_object,
                           list_of_complex,
                           large_blob)
  cbor_echo.stub_responses(:echo_operation,
                           all_types,
                           list_of_strings,
                           complex_object,
                           list_of_complex,
                           large_blob)

  json_echo.echo_operation(all_types)
  json_echo.echo_operation(list_of_strings)
  json_echo.echo_operation(complex_object)
  json_echo.echo_operation(list_of_complex)
  json_echo.echo_operation(large_blob)

  cbor_echo.echo_operation(all_types)
  cbor_echo.echo_operation(list_of_strings)
  cbor_echo.echo_operation(complex_object)
  cbor_echo.echo_operation(list_of_complex)
  cbor_echo.echo_operation(large_blob)
end

test_cases = ['All types', 'Long list of strings', 'Complex object', 'List of complex objects', 'Very large blob']

def p50(data)
  data[(data.length - 1) / 2]
end

def p90(data)
  data[(data.length - 1) * 0.9]
end

data = File.open('perf-testing/test-output/local-only/data.txt', 'w')
raw = File.open('perf-testing/test-output/local-only/raw.txt', 'w')

parsed_json_data = Array.new(10) { [] }
parsed_cbor_data = Array.new(10) { [] }

thread[:json_data].each_with_index do |i, idx|
  ser = i[0].to_f
  deser = i[1].to_f
  parsed_json_data[(idx % 5) * 2] << ser
  parsed_json_data[(idx % 5) * 2 + 1] << deser
end

thread[:cbor_data].each_with_index do |i, idx|
  ser = i[0].to_f
  deser = i[1].to_f
  parsed_cbor_data[(idx % 5) * 2] << ser
  parsed_cbor_data[(idx % 5) * 2 + 1] << deser
end

parsed_json_data.each do |i|
  i.sort!
end
parsed_cbor_data.each do |i|
  i.sort!
end
$stdout = raw
pp parsed_json_data
pp parsed_cbor_data
$stdout = STDOUT

parsed_json_data.each_with_index do |i, idx|
  i.sort!
  result = {
    "service": 'Local only',
    "test_case": test_cases[(idx / 2) % 5],
    "protocol": 'JSON',
    "metric": idx.even? ? 'Serialization time (ms)' : 'Deserialization time (ms)',
    "p50": p50(i),
    "p90": p90(i),
    "max": i.last
  }
  data.puts(JSON.pretty_generate(result))
end

parsed_cbor_data.each_with_index do |i, idx|
  i.sort!
  result = {
    "service": 'Local only',
    "test_case": test_cases[(idx / 2) % 5],
    "protocol": 'CBOR',
    "metric": idx.even? ? 'Serialization time (ms)' : 'Deserialization time (ms)',
    "p50": p50(i),
    "p90": p90(i),
    "max": i.last
  }
  data.puts(JSON.pretty_generate(result))
end

data.close
raw.close
