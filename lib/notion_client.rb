require 'net/http'
require 'json'

class NotionClient
  API_URL = 'https://api.notion.com/v1/pages'

  def initialize(api_token)
    @api_token = api_token
  end

  def create_page(content)
    uri = URI(API_URL)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(uri)
    request['Authorization'] = "Bearer #{@api_token}"
    request['Content-Type'] = 'application/json'
    request['Notion-Version'] = '2022-06-28'

    request.body = content.to_json

    response = http.request(request)
    puts response.body
  end
end
