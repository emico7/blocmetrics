require 'rails_helper'

RSpec.describe RegisteredApplication, type: :model do
  let(:user) { create(:user) }
  let(:registered_application) { create(:registered_application) }

 it { is_expected.to belong_to(:user) }

 describe "attributes" do
   it "has name and url attributes" do
     expect(registered_application).to have_attributes(name: registered_application.name)
     expect(registered_application).to have_attributes(url: registered_application.url)
   end
 end
end
