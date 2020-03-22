require "error_hunter/version"
require 'rest-client'
require 'json'
module ErrorHunter
  class Error < StandardError; end
  # Your code goes here...
  module Urls
    def urls
      @_host = "http://localhost:3000"
      @add_errors = @_host + '/api/app_errors'
      {add_error:  @add_errors}
    end
  end

  class App
    extend Urls
    @_token = nil
    @_app_name = 'app_name'

    def self.config(**options)
      @_token = options[:token]
      @_app_name = options[:app_name]
      {token:@_token,app_name: @_app_name}
    end

    def self.add_error(**data)
      begin
        make_call = RestClient.post(self.urls[:add_error],
                      :app_error =>{
                          :title => data[:title] || 'ErrorTitle',
                          :description => data[:description] || 'Description Here',
                          :serverity => data[:serverity] || 'Urgent',
                          :log => data[:log] || 'error log empty',
                          :app_name => @_app_name
                      }
                      )
      JSON.parse(make_call.body)
      rescue RestClient::NotFound => e
         e.message
      rescue RestClient::InternalServerError => e
         e.message
      end
    end
    # private

  end
end
