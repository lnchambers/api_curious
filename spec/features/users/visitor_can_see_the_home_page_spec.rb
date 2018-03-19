require "rails_helper"

describe "As a visitor" do
  describe "when I visit the root path" do
    it "I can see a link to log in" do
      visit root_path

      expect(page).to have_content("Login")
    end
  end
end
