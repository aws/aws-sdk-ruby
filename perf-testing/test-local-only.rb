$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-echo/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-echo'
require 'aws-sdk-core/plugins/protocols/json_rpc'
require 'aws-sdk-core/plugins/protocols/rpc_v2'

ASCII = "!\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".chars
INT_MIN, INT_MAX = -2147483648, 2147483647
LONG_MIN, LONG_MAX = -9223372036854775808, 9223372036854775807
FLOAT_MIN, FLOAT_MAX = -2147483648.0, 2147483647.0
DOUBLE_MIN, DOUBLE_MAX = -9223372036854775808.0, 9223372036854775807.0

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
    timestamp_member: Time.now,
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
        timestamp_member: Time.now,
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

file = File.open('perf-testing/output.txt', 'w')
# $stdout = file

Aws::Echo::Client.remove_plugin(Aws::Plugins::Protocols::JsonRpc)
json_echo = Aws::Echo::Client.new(plugins: [Aws::Plugins::Protocols::JsonRpc], stub_responses: true)
cbor_echo = Aws::Echo::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], stub_responses: true)

test = {
  list_of_strings_member: %w[test test1 test2]
}

puts "test #{test}"

cbor_echo.stub_responses(:echo_operation, test)
resp = cbor_echo.echo_operation(test)
puts "Resp: #{resp}"
#
# (1...2).each do |i|
#   all_types = random_all_types
#   list_of_strings = random_long_list_of_strings
#   complex_object = random_complex_object
#   list_of_complex = random_list_of_complex_objects
#   large_blob = random_large_blob
#   json_echo.stub_responses(:echo_operation,
#                         all_types,
#                         list_of_strings,
#                         complex_object,
#                         list_of_complex,
#                         large_blob)
#   cbor_echo.stub_responses(:echo_operation,
#                         all_types,
#                         list_of_strings,
#                         complex_object,
#                         list_of_complex,
#                         large_blob)
#   # puts 'JSON'
#   # puts 'All types'
#   # json_echo.echo_operation(all_types)
#   # puts 'Long list of strings'
#   # json_echo.echo_operation(list_of_strings)
#   # puts 'Complex object'
#   # json_echo.echo_operation(complex_object)
#   # puts 'List of complex objects'
#   # json_echo.echo_operation(list_of_complex)
#   # puts 'Very large blob'
#   # json_echo.echo_operation(large_blob)
#   puts 'CBOR'
#   puts 'All types'
#   cbor_echo.echo_operation(all_types)
#   puts 'Long list of strings'
#   cbor_echo.echo_operation(list_of_strings)
#   puts 'Complex object'
#   cbor_echo.echo_operation(complex_object)
#   puts 'List of complex objects'
#   cbor_echo.echo_operation(list_of_complex)
#   puts 'Very large blob'
#   cbor_echo.echo_operation(large_blob)
#
#
#   # all_types = random_all_types
#   # client.stub_responses(:echo_operation, all_types)
#   # resp = client.echo_operation(all_types)
#   # pp resp.to_h
#
#   # list_of_strings = random_long_list_of_strings
#   # client.stub_responses(:echo_operation, list_of_strings)
#   # resp = client.echo_operation(list_of_strings)
#   # puts resp.to_h
#
#   # complex_object = random_complex_object
#   # client.stub_responses(:echo_operation, complex_object)
#   # resp = client.echo_operation
#   # puts resp.to_h
#
#   # list_of_complex = random_list_of_complex_objects
#   # client.stub_responses(:echo_operation, list_of_complex)
#   # resp = client.echo_operation
#   # puts resp.to_h
#
#   # large_blob = random_large_blob
#   # client.stub_responses(:echo_operation, large_blob)
#   # resp = client.echo_operation
#   # puts resp.to_h
#
# end

file.close
