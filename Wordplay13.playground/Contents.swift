import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)

var wordsWithAllVowels = words.filter({ $0.contains("A") && $0.contains("E") && $0.contains("I") && $0.contains("O") && $0.contains("U") })

var shortestWord = wordsWithAllVowels[0]
for word in wordsWithAllVowels {
    if word.count < shortestWord.count {
        shortestWord = word
    }
}

print(shortestWord)
