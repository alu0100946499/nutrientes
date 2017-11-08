require "bundler/gem_tasks"
require "rspec/core/rake_task"

#RSpec::Core::RakeTask.new(:spec)

  task :default => :her

  desc "Ejecutar las expectativas de la clase DLL"
    task :dll do
      sh "rspec -I. spec/DLL_spec.rb"
  end

  desc "Ejecutar las expectativas de la clase Alimento" 
    task :spec do
      sh "rspec -I. spec/alimento_spec.rb"
  end

  desc "Ejecutar las expectativas de la herencia"
    task :her do
      sh "rspec -I. spec/herencia_spec.rb"
  end

  desc "Ejecutar las expectativas de HueLacHel"
    task :hlh do
      sh "rspec -I. spec/HueLacHel_spec.rb"
  end

  desc "Ejecutar las expectativas de CarDer"
    task :cd do
      sh "rspec -I. spec/CarDer_spec.rb"
  end
  
  desc "Ejecutar las expectativas de PesMar"
    task :pm do
      sh "rspec -I. spec/PesMar_spec.rb"
  end

  desc "Ejecutar las expectativas de AliGra"
    task :ag do
      sh "rspec -I. spec/AliGra_spec.rb"
  end
  
  desc "Ejecutar las expectativas de AliRicCar"
    task :arc do
      sh "rspec -I. spec/AliRicCar_spec.rb"
  end

  desc "Ejecutar las expectativas de VerHor"
    task :vh do
      sh "rspec -I. spec/VerHor_spec.rb"
  end

