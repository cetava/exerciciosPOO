import UIKit

class Funcionario{
    var nome: String
    var salario: Float
    var cpf: String
    
    init(nome: String, salario: Float, cpf: String) {
        self.nome =  nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func receberBonus() -> Float{
        return salario * 1.05
    }
}

class Programador: Funcionario{
    var plataformaDeTrabalho: String
    let bonus: Float = 0.20
    
    init(nome: String, salario: Float, cpf: String, plataformaDeTrabalho: String) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func receberBonus() -> Float {
        return salario * bonus
    }
    
    
}

class Designer: Funcionario{
    var ferramentaPreferida: String
    let bonus: Float = 0.15
    
    init(nome: String, salario: Float, cpf: String, ferramentaPreferida: String) {
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func receberBonus() -> Float {
        return salario * bonus
    }
}

let wedson = Programador(nome: "Wedson", salario: 10000.00, cpf: "666555444-99", plataformaDeTrabalho: "iOS")

print("\(wedson.nome) - Bonus de \(wedson.receberBonus())")

let cesar = Designer(nome: "Cesar", salario: 8000.00, cpf: "999888777-77", ferramentaPreferida: "Photoshop")
print("\(cesar.nome) - Bonus de \(cesar.receberBonus())")
