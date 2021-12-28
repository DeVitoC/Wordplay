import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)

var wordsWithTYPE = 0
for word in words where word.contains("TYPE") {
    wordsWithTYPE += 1
}

print(wordsWithTYPE)
