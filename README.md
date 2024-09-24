
# Notion Scribe
=======


This Ruby gem allows you to create Notion pages easily using a DSL.

## Installation

Install the gem 
```bash
gem install notion_scribe

```

### Initialize the Client

You need to initialize the Notion client with your API token:

```

    require 'notion_client'
require 'notion_template'

client = NotionClient.new("secret_sL7pIrn1mI1EnGqmMBxRJlowjDYJweVKCfshCJm5A")
NotionTemplate.new(client, "Your Page Title", parent_id: "YOUR_PARENT_PAGE_ID") do
  header "Main Header"
  paragraph "This is a paragraph explaining something important."
  bulleted_list "First bullet point", "Second bullet point"
  callout "This is a purple callout block."
end


```

### Create a Notion Page

You can create a Notion page by instantiating the `NotionTemplate` class and passing a block that defines the page content:


```
    NotionTemplate.new(client, "Your Page Title") do
      header "Main Header"
      paragraph "This is a paragraph explaining something important."
      bulleted_list "First bullet point", "Second bullet point"
      callout "This is a purple callout block."
    end

```

### Available Block Types

**Header 1**:
  
     header "Your header"

**Header 2**

      subheader "Your Subheader"
**Header 3**

    subsubheader "Your Sub-subheader"
**Paragraph**

    paragraph "Your paragraph text."
**Bulleted List**

    bulleted_list "Item 1", "Item 2"

**Numbered List**

    numbered_list "First item", "Second item"

**Todo**

    to_do "Task description", checked: false
**Quote**

    quote "This is a quote."

**Image**

    image "https://example.com/image.png"

**Callout**

    callout "This is a callout message.", color: "purple"

**Divider**

    divider

**Table of content**

    table_of_contents
### Customization

You can customize the color of the callout block by passing a `color` parameter:

    callout "Custom color callout.", color: "yellow" # Change to desired color
## Error Handling

If an error occurs while creating a page, it will be logged to the console with the error message and the attempted page content for easier debugging.

## Contribution

Feel free to fork this repository and submit pull requests for enhancements or bug fixes.

## License

This project is licensed under the MIT License.
