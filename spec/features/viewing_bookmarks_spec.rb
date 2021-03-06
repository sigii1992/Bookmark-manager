require 'pg'

feature 'Viewing bookmarks' do
  scenario 'user can view the bookmarks on page' do
  
    Bookmark.create(url: "http://www.makersacademy.com/", title: "Makers Academy")
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy all software")
    Bookmark.create(url: "http://www.google.com/", title: "Google")

    visit('/bookmarks')
    expect(page).to have_link("Makers Academy", href: "http://www.makersacademy.com/")
    expect(page).to have_link("Google", href: "http://www.google.com/")
    expect(page).to have_link("Destroy all software", href: "http://www.destroyallsoftware.com")
  end
end