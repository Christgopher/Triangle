require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the triangle path', {:type => :feature}) do
  it('checks if not a triangle') do
    visit('/')
    fill_in('side1', :with => '2')
    fill_in('side2', :with => '3')
    fill_in('side3', :with => '6')
    click_button('Go!')
    expect(page).to have_content('Not a triangle')
  end
  it('checks what kind of triangle') do
    visit('/')
    fill_in('side1', :with => '3')
    fill_in('side2', :with => '3')
    fill_in('side3', :with => '3')
    click_button('Go!')
    expect(page).to have_content('Equilateral')
  end
end
