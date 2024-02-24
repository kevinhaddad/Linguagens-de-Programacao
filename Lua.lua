-- Um programa que pede para o usuário inserir um array de 10 elementos, 
-- com valores não repetidos.
-- Ao final do programa mostre o valor do segundo maior elemento do array
table = {}

io = require('io')

-- Função para printar a tabela na tela
function imprimirTabela(table)
  io.write('[')
  for key, value in pairs(table) do
    if key < #table then
      io.write(value..', ')
    else
      io.write(value)
    end
  end
  io.write(']\n')
end

-- Função para trocar dois elementos de posição na tabela
local function trocar(table, i, j)
    local temp = table[i]
    table[i] = table[j]
    table[j] = temp
end

-- Função que implementa o Bubble Sort
function algoritmoBolha(table)
    local n = #table
    for i = 1, n do
        for j = 1, n - i do
            if table[j] > table[j + 1] then
                trocar(table, j, j + 1)
            end
        end
    end
    return table
end

-- Função para pedir elementos ao usuário
function pedirElementos()

  print ("Preencha 10 elementos com valores não repetidos: ")

  for i=1,10 do
      table[i] = io.read("*number")
  end
end

--função para mostrar o segundo maior elemento da tabela
function mostrarResultado()
  print ("O segundo maior elemento da tabela é: " .. table[#table -1])
end

pedirElementos()
imprimirTabela(table)
algoritmoBolha(table)
mostrarResultado()

-- FIM