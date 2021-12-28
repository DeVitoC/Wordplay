import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)
let vowels = ["A", "E", "I", "O", "U", "Y"]
var wordsWithoutVowels: [String] = words.filter({ !vowels.contains(where: $0.contains) })


// Alternately using for loop and if statement
//var wordsWithoutVowels: [String] = []
//for word in words {
//    if !vowels.contains(where: word.contains) {
//        wordsWithoutVowels.append(word)
//    }
//}

print(wordsWithoutVowels)
print(wordsWithoutVowels.count)
