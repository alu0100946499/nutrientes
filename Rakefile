require "bundler/gem_tasks"
require "rspec/core/rake_task"

#RSpec::Core::RakeTask.new(:spec)

  task :default => :dll

  desc "Ejecutar las expectativas de la clase DLL"
  task :dll do
    sh "rspec -I. spec/DLL_spec.rb"
  end

  desc "Ejecutar las expectativas de la clase Alimento" 
  task :spec do
    sh "rspec -I. spec/alimento_spec.rb"
  end

