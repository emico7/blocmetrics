require 'rails_helper'

RSpec.describe User, type: :model do
  let (:user) { create(:user) }

  it { is_expected.to have_many(:registered_applications) }

  describe "attributes" do
    it "should have first_name, last_name, username, email, password and password_confirmation attributes" do
      expect(user).to have_attributes(first_name: user.first_name, last_name: user.last_name, username: user.username, email: user.email, password: user.password, password_confirmation: user.password_confirmation)
    end
  end
end
