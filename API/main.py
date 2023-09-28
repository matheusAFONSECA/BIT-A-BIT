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


# ROTA QUE REALIZA A SIMPLIFICAÇAÕ DA EXPRESSÃO BOOLEANA POR MEIO DA TABELA DA VERDADE -> teste na própria API 
# Simplificar expressão por meio da tabela verdade
# @app.route('/simptabela/<string:mapa>')
# def simpTabela(mapa):
#   #Definir minitermos e calcular num de variáveis
#   #Remover caracteres de separação do mapa
#   valores = re.sub("{|}|(\s*\d+:\s*)","", mapa)
#   minitermos = []
#   contador = 0
#   for valores in re.split(",", valores):
#     if(valores=='1'):
#       minitermos.append(contador)
#     contador += 1
#   #Quantidade de variáveis
#   if(contador==4):
#     A, B = symbols('A B')
#     variaveis = [A, B]
#   elif(contador==8):
#     A, B, C = symbols('A B C')
#     variaveis = [A, B, C]
#   elif(contador==16):
#     A, B, C, D = symbols('A B C D')
#     variaveis = [A, B, C, D]
#   elif(contador==32):
#     A, B, C, D, E  = symbols('A B C D E')
#     variaveis = [A, B, C, D, E]
#   exp = SOPform(variaveis, minitermos)
#   return str(exp)


# ROTA QUE REALIZA A SIMPLIFICAÇAÕ DA EXPRESSÃO BOOLEANA POR MEIO DA TABELA DA VERDADE -> usando uma aplicação externa
# Simplificar expressão por meio da tabela verdade
@app.route('/simptabela', methods=['POST'])
def simpTabela():
    data = request.form.get('mapa')  # Obtém o valor da chave 'mapa' do corpo da solicitação POST
    # Definir minitermos e calcular num de variáveis
    # Remover caracteres de separação do mapa
    valores = re.sub("{|}|(\s*\d+:\s*)", "", data)
    minitermos = []
    contador = 0
    for valores in re.split(",", valores):
        if valores == '1':
            minitermos.append(contador)
        contador += 1
    # Quantidade de variáveis
    if contador == 4:
        A, B = symbols('A B')
        variaveis = [A, B]
    elif contador == 8:
        A, B, C = symbols('A B C')
        variaveis = [A, B, C]
    elif contador == 16:
        A, B, C, D = symbols('A B C D')
        variaveis = [A, B, C, D]
    elif contador == 32:
        A, B, C, D, E = symbols('A B C D E')
        variaveis = [A, B, C, D, E]
    exp = SOPform(variaveis, minitermos)
    return str(exp)


# ROTA QUE GERA A TABELA DA VERDADE -> teste na própria API
#Gerar tabela da verdade
#String para sympy, lista as variaveis e retorna uma lista da tabela
# @app.route('/tabela/<string:exp>')
# def tabela(exp):
#   exp_sympy = sympify(exp)
#   simbolos = list(exp_sympy.free_symbols)
#   tabela = truth_table(exp_sympy, simbolos)
#   return str(list(tabela))


# ROTA QUE GERA A TABELA DA VERDADE -> usando uma aplicação externa
#Gerar tabela da verdade
#String para sympy, lista as variaveis e retorna uma lista da tabela
@app.route('/tabela', methods=['POST'])
def tabela():
    data = request.form.get('exp')  # Obtém o valor da chave 'exp' do corpo da solicitação POST
    data2 = request.form.get('vars')  # Obtém o valor da chave 'vars' do corpo da solicitação POST
    exp_sympy = sympify(data)
    simbolos = []
    data2 = re.sub("\[|\]|\s", "", data2)
    for valores in re.split(",", data2):
        simbolos.append(valores)
    tabela = truth_table(exp_sympy, simbolos)
    return str(list(tabela))


if __name__=='__main__':
	# app.run(debug=True)     # ATIVA A DEBUGAÇÃO -> mudanças no código acontecem em tempo real na API
    #app.run()               # Roda a API na porta padrão http://127.0.0.1:5000/ -> web, no PC mesmo
    app.run(host='0.0.0.0', port=8080)    # roda a API em uma porta e host que específicamos -> emulador
