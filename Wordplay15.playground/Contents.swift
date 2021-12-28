import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)

let qXZ = ["Q", "X", "Z"]
let wordsWithQXZ = words.filter({ qXZ.contains(where: $0.contains) })

var qXZDict: [String: Int] = ["Q": 0, "X": 0, "Z": 0]
for word in wordsWithQXZ {
    for letter in word {
        if !qXZ.contains(where: String(letter).contains) {
            continue
        } else {
            qXZDict[String(letter)]! += 1
        }
    }
}

var leastCommonLetter = ""
var numleastCommon = Int.max
for (key, value) in qXZDict {
    if value < numleastCommon {
        leastCommonLetter = key
        numleastCommon = value
    }
}

print(leastCommonLetter)
    
