import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)
var smallWordsWithBX: [String] = words.filter({ $0.contains("B") && $0.contains("X") && $0.count < 5 })


// Alternately using for loop and if statement
//var smallWordsWithBX: [String] = []
//for word in words {
//    if word.contains("B") && word.contains("X") && word.count < 5 {
//        smallWordsWithBX.append(word)
//    }
//}

print(smallWordsWithBX)
print(smallWordsWithBX.count)
