task 'aws-models' # defined internally

task 'update' => [
  'aws-models',
  'aws-sdk:update',
  'docs:update_readme',
  'update-global-config-plugin',
  'update-partition-service-list',
]
