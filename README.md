# Notion Scribe DSL

## Overview

This Ruby DSL allows you to easily create and manage Notion pages using a simple and intuitive syntax. The DSL supports various block types, including headings, paragraphs, lists, images, quotes, and more. It also allows customization, such as setting colors for callout blocks.

## Requirements

- Ruby 2.7 or higher
- `httparty` gem (for API requests)

## Installation

1. Clone this repository:
    git clone https://github.com/azzenabidi/NotionScribe.git
    cd NotionScribe


2. Install dependencies:

    gem install httparty
3. Set up your Notion integration and obtain your API token.

## Usage

### Initialize the Client

You need to initialize the Notion client with your API token:

    require_relative 'notion_client'
    require_relative 'notion_template'
    
    client = NotionClient.new("<YOUR_API_TOKEN>")
### Create a Notion Page

You can create a Notion page by instantiating the `NotionTemplate` class and passing a block that defines the page content:

    NotionTemplate.new(client, "Your Page Title") do
      header "Main Header"
      paragraph "This is a paragraph explaining something important."
      bulleted_list "First bullet point", "Second bullet point"
      callout "This is a purple callout block."
    end
### Available Block Types

-   **Header**:
`header "Your Header"`
- **Header 2**

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
