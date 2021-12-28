import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)
var wordsWithXYZ: [String] = words.filter({ $0.contains("X") || $0.contains("Y") || $0.contains("Z") })


// Alternately using for loop and if statement
//var wordsWithXYZ: [String] = []
//for word in words {
//    if word.contains("X") || word.contains("Y") || word.contains("Z") {
//        wordsWithXYZ.append(word)
//    }
//}

print(wordsWithXYZ)
print(wordsWithXYZ.count)
