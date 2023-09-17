# código principal da API de simplificação de expressões booleanas
from flask import Flask, redirect, url_for, render_template, request
from sympy import sympify, simplify_logic


app = Flask(__name__)

# ROTA BASE DO SISTEMA DO SERVIDOR
@app.route('/')
def welcome():
	return "BEM VINDO AO SISTEMA DE SIMPLIFICAÇÃO DE ALGEBRA BOOLEANA"


# ROTA QUE REALIZA A SIMPLIFICAÇAÕ DA EXPRESSÃO BOOLEANA
@app.route('/simplifica/<string:expressao>')    # pega a string que foi enviada e simplifica
def simplifica(expressao):
    exp_sympy = sympify(expressao)
    exp_simpli = simplify_logic(exp_sympy)
    return str(exp_simpli)


if __name__=='__main__':
	app.run(debug=True)     # ATIVA A DEBUGAÇÃO -> mudanças no código acontecem em tempo real na API
	# app.run()
