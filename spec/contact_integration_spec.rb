require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('path for contact-index page', {:type => :feature}) do
  it('links user to contact-list page') do
    visit('/')
    click_link('See Contact List')
    expect(page).to have_content('Contacts')
  end

  it('links user to add-new-contact page') do
    visit('/')
    click_link('Add New Contact')
    expect(page).to have_content('Add Contacts')
  end
end
