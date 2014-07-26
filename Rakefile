require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = ['spec/lib/itaiji/*_spec.rb'] if RUBY_VERSION < '2.0.0'
end

task :default => :spec
