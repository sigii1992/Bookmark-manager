feature 'Deleting a bookmark' do 
  scenario 'User can delete a bookmark' do
    Bookmark.create(url: "http://www.makersacademy.com/", title: "Makers Academy")
    visit('/bookmark')
    expect(page).to have_link('Makers Academy', href: 'http://makersacademy.com')
    first('.bookmark').click_button 'Delete'
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Makers Academy', href: 'http://makersacademy.com')
  end
end




    
    