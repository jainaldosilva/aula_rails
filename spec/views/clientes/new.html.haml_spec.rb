require 'rails_helper'

RSpec.describe "clientes/new", :type => :view do
  before(:each) do
    assign(:cliente, Cliente.new(
      :nome => "MyString",
      :cpf => "MyString",
      :email => "MyString",
      :senha => "MyString"
    ))
  end

  it "renders new cliente form" do
    render

    assert_select "form[action=?][method=?]", clientes_path, "post" do

      assert_select "input#cliente_nome[name=?]", "cliente[nome]"

      assert_select "input#cliente_cpf[name=?]", "cliente[cpf]"

      assert_select "input#cliente_email[name=?]", "cliente[email]"

      assert_select "input#cliente_senha[name=?]", "cliente[senha]"
    end
  end
end
