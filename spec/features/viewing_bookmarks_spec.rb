require 'pg'

feature 'Viewing bookmarks' do
  scenario 'user can view the bookmarks on page' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
  
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com/');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com/');")

    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com/"
    expect(page).to have_content "http://www.google.com/"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end