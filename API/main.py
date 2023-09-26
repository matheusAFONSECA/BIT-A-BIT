# código principal da API de simplificação de expressões booleanas
from flask import Flask, redirect, url_for, render_template, request
from flask_cors import CORS
from sympy import sympify, simplify_logic, symbols
from sympy.logic.boolalg import truth_table, SOPform
import re


app = Flask(__name__)

CORS(app)   # permite que qualquer despositivo acesse a API

# -> caso queira definir o local que poderá acessar a API
# CORS(app, origins=['http://localhost:3000'])  # Permitindo solicitações apenas de http://localhost:3000



# ROTA BASE DO SISTEMA DO SERVIDOR
@app.route('/')
def welcome():
	return "BEM VINDO AO SISTEMA DE SIMPLIFICAÇÃO DE ALGEBRA BOOLEANA"


# ROTA QUE REALIZA A SIMPLIFICAÇAÕ DA EXPRESSÃO BOOLEANA -> teste na própria API
# @app.route('/simplifica/<string:expressao>')    # pega a string que foi enviada e simplifica
# def simplifica(expressao):
#     exp_sympy = sympify(expressao)
#     exp_simpli = simplify_logic(exp_sympy)
#     return str(exp_simpli)

# ROTA QUE REALIZA A SIMPLIFICAÇÃO DA EXPRESSÃO BOOLEANA -> usando uma aplicação externa
@app.route('/simplifica', methods=['POST'])
def simplifica():
    data = request.form.get('data')  # Obtém o valor da chave 'data' do corpo da solicitação POST
    exp_sympy = sympify(data)
    exp_simpli = simplify_logic(exp_sympy)
    return str(exp_simpli)


#Simplificar expressão por meio da tabela verdade
@app.route('/simptabela/<string:mapa>')
def simpTabela(mapa):
  #Definir minitermos e calcular num de variáveis
  #Remover caracteres de separação do mapa
  valores = re.sub("{|}|(\s*\d+:\s*)","", mapa)
  minitermos = []
  contador = 0
  for valores in re.split(",", valores):
    if(valores=='1'):
      minitermos.append(contador)
    contador += 1
  #Quantidade de variáveis
  if(contador==4):
    A, B = symbols('A B')
    variaveis = [A, B]
  elif(contador==8):
    A, B, C = symbols('A B C')
    variaveis = [A, B, C]
  elif(contador==16):
    A, B, C, D = symbols('A B C D')
    variaveis = [A, B, C, D]
  elif(contador==32):
    A, B, C, D, E  = symbols('A B C D E')
    variaveis = [A, B, C, D, E]
  exp = SOPform(variaveis, minitermos)
  return str(exp)


if __name__=='__main__':
	app.run(debug=True)     # ATIVA A DEBUGAÇÃO -> mudanças no código acontecem em tempo real na API
    # app.run()               # Roda a API na porta padrão http://127.0.0.1:5000/ -> web, no PC mesmo
    # app.run(host='0.0.0.0', port=8080)    # roda a API em uma porta e host que específicamos -> emulador
