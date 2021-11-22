module Cadastro
  class Registration
    def home_page
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/toolbar').displayed?
    end

    def go_form
      find_element(class: 'android.widget.ImageView').click
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/floating_novo').click
    end
  end

  class Form
    def basic_form
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/rdBasico').click
    end

    def complete_form
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/rdCompleto').click
    end

    def fill_fields_basic
      @nome = Faker::Name.name
      @cpf = DocumentosBr.cpf
      @rg = '15.813.654-8'
      @org = 'SSP'
      @nat = 'Brasileir'
      @email = "test#{@cpf.delete('*-.')}#{'@cinthia.com'}".downcase
      @phone = "11#{Faker::Number.number(digits: 9)}"
      @birthdate = Time.parse(Faker::Date.birthday.to_s).strftime('%d/%m/%Y')
      @adress1 = Faker::Address.street_name 
      @adress2 = Faker::Address.building_number 
      @adress3 = Faker::Address.community 
      @adress4 = Faker::Address.zip_code
      @adress5 = Faker::Address.city
      @adress6 = Faker::Address.full_address
      @states = 'android:id/text1'
      @company = Faker::Company.name
      @profession = Faker::Company.profession
      @date = Time.parse(Faker::Date.in_date_period.to_s).strftime('%d/%m/%Y')
      @income = "30000"
      @bank = Faker::Bank.name
      @agencia = Faker::Number.number(digits: 5)
      @account_bank = Faker::Bank.account_number
      @obs = Faker::Lorem.word
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editNome').send_keys(@nome)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editRg').send_keys(@rg)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editCpf').send_keys(@cpf)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editData').send_keys(@birthdate)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editEndereco').send_keys(@adress1)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editNumero').send_keys(@adress2)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editBairro').send_keys(@adress3)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editCep').send_keys(@adress4)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editCidade').send_keys(@adress5)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/spinnerEstados').click
      find_elements(id: @states)[9].click
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefone1').send_keys(@phone)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefone2').send_keys(@phone)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editEmail').send_keys(@email)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editObs').send_keys(@obs)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar').click
      find_element(id: 'android:id/button1').click
    end

    def basic_form_buttons
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/btnLigar1').displayed?
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/btnLigar2').displayed?
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/btnEnviarEmail').displayed?
    end

    def fill_fields_complete
      @nome = Faker::Name.name
      @cpf = DocumentosBr.cpf
      @rg = '15.813.654-8'
      @org = 'SSP'
      @nat = 'Brasileiro'
      @email = "test#{@cpf.delete('*-.')}#{'@cinthia.com'}".downcase
      @phone = "11#{Faker::Number.number(digits: 9)}"
      @birthdate = Time.parse(Faker::Date.birthday.to_s).strftime('%d/%m/%Y')
      @adress1 = Faker::Address.street_name 
      @adress2 = Faker::Address.building_number 
      @adress3 = Faker::Address.community 
      @adress4 = Faker::Address.zip_code
      @adress5 = Faker::Address.city
      @adress6 = Faker::Address.full_address
      @states = 'android:id/text1'
      @company = Faker::Company.name
      @profession = Faker::Company.profession
      @date = Time.parse(Faker::Date.in_date_period.to_s).strftime('%d/%m/%Y')
      @income = "30000"
      @bank = Faker::Bank.name

      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editNome').send_keys(@nome)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editRg').send_keys(@rg)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editOrgao').send_keys(@org)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editCpf').send_keys(@cpf)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editData').send_keys(@birthdate)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editMae').send_keys(@nome)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editPai').send_keys(@nome)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editNaturalidade').send_keys(@nat)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editEndereco').send_keys(@adress1)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editNumero').send_keys(@adress2)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editBairro').send_keys(@adress3)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editCep').send_keys(@adress4)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editCidade').send_keys(@adress5)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefone1').send_keys(@phone)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefone2').send_keys(@phone)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editEmail').send_keys(@email)
      Appium::TouchAction.new.swipe(start_x: 500, start_y: 1200, end_x: 500, end_y: 400, duration: 800).perform
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editEmpresa').send_keys(@company)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editCargo').send_keys(@profession)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editEnderecoEmpresa').send_keys(@adress6)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editCepEmpresa').send_keys(@adress4)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefoneEmpresa').send_keys(@phone)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editDataAdmissao').send_keys(@date)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editRenda').send_keys(@income)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefoneRef1').send_keys(@phone)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefoneRef2').send_keys(@phone)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editBanco').send_keys(@bank)
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar').click
      find_element(id: 'android:id/button1').click
    end

    def search_form
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editPesquisar').send_keys(@nome)
    end

    def search_form_result
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/editPesquisar').eql?(@nome)
    end

    def select_form
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/nomeLista').click
    end

    def delete_form
      find_element(id: 'br.com.dudstecnologia.cadastrodeclientes:id/btnExcluir').click
      find_element(id: 'android:id/button1').click
    end
  end
end 
 
