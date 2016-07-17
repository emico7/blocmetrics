require 'rails_helper'

RSpec.describe RegisteredApplicationsController, type: :controller do

  let(:user) { create(:user) }
  let(:registered_application1) { create(:registered_application, user: user) }
  let(:registered_application2) { create(:registered_application, user: user) }

  describe "POST create" do
    it "increases the number of registered_application by 1" do
      expect{ post :create, user_id: user.id, registered_application1: {name: registered_application1.name, url: registered_application1.url} }.to change(RegisteredApplication,:count).by(1)
    end

    it "increases the sum of registered_applications by 1" do
      count = user.registered_applications.count
      post :create, user_id: user.id, registered_application_id: registered_application2.id
      expect(user.registered_applications.count).to eq(count + 1)
    end
  end

  describe "DELETE destroy" do

    before do
      sign_in user
    end

    it "deletes the registered_application" do
      delete :destroy, user_id: user.id, id: registered_application1.id
      count = RegisteredApplication.where({id: registered_application1.id}).count
      expect(count).to eq(0)
    end

    it "returns http success" do
      delete :destroy, user_id: user.id, id: registered_application1.id
      expect(response).to have_http_status(:success)
    end
  end
end
