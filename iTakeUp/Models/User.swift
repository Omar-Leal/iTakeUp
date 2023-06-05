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
}
