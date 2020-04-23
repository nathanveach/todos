require "rails_helper"

feature "User sees own todos" do
	scenario "Doesn't see others' todos" do
		Todo.create!(title: 'Buy milk', email: 'stranger@example.com')

		sign_in

		expect(page).not_to have_css ".todos li", text: "Buy milk"
	end
end
