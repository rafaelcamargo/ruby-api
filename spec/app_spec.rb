ENV['APP_ENV'] = 'test'

require_relative '../app'
require 'rack/test'

describe 'Server' do
  def mock_browser
    Rack::Test::Session.new(Rack::MockSession.new(Sinatra::Application))
  end

  it "should say hello world" do
    browser = mock_browser
    browser.get '/'
    expect(browser.last_response.status).to eq 200
    expect(browser.last_response.body).to eq "{\"message\":\"Hello World!\"}"
  end
end
