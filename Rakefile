task :default => :tu

desc "Pruebas unitarias de la clase Point"
task :tu do
  sh "ruby -I. test/tc_fraccion.rb"
end

desc "Ejecutando las pruebas de identidad"
task :identidad do
  sh "ruby -I. test/tc_fraccion.rb -n /identidad/"
end
