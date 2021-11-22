Dado('que estou na tela inicial') do
  @screen.home.home_page
end

Quando('vou para tela de cadastro') do
  @screen.home.go_form
end

Então('posso ver as opções de cadastro básico e completo') do
  @screen.form_fill.basic_form
  @screen.form_fill.complete_form
end

Dado('que acesssei a tela de cadastro de novo cliente básico') do
  step 'vou para tela de cadastro'
  @screen.form_fill.basic_form
end

Quando('preencho os campos de cadastro básico') do
  @screen.form_fill.fill_fields_basic
end

Então('valido os botões do cadastro básico') do
  @screen.form_fill.basic_form_buttons
end

Dado('que acesssei a tela de cadastro de novo cliente') do
  step 'vou para tela de cadastro'
  @screen.form_fill.complete_form
end

Quando('preencho os campos de cadastro completo') do
  @screen.form_fill.fill_fields_complete
end

Então('valido os botões do cadastro completo') do
  @screen.form_fill.basic_form_buttons
end

Quando('busco pelo cadastro básico') do
  step 'vou para tela de cadastro'
  @screen.form_fill.basic_form
  @screen.form_fill.fill_fields_basic
  2.times { @screen.home.back }
  @screen.form_fill.search_form
end

Então('deverá ser listado na tela o cadastro básico') do
  @screen.form_fill.search_form_result
end

Quando('busco pelo cadastro completo') do
  step 'vou para tela de cadastro'
  @screen.form_fill.complete_form
  @screen.form_fill.fill_fields_complete
  2.times { @screen.home.back }
  @screen.form_fill.search_form
end

Então('deverá ser listado na tela o cadastro completo') do
  @screen.form_fill.search_form_result
end

Quando('seleciono um cadastro básico') do
  step 'busco pelo cadastro básico'
  step 'deverá ser listado na tela o cadastro básico'
  @screen.form_fill.select_form
end

Então('faço a exclusão do cadastro básico') do
  @screen.form_fill.delete_form
end

Quando('seleciono um cadastro completo') do
  step 'busco pelo cadastro completo'
  step 'deverá ser listado na tela o cadastro completo'
  @screen.form_fill.select_form
end

Então('faço a exclusão do cadastro completo') do
  @screen.form_fill.delete_form
end

