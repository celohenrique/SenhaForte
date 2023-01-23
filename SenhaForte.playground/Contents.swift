import UIKit
//
//- Pelo menos 1 letra maiúscula X
//- A senha deve ter entre 5 e 15 caracteres X
//- A senha deve iniciar com uma letra maiúscula X
//- Pelo menos 1 letra minúscula X
//- Pelo menos 1 número X
//- Não pode conter caracteres especiais X


//- Não pode conter 3 números seguidos em sequência (Ex: **Teste123** - Inválido; **T1es2te3** - Válido)



func checkPassword(_ password: String) -> Bool {
    var hasLowerCase = false
    var hasUpperCase = false
    var hasNumber = false
    var countCheck = false
    var checkSpecial = true
    var hasSequence = false
  
    
    if password.count < 5 || password.count > 15 {
        countCheck = false
    } else{
        countCheck = true
    }
    
    if password.first?.isUppercase ?? false {
        hasUpperCase = true
    }
    
    for str in password {
        
        if str.isLowercase {
            hasLowerCase = true
        }
        
        if str.isNumber {
            hasNumber = true
            
        }
        if str.isPunctuation {
            checkSpecial = false
        }
        
    }
    
    if countCheck && hasUpperCase && hasLowerCase && hasNumber && checkSpecial{
        print(hasSequence)
        return true
    }
    
    else {
        return false
    }
}




let pass1 = "Teste1"

if checkPassword(pass1) {
    print("Senha forte")
}
else {
    print("Não atende os requisitos!")
}
