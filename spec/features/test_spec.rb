feature 'test' do
  scenario 'visit home page' do
  visit ('/')
  expect(page).to have_content('Hello world!')
  end
end