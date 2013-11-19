namespace :handlers do
  Aws.service_classes.each do |svc_name, svc_class|

    # create a task for each service, e.g. handlers:s3
    desc "Displays handlers for #{svc_class.name}"
    task(svc_name) do
      svc = svc_class.new
      if operation_name = ENV['OPERATION']
        print_handlers(svc.build_request(operation_name).handlers)
      else
        puts ""
        puts "Diplaying handlers applied to all #{svc_class.name} operations,"
        puts "  use OPERATION=name to include operation specific handlers"
        puts ""
        print_handlers(svc.handlers)
      end
    end

  end
end

def print_handlers(handlers)
  row = '%-6s %-11s %-9s %s'
  puts row % ['Order', 'Step', 'Priority', 'Handler Class']
  puts '---------------------------------------------------------'
  entries = handlers.entries.sort.reverse.select{ |e| e.operations.empty? }
  entries.each_with_index do |entry, n|
    puts row % [n + 1, entry.step, entry.priority, entry.handler_class]
  end
end
