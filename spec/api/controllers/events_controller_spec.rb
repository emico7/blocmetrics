require 'rails_helper'

RSpec.describe API::EventsController, type: :controller do
  let(:user1) { create(:user) }
  let(:registered_application) { create(:registered_application) }
  let(:event) { create(:event) }

     describe "POST create" do
       before { post :create, params: { event: {name: event.name, registered_application_id: registered_application.id} } }

       it "returns http success" do
         expect(response).to have_http_status(:success)
       end

       it "returns json content type" do
         expect(response.content_type).to eq 'application/json'
       end

       it "creates a event with the correct attributes" do
         hashed_json = JSON.parse(response.body)
         expect(hashed_json["name"]).to eq(@registered_application.name)
         expect(hashed_json["url"]).to eq(@registered_application.url)
       end

   end
 end
