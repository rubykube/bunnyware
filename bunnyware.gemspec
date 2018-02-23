
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bunnyware/version"

Gem::Specification.new do |spec|
  spec.name          = "bunnyware"
  spec.version       = Bunnyware::VERSION
  spec.authors       = ["Louis Bellet"]
  spec.email         = ["lbellet@heliostech.fr"]

  spec.summary       = %q{RabbitMQ middleware helper.}
  spec.description   = %q{Middleware for easy communication between ruby micro-services.}
  spec.homepage      = "https://www.peatio.tech"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bunny", "~> 2.9"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
