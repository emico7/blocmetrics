require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:registered_application) { create(:registered_application) }
  let(:event) { create(:event) }

 it { is_expected.to belong_to(:registered_application) }

 describe "attribute" do
   it "has a name attributes" do
     expect(event).to have_attributes(name: event.name)

   end
 end
end
