from sympy import sympify, simplify_logic, symbols
from sympy.logic.boolalg import truth_table

#Simplificar expressao booleana
#String para sympy, simplifica e retorna em string
def simplificar(exp):
  exp_sympy = sympify(exp)
  exp_simpli = simplify_logic(exp_sympy)
  return str(exp_simpli)

#Gerar tabela da verdade
#String para sympy, lista as variaveis e retorna uma lista da tabela
def tabela(exp):
  exp_sympy = sympify(exp)
  simbolos = list(exp_sympy.free_symbols)
  tabela = truth_table(exp_sympy, simbolos)
  return list(tabela)

#Rodar uma expressao e mostrar resultado
exp_teste = '(A & B) | (A & C) | (B & C) | (A & B & C)'
simplificado = simplificar(exp_teste)
tabela = tabela(exp_teste)

print(simplificado)
for linha in tabela:
    print(linha)