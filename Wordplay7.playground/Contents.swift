import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)
let yWordsWithY: [String] = words.filter({ $0.hasPrefix("Y") && $0.hasSuffix("Y") })


// Alternately using for loop and if statement
//var yWordsWithY: [String] = []
//for word in words {
//    if word.hasPrefix("Y") && word.hasSuffix("Y") {
//        yWordsWithY.append(word)
//    }
//}

print(yWordsWithY)
print(yWordsWithY.count)
