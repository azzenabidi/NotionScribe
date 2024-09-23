# notion_dsl.rb

class NotionTemplate
  def initialize(&block)
    instance_eval(&block)
  end

  def header(text)
    puts "<h1>#{text}</h1>"
  end

  def paragraph(text)
    puts "<p>#{text}</p>"
  end

  # Other methods for your DSL...
end
