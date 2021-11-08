require 'bookmark'

describe Bookmark do
  it 'should include all bookmarks' do
    bookmarks = Bookmark.all
    expect(bookmarks).to include("http://www.makersacademy.com")
    expect(bookmarks).to include("http://www.google.com")
    expect(bookmarks).to include("http://www.youtube.com")
  end
end