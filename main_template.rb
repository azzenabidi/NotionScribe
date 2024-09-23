# main.rb

require_relative 'notion_dsl'

# Use the DSL
NotionTemplate.new do
  header "Welcome to My Notion Template"
  paragraph "This is a paragraph in the template."
end
