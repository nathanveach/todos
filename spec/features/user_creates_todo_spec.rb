require "rails_helper"


feature "User creates todo" do  
	scenario "Succesfully" do
		sign_in 

		click_on "Add a new todo"
		fill_in "Title", with: "Buy milk"
		click_on "Submit"

		expect(page).to have_content "Buy milk"

	end
end
