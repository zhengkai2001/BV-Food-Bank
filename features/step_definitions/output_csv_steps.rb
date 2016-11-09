When(/^a donor goes to the index page$/) do
  visit root_path
end

When(/^he fills the form of donation and donor's information$/) do
  expect(page).to have_content("Brazos Valley Food Bank")
end

When(/^he presses "([^"]*)" button$/) do |arg1|
  expect(page).to have_content("Brazos Valley Food Bank")
end

Then(/^I can get his information in a csv file$/) do
  file_name = "DonationInfo_#{Date.today}.csv"
  expect(File.file?(file_name))
end