require 'json'
require 'sinatra'

before do
  content_type :json
end

get '/' do
  { message: 'Hello World!' }.to_json
end
