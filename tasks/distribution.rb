require 'jeweler'
require 'yard'

YARD::Rake::YardocTask.new

Jeweler::Tasks.new do |gem|
  gem.name        = "pedantic"
  gem.summary     = %Q{Text Cleaner}
  gem.description = %Q{Pares text down to the words that matter}
  gem.email       = "pat@freelancing-gods.com"
  gem.homepage    = "http://github.com/freelancing-god/pedantic"
  gem.authors     = ["Pat Allan"]
  
  gem.add_dependency 'stemmer', '>= 1.0.1'
  
  gem.add_development_dependency "rspec", ">= 1.2.9"
  gem.add_development_dependency "yard",  ">= 0"
  
  gem.files = FileList[
    'lib/**/*.rb',
    'LICENSE',
    'README.textile'
  ]
  # gem is a Gem::Specification...
  # See http://www.rubygems.org/read/chapter/20 for additional settings
end

Jeweler::GemcutterTasks.new
