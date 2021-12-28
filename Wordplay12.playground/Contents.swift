import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)

var wordsWithGHTLY = [String]()
for word in words where word.hasSuffix("GHTLY") {
    wordsWithGHTLY.append(word)
}

print(wordsWithGHTLY)
