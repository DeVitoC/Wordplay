import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)

let vowels = ["A", "E", "I", "O", "U"]
var wordsWithNoVowels = words.filter({ !vowels.contains(where: $0.contains) })

var longestWord = wordsWithNoVowels[0]
for word in wordsWithNoVowels {
    if word.count > longestWord.count {
        longestWord = word
    }
}

print(longestWord)
