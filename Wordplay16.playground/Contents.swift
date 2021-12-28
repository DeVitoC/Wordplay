import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)

let palindromes = words.filter({ $0 == String($0.reversed()) })

var longestPalindrome = palindromes[0]
for word in palindromes {
    if word.count > longestPalindrome.count {
        longestPalindrome = word
    }
}

print(longestPalindrome)
    
