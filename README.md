# Notion Page Creator DSL

## Overview

This Ruby DSL allows you to easily create and manage Notion pages using a simple and intuitive syntax. The DSL supports various block types, including headings, paragraphs, lists, images, quotes, and more. It also allows customization, such as setting colors for callout blocks.

## Requirements

- Ruby 2.7 or higher
- `httparty` gem (for API requests)

## Installation

Clone this repository:

```bash
git clone <repository-url>
cd <repository-directory>

Install dependencies:

```bash

gem install httparty
Set up your Notion integration and obtain your API token.

Usage
Initialize the Client
You need to initialize the Notion client with your API token:

ruby

require_relative 'notion_client'
require_relative 'notion_template'

client = NotionClient.new("<YOUR_API_TOKEN>")
Create a Notion Page
You can create a Notion page by instantiating the NotionTemplate class and passing a block that defines the page content:

ruby
Copy code
NotionTemplate.new(client, "Your Page Title") do
  header "Main Header"
  paragraph "This is a paragraph explaining something important."
  bulleted_list "First bullet point", "Second bullet point"
  callout "This is a purple callout block."
end
Available Block Types
Header:

ruby
Copy code
header "Your Header"
Subheader:

ruby
Copy code
subheader "Your Subheader"
Sub-subheader:

ruby
Copy code
subsubheader "Your Sub-subheader"
Paragraph:

ruby
Copy code
paragraph "Your paragraph text."
Bulleted List:

ruby
Copy code
bulleted_list "Item 1", "Item 2"
Numbered List:

ruby
Copy code
numbered_list "First item", "Second item"
To-do:

ruby
Copy code
to_do "Task description", checked: false
Quote:

ruby
Copy code
quote "This is a quote."
Image:

ruby
Copy code
image "https://example.com/image.png"
Callout:

ruby
Copy code
callout "This is a callout message.", color: "purple"
Divider:

ruby
Copy code
divider
Table of Contents:

ruby
Copy code
table_of_contents
Customization
You can customize the color of the callout block by passing a color parameter:

ruby
Copy code
callout "Custom color callout.", color: "yellow" # Change to desired color
Error Handling
If an error occurs while creating a page, it will be logged to the console with the error message and the attempted page content for easier debugging.

Contribution
Feel free to fork this repository and submit pull requests for enhancements or bug fixes.

License
This project is licensed under the MIT License.

csharp
Copy code

You can copy this directly into your README file! If you need any further modifications