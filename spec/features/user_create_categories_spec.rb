require 'rails_helper'

feature 'User create categories' do
  scenario 'successfully' do

    category = Category.new(name: 'Analista de suporte')

    visit new_category_path

    fill_in 'Categoria', with: category.name

    click_on 'Criar categoria'

    expect(page).to have_css('h1', text: category.name)
  end

end
