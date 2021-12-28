import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)
var fiveLetterWordsWithCAT: [String] = words.filter({ $0.contains("CAT") && $0.count == 5 })


// Alternately using for loop and if statement
//var fiveLetterWordsWithCAT: [String] = []
//for word in words {
//    if word.contains("CAT") && word.count == 5 {
//        fiveLetterWordsWithCAT.append(word)
//    }
//}

print(fiveLetterWordsWithCAT)
print(fiveLetterWordsWithCAT.count)
