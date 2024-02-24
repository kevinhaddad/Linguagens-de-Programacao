var array: [Int] = []

// Função para printar o array na tela
func imprimirArray(_ array: [Int]) {
    print("Array: \(array)")
}

// Função para trocar dois elementos de posição no array
func trocar(_ array: inout [Int], _ i: Int, _ j: Int) {
    let temp = array[i]
  array[i] = array[j]
  array[j] = temp
}

// Função que implementa o Bubble Sort
func algoritmoBolha(_ array: inout [Int]) {
    let n = array.count
    for i in 0..<n {
        for j in 0..<n - i - 1 {
            if array[j] > array[j + 1] {
                trocar(&array, j, j + 1)
            }
        }
    }
}

// Função para pedir elementos ao usuário
func pedirElementos() {
    print("Preencha 10 elementos com valores não repetidos:")
    for _ in 1...10 {
        if let input = readLine(), let value = Int(input) {
          array.append(value)
        }
    }
}

// Função para mostrar o segundo maior elemento do array
func mostrarResultado() {
    print("O segundo maior elemento do array é: \(array[array.count - 2])")
}

pedirElementos()
imprimirArray(array)
algoritmoBolha(&array)
mostrarResultado()
