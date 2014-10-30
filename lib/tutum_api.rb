require 'rest-client'

class TutumApi
  attr_reader :headers

  BASE_API_PATH = 'https://dashboard.tutum.co/api'
  API_VERSION = 'v1'

  def initialize(headers)
    @headers = headers
  end

  def url(path)
    BASE_API_PATH + '/' + API_VERSION + path
  end

  def http_get(path)
    RestClient.get(url(path), headers)
  end

  def http_post(path, content={})
    RestClient.post(url(path), content.to_json, headers)
  end

  def http_patch(path, content={})
    RestClient.patch(url(path), content.to_json, headers)
  end

  def http_delete(path)
    RestClient.delete(url(path), headers)
  end
end
