import Foundation

protocol UserLoginProtocol {
    var userEmail: String { get }
    var userPassword: String { get }
    var errorMessage: String { get }
    
    // MARKL: Login validations
    func login()
    func validate() -> Bool
    
}


protocol RegisterUserProtocol {
    var userEmail: String { get }
    var userPassword: String { get }
    var userName: String { get }
    
    func createNewUser()
    func validate() -> Bool
}

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joinder: TimeInterval
}
