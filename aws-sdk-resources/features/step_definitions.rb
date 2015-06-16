Given(/^a "([^"]*)" is set in cfg(\[.*\])$/) do |name, path|
  instance_variable_set("@#{name}", cfg_value(*path.scan(/\w+/)))
end
