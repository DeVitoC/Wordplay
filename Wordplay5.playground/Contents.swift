import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)
var largeWordsWithoutAE: [String] = words.filter({ !$0.contains("E") && !$0.contains("A") && $0.count >= 15 })


// Alternately using for loop and if statement
//var largeWordsWithoutAE: [String] = []
//for word in words {
//    if !word.contains("E") && !word.contains("A") && word.count >= 15 {
//        largeWordsWithoutAE.append(word)
//    }
//}

print(largeWordsWithoutAE)
print(largeWordsWithoutAE.count)
