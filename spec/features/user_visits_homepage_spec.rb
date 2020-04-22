require "rails_helper"

feature "User visits hompage" do 
	scenario "successfully" do
		visit root_path

		expect(page).to have_css 'h1', text: 'Todos'
	end
end
