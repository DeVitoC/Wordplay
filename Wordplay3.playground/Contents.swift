import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)
var wordsWithQ: [String] = words.filter({ $0.contains("Q") && !$0.contains("U") })


// Alternately using for loop and if statement
//var wordsWithQ: [String] = []
//for word in words {
//    if word.contains("Q") && !word.contains("U") {
//        wordsWithQ.append(word)
//    }
//}

print(wordsWithQ)
print(wordsWithQ.count)
