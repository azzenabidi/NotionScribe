# frozen_string_literal: true

require_relative "lib/notion_scribe/version"

Gem::Specification.new do |spec|
  spec.name          = "notion_scribe"
  spec.version       = "0.2.0"
  spec.authors       = ["Azzen Abidi"]
  spec.email         = ["azzen.abidi@gmail.com"

  spec.summary       = "A Ruby DSL to create Notion pages effortlessly."
  spec.description   = "This gem allows users to create and customize Notion pages with a simple Ruby DSL."

  spec.homepage      = "https://github.com/azzenabidi/notion_scribe"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]
  spec.add_dependency 'httparty', '~> 0.13.7'  # Use the latest minor version you're comfortable with.
  spec.required_ruby_version = '>= 3.0'

  # Metadata for additional links
  spec.metadata = {
    "homepage_uri" => "https://github.com/azzenabidi/notion_scribe",
    "source_code_uri" => "https://github.com/azzenabidi/notion_scribe",
    "documentation_uri" => "https://github.com/azzenabidi/notion_scribe" # Add your documentation link here
  }
end
