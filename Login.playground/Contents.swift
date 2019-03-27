import UIKit



enum Login: Error{
    case wrongPassword,wrongUsername
    case emptyPassword,emptyUsername
    
}

func login(username: String, password: String) throws{

    guard !username.isEmpty else {
        throw Login.emptyUsername
    }
    guard !password.isEmpty else {
        throw Login.emptyPassword
    }
    guard username == "egesucu" else {
        throw Login.wrongUsername
    }
    guard password == "123456" else {
        throw Login.wrongPassword
    }
    print("Successfull login, Welcome \(username)")
    
}

func performLogin(username: String,password: String) throws{
    do {
        try login(username: username, password: password)
    } catch Login.emptyPassword {
        print("Empty Password")
    }catch Login.emptyUsername {
        print("Empty Username")
    }catch Login.wrongUsername {
        print("Wrong Username")
    }catch Login.wrongPassword {
        print("Wrong Password")
    }

}

try performLogin(username: "Ege", password: "123456")
try performLogin(username: "egesucu", password: "324324")
try performLogin(username: "", password: "123456")
try performLogin(username: "egesucu", password: "")
try performLogin(username: "egesucu", password: "123456")
