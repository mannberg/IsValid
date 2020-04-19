import Foundation

public struct IsValid {
    public static func displayName(_ string: String) -> Bool {
        string.count > 0 && string.count <= 50
    }
    
    public static func email(_ string: String) -> Bool {
        string.matches(
            "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        )
    }
    
    public static func password(_ string: String) -> Bool {
        string.matches(
            "^(?=.*[A-Za-z])(?=.*[0-9])(?!.*[^a-zA-Z0-9_!@#$&*]).{8,20}$"
        )
    }
}

fileprivate extension String {
    func matches(_ regex: String) -> Bool {
        self.range(of: regex, options: .regularExpression) != nil
    }
}
