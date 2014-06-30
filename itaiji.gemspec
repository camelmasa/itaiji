Gem::Specification.new do |spec|
  spec.name          = "itaiji"
  spec.version       = "0.0.1"
  spec.authors       = ["Masahiro Saito"]
  spec.email         = ["camelmasa@gmail.com"]
  spec.summary       = %q{itaiji}
  spec.description   = %q{itaiji}
  spec.homepage      = "https://github.com/camelmasa/itaiji"
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency('rspec')
end
