# -> A biblioteca Flask é usada para fazermos um servidor de dados, ou seja,
# conseguimos fazer um servidor por onde vamos fazer as consutas de dados para
# tratá-las no app
# -> Podemos usar comandos HTML para realizar a modelagem de dados
# -> Fazer códigos separados e só chamar os métodos deles aqui
# -> por padrão o servidor vai rodar localmente
from flask import Flask

app = Flask(__name__)   

@app.route('/')     # -> colocamos a inform após a "/" para determinar qual aba o app irá
def hello():        # -> função realizada na aba designada
    return 'Hello, world!'

"""
-> EXEMPLO DE COMO MANDAR INFORMÇÃO PARA UMA OUTRA ABA
@app.route('/HELLO')     # -> colocamos a inform após a "/" para determinar qual aba o app irá
def hello():                # -> função realizada na aba designada
    return '<H1> HELLO </H1>'
"""

# função principal
if __name__ == '__main__':
    app.run()       # faz o servidor rodar
