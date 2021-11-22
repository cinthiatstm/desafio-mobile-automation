require_relative "android_screens"

class AndroidScreens
  attr_accessor :home, :form_fill

  def initialize
    @home = Cadastro::Registration.new
    @form_fill = Cadastro::Form.new
  end
end

