require 'rest-client'
require 'json'

class TutumApi
  attr_reader :headers

  BASE_API_PATH = 'https://dashboard.tutum.co/api'
  API_VERSION = 'v1'

  def initialize(headers)
    @headers = headers
  end

  def headers
    { headers: headers }
  end

  def url(path=[])
    BASE_API_PATH + '/' + API_VERSION + path
  end

  def get(path=[])
    JSON.parse(RestClient.get(url(path), headers))
  end

  def post(path=[], content={})
    JSON.parse(RestClient.post(url(path), content.to_json, headers))
  end

  def put(path=[], content={})
    JSON.parse(RestClient.put(url(path), content.to_json, headers))
  end

  def delete(path=[])
    JSON.parse(RestClient.delete(url(path), headers))
  end
end
