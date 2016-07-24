require 'rails_helper'

RSpec.describe API::EventsController, type: :controller do
  let(:user1) { create(:user, email: "newuser@blocmetrics.io", username: "happyuser99") }
  let(:registered_application) { create(:registered_application, user_id: user1.id) }
  let(:event) { create(:event) }

   describe "POST create" do

     it "returns http success" do
       expect(response).to have_http_status(:success)
     end

     it "returns json content type" do
       expect(response.content_type).to eq 'application/json'
     end

     it "creates a event with the correct attributes" do
       json = JSON.parse(response.body)
       expect(json[':name']).to eq(@event.name)
     end
   end
 end
