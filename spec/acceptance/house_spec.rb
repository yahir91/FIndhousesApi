require 'rails_helper'
require 'rspec_api_documentation/dsl'
require 'acceptance_helper'

resource "Houses" do
  explanation "Orders resource"
  header "Content-Type", "application/json"
  before :each do
    @file = fixture_file_upload('files/scott-webb-1ddol8rgUH8-unsplash.jpg', 'image/jpg')
  end

  get "/houses" do
    parameter :one_level_arr, with_example: true
    let(:one_level_arr) { ['value1', 'value2', 'value3'] }
    example_request "Get all houses" do
      do_request
      expect(status).to eq 200
    end
  end

  post '/houses' do
    parameter :title, 'title'
    parameter :description, 'description'
    parameter :rent, 1
    # parameter :image, :upload => @file

    example_request 'create a book' do
      expect(status).to eq(200)
    end
  end
end
