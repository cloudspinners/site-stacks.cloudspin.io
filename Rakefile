require 'rake/clean'
require 'cloudspin/stack/rake'

CLEAN.include('work')
CLOBBER.include('state')

include Cloudspin::Stack::Rake

namespace :site do
  StackTask.new.instance
end

namespace :setup do
  namespace :iam do
    StackTask.new(
      configuration_files: [ 
        './stack-iam-defaults.yaml',
        './stack-iam-local.yaml'
      ]
    )
  end

  namespace :state do
    StackTask.new(
      configuration_files: [ 
        './stack-state-defaults.yaml',
        './stack-state-local.yaml'
      ]
    )
  end
end
