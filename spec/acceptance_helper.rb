require 'rails_helper'
require 'rspec_api_documentation'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  # Output folder
  config.curl_host = 'http://localhost:4000'
  config.api_name = 'Houses API'
  config.docs_dir = Rails.root.join('doc', 'api')
  # An array of output format(s).
  # Possible values are :json, :html, :combined_text, :combined_json,
  #   :json_iodocs, :textile, :markdown, :append_json
  config.format = [:json]
end
