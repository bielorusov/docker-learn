# frozen_string_literal: true

require 'rubygems'
require 'json'

class Application
  def self.call(env)
    new.perform_request(env)
  end

  def perform_request(env)
    [code, content_type, [body]]
  end

  private

  def body
    {
      version: '0.0.0',
      name: 'Rack based API'
    }.to_json
  end

  def content_type
    json_content_typex
  end

  def json_content_type
    {'Content-Type' => 'application/json'}
  end

  def html_content_type
    {'Content-Type' => 'text/html'}
  end

  def code
    200
  end
end
