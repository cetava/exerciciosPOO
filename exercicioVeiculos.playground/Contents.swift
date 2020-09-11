import UIKit

class Veiculo{
    var cor: String
    var preco: Float
    var qtdPassageiros: Int
    
    init(cor: String, preco: Float, qtdPassageiros: Int) {
        self.cor = cor
        self.preco = preco
        self.qtdPassageiros = qtdPassageiros
    }
    
    func calculaCombustivel(distancia: Float) -> Float{
        return Float(qtdPassageiros) * distancia
    }
}

class Carro:Veiculo{
    var modelo: String
    var tamanhoDasRodas: Int
    
    init(modelo: String, cor: String, preco: Float, qtdPassageiros: Int, tamanhoDasRodas: Int) {
        self.modelo = modelo
        self.tamanhoDasRodas = tamanhoDasRodas
        super.init(cor: cor, preco: preco, qtdPassageiros: qtdPassageiros)
    }
    
    override func calculaCombustivel(distancia: Float) -> Float {
        return Float(tamanhoDasRodas) * Float(qtdPassageiros) * distancia
    }
}

class Aviao: Veiculo{
    var modelo: String
    var piloto: String
    var ciaAerea: String
    
    init(modelo: String, cor: String, preco: Float, qtdPassageiros: Int, piloto: String, ciaAerea: String) {
        self.modelo = modelo
        self.piloto = piloto
        self.ciaAerea = ciaAerea
        super.init(cor: cor, preco: preco, qtdPassageiros: qtdPassageiros)
    }
}

let boing777 = Aviao(modelo: "Boing 777", cor: "Vermelho", preco: 306000000, qtdPassageiros: 440, piloto: "Narlei", ciaAerea: "TAM")
let gol = Carro(modelo: "Gol", cor: "Preto", preco: 45000, qtdPassageiros: 5, tamanhoDasRodas: 15)


print("O Avião \(boing777.modelo) gasta por viagem \(boing777.calculaCombustivel(distancia: 2000)) litros de combistível")
print("\n --- \n")
print("O Carro \(gol.modelo) gasta por viagem \(gol.calculaCombustivel(distancia: 3000)) litros de combistível")

