# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_buscape'
  s.version     = '1.0'
  s.summary     = 'Envio dos produtos para o Buscapé'
  s.description = 'Envio dos produtos para o Buscapé'
  s.required_ruby_version = '>= 1.8.7'

  s.author        = 'Leonardo S. Meira'
  s.email         = 'leosmeira@gmail.com'
  s.homepage      = 'http://github.com/leosmeira'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 1.1'

end
