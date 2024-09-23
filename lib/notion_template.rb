class NotionTemplate
  def initialize(client, title, &block)
    @client = client
    @title = title
    @blocks = []
    instance_eval(&block)
    send_to_notion
  end

  def header(text)
    @blocks << {
      object: "block",
      type: "heading_1",
      heading_1: {
        rich_text: [{ 
          type: "text", 
          text: { content: text } 
        }]
      }
    }
  end

  def subheader(text)
    @blocks << {
      object: "block",
      type: "heading_2",
      heading_2: {
        rich_text: [{ 
          type: "text", 
          text: { content: text } 
        }]
      }
    }
  end

  def subsubheader(text)
    @blocks << {
      object: "block",
      type: "heading_3",
      heading_3: {
        rich_text: [{ 
          type: "text", 
          text: { content: text } 
        }]
      }
    }
  end

  def paragraph(text)
    @blocks << {
      object: "block",
      type: "paragraph",
      paragraph: {
        rich_text: [{ 
          type: "text", 
          text: { content: text } 
        }]
      }
    }
  end

  def bulleted_list(*items)
    items.each do |item|
      @blocks << {
        object: "block",
        type: "bulleted_list_item",
        bulleted_list_item: {
          rich_text: [{ 
            type: "text", 
            text: { content: item } 
          }]
        }
      }
    end
  end

  def numbered_list(*items)
    items.each do |item|
      @blocks << {
        object: "block",
        type: "numbered_list_item",
        numbered_list_item: {
          rich_text: [{ 
            type: "text", 
            text: { content: item } 
          }]
        }
      }
    end
  end

  def to_do(text, checked: false)
    @blocks << {
      object: "block",
      type: "to_do",
      to_do: {
        rich_text: [{ 
          type: "text", 
          text: { content: text } 
        }],
        checked: checked
      }
    }
  end

  def quote(text)
    @blocks << {
      object: "block",
      type: "quote",
      quote: {
        rich_text: [{ 
          type: "text", 
          text: { content: text } 
        }]
      }
    }
  end

  def image(url)
    @blocks << {
      object: "block",
      type: "image",
      image: {
        type: "external",
        external: { url: url }
      }
    }
  end

  def callout(text, color = "purple") # Default color set to purple
    @blocks << {
      object: "block",
      type: "callout",
      callout: {
        rich_text: [{ 
          type: "text", 
          text: { content: text } 
        }],
        icon: { type: "emoji", emoji: "🔔" }, # Optional icon
        color: "gray_background" # Set the color of the callout
      }
    }
  end

  def toggle(text, &block)
    toggle_block = {
      object: "block",
      type: "toggle",
      toggle: {
        rich_text: [{ 
          type: "text", 
          text: { content: text } 
        }],
        children: []
      }
    }
  
    if block_given?
      # Capture nested blocks
      instance_eval(&block)
      toggle_block[:toggle][:children] = @blocks
    end
    
    @blocks << toggle_block
  end
  
  def divider
    @blocks << {
      object: "block",
      type: "divider",
      divider: {}
    }
  end

  def table_of_contents
    @blocks << {
      object: "block",
      type: "table_of_contents",
      table_of_contents: {}
    }
  end

  def send_to_notion
    page_content = {
      parent: { page_id: "PAGE_ID_HERE" }, # or database_id as necessary
      properties: {
        title: [
          {
            type: "text",
            text: { content: @title }
          }
        ]
      },
      children: @blocks
    }

    @client.create_page(page_content)
  end
end
