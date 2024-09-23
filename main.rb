require_relative 'notion_client'
require_relative 'notion_template'

client = NotionClient.new("secret_sL7pIrn1mI1EnGqmMBxRJlowjDYJweVKCfshCJm5ASB")

NotionTemplate.new(client, "Page with All Blocks Except Toggles") do
  header "Main Header"
  subheader "Subheader Example"
  subsubheader "Sub-subheader Example"
  paragraph "This is a paragraph explaining something important."
  
  bulleted_list "First bullet point", "Second bullet point", "Third bullet point"
  
  numbered_list "First numbered item", "Second numbered item"
  
  to_do "Task 1", checked: false
  to_do "Task 2", checked: true
  
  quote "This is a notable quote."
  
  image "https://i.pinimg.com/736x/54/16/2b/54162b54074cb972464b9eb41c5fd826.jpg" # Replace with a valid image URL
  
  callout "This is a callout with additional information."
  
  divider
  
  table_of_contents
end



