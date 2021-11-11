require 'pg'

feature 'add bookmarks' do
  scenario 'user can submit a new bookmark' do
    visit '/bookmarks/new'
    fill_in :url, with: 'http://gmail.com'
    fill_in :title, with: 'Gmail'
    click_button "Add bookmark!"
    expect(page).to have_link('Gmail', href: 'http://gmail.com')
  end
end