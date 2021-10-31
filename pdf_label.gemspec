# frozen_string_literal: true

require_relative "lib/pdf_label/version"

Gem::Specification.new do |spec|
  spec.name          = "pdf_label"
  spec.version       = PdfLabel::VERSION
  spec.authors       = ["weilong"]
  spec.email         = ["fan01856472@gmail.com"]

  spec.summary       = %q{Aim: Won't have hard time to draw labels and manage them.}
  spec.description   = %q{pdf_label helps you create labels in pdf format easily and manage each of them as a template structure.}
  spec.homepage      = %q{http://github.com/IgnacioFan/pdf-label}
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = %q{http://github.com/IgnacioFan/pdf-label}

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "prawn", "~> 2.2.2"
  spec.add_development_dependency "minitest", "~> 5.1"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
