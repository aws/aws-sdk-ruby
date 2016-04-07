def service_names
  line = "    "
  service_names = ""
  Aws::SERVICE_MODULE_NAMES.each do |name|
    if (line + name).size > 72
      service_names << line.sub(/, $/, '')
      service_names << "\n"
      line = "    "
    end
    line << (name.downcase + ", ")
  end
  service_names << line.sub(/, $/, '')
end

def client(task)
  svc_module(task).const_get(:Client).new({
    region: 'region',
    access_key_id: 'akid',
    secret_access_key: 'secret',
  })
end

def print_handlers(handlers)
  row = '%-6s %-11s %-9s %s'
  puts row % ['Order', 'Step', 'Priority', 'Handler Class']
  puts '---------------------------------------------------------'
  entries = handlers.entries.sort.reverse.select{ |e| e.operations.nil? }
  entries.each_with_index do |entry, n|
    puts row % [n + 1, entry.step, entry.priority, entry.handler_class]
  end
end

task :handlers do
  puts <<INSTRUCTIONS

Run this task again with a service name, for example:

    rake handlers:s3

Append an operation name to the task to list handler for a specific operation:

    rake handlers:s3:get_object

To list available operations for a service, run `rake operations:svc`, e.g.:

    rake operations:s3

Valid service names include:

#{service_names}

INSTRUCTIONS
end

desc "List default handlers applied to a service"
task "handlers:svc" => "handlers"

task :operations do
  puts <<INSTRUCTIONS

Run this task again with a service name, for example:

    rake operations:s3

Valid service names include:

#{service_names}

INSTRUCTIONS
end

desc "List available operation names for a service"
task "operations:svc" => "operations"

def svc_module(task)
  identifier = task.name.split(':')[1]
  name = Aws::SERVICE_MODULE_NAMES.find { |name| name.downcase == identifier }
  Aws.const_get(name)
end

rule /^operations:\w+$/ do |task|
  puts svc_module(task)::Client.api.operation_names
end

rule /^handlers:\w+$/ do |task|
  print_handlers(client(task).handlers)
end

rule /^handlers:\w+:\w+$/ do |task|
  operation_name = task.name.split(':').last
  req = client(task).build_request(operation_name)
  print_handlers(req.handlers)
end
