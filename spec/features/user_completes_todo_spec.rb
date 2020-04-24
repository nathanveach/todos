require "rails_helper"


feature "User completes todo" do 
	scenario "Successfully" do 
		sign_in

		click_on "Add a new todo"
		fill_in "Title", with: "Buy milk"
		click_on "Submit"
		
		click_on "Mark as completed"

		expect(page).to have_css("li", class: "completed")
	end
end
