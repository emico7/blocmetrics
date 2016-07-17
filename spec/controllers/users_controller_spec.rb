require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let (:user) { create(:user) }

  describe "GET #show" do

    before do
      sign_in user
    end

    it "returns http success" do
      get :show, {id: user.id}
      expect(response).to have_http_status(:success)
    end
  end
end
