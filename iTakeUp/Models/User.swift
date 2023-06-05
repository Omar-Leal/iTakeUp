import Foundation

protocol UserLoginProtocol {
    var userEmail: String { get }
    var userPassword: String { get }
    
    // MARKL: Login validations
    func login()
    func validate()
    
}
