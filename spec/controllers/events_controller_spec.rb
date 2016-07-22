require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  let(:user) { create(:user) }
  let(:registered_application) { create(:registered_application) }
  let(:event) { create(:event) }

  describe "GET #show" do

    it "returns http success" do
      get :show, params: {registered_application_id: registered_application.id, id: event.id}
      expect(response).to have_http_status(:success)
    end
  end

end
