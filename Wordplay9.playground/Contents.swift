import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)
let wordsWithAllVowels: [String] = words.filter({ $0.contains("A") && $0.contains("E") && $0.contains("I") && $0.contains("O") && $0.contains("U") })

// Alternately using for loop and if statement
//var wordsWithAllVowels: [String] = []
//for word in words {
//    if word.contains("A") && word.contains("E") && word.contains("I") && word.contains("O") && word.contains("U") {
//        wordsWithAllVowels.append(word)
//    }
//}

print(wordsWithAllVowels)
print(wordsWithAllVowels.count)
