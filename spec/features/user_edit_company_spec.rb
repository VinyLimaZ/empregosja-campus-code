require 'rails_helper'

feature 'User edit company' do
  scenario 'successfully' do

    company = Company.create(name: 'Campus Code',
                             location: 'São Paulo',
                             mail: 'contato@campus.com.br',
                             phone: '2369-3476')

    visit edit_company_path(company)

    fill_in 'Nome', with: 'Google'
    fill_in 'Local', with: 'Bauru'
    fill_in 'Email', with: 'contato@google.com.br'
    fill_in 'Telefone', with: '123456789'

    click_on 'Editar Empresa'

    expect(page).to have_css('h1', text: 'Google')
    expect(page).to have_content('Bauru')
    expect(page).to have_content('contato@google.com.br')
    expect(page).to have_content('123456789')

  end
end
