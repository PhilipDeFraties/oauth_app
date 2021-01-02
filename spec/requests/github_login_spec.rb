require 'rails_helper'

RSpec.describe 'Github Login' do
  it 'user can login using github from welcome page' do
    visit root_path
    click_link('Log in with github')
  end
end
