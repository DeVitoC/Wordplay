import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)
var wordsWithUU: [String] = words.filter({ $0.contains("UU") })

// Alternately using for loop and if statement
//var wordsWithUU: [String] = []
//for word in words {
//    if word.contains("UU") {
//        wordsWithUU.append(word)
//    }
//}

print(wordsWithUU)
