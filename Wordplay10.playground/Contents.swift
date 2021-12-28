import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)

var wordsWithAllVowelsIO: [String] = []
for word in words {
    var hasA = false
    var hasE = false
    var hasI = false
    var hasO = false
    
    for letter in word {
        if !hasA && letter != "A" {
            continue
        } else if letter == "A" {
            hasA = true
        } else if letter == "E" && hasA && !hasE {
            hasE = true
        } else if letter == "I" && hasE && !hasI {
            hasI = true
        } else if letter == "O" && hasI && !hasO {
            hasO = true
        } else if letter == "U" && hasO {
            wordsWithAllVowelsIO.append(word)
            break
        } else if !"AEIOU".contains(letter) {
            continue
        } else {
            break
        }
    }
}

print(wordsWithAllVowelsIO)
print(wordsWithAllVowelsIO.count)
