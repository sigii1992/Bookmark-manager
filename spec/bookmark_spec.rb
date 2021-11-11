require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
  
      bookmark = Bookmark.create(url: "http://www.makersacademy.com/", title: "Makers Academy")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.create(url: "http://www.google.com/", title: "Google")
  
      bookmarks = Bookmark.all
  
      expect(bookmarks.first.url).to eq("http://www.makersacademy.com/")
      expect(bookmarks.first.title).to eq("Makers Academy")
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.something.org', title: "Something")
  
      expect(bookmark.url).to eq 'http://www.something.org'
      expect(bookmark.title).to eq "Something"
    end
  end

end