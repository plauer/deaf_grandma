require 'spec_helper'
# require_relative '../spec_helper'

# feature "Grandma" do

feature "homepage" do
  scenario "displays 'Deaf Grandma'" do
    visit root_path
    expect(page).to have_content "Deaf Grandma"
  end
end

feature "grandma's deaf response" do
  scenario "displays response when input not capitalized" do
    visit '/grandma'
    fill_in "input", :with => "Big balls"
    click_on "Say it!"
    expect(page).to have_content "Speak the shit up!"
  end
end

feature "grandma's normal response" do
  scenario "displays angry response when input is capitalized" do
    visit '/grandma'
    fill_in "input", :with => "GRANDMA YOU'RE LAME"
    click_on "Say it!"
    expect(page).to have_content "Shut the fuck up sonny!"
  end
end


# end
