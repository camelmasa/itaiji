# encoding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "itaiji"
  spec.version       = "0.1.1"
  spec.authors       = ["Masahiro Saito"]
  spec.email         = ["camelmasa@gmail.com"]
  spec.summary       = %q{Convert japanese itaiji(異体字) to seijitai(正字体) and also reverse convert.}
  spec.description   = %q{Convert japanese itaiji(異体字) to seijitai(正字体) and also reverse convert.}
  spec.homepage      = "https://github.com/camelmasa/itaiji"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
