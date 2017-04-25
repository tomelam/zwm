require 'rails_helper'
RSpec.feature 'Forums', type: :feature do
  it 'homepage responds with 200' do
    visit thredded_path
    expect(page.status_code).to be 200
  end
end
