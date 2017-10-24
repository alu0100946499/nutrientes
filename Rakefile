require "bundler/gem_tasks"
require "rspec/core/rake_task"

#RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Ejecutar las espectativas de la clase Alimento" 
task :spec do
  sh "rspec -I spec/alimento_spec.rb"
end
