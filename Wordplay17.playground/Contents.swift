import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)

let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

var lettersNeverDoubled: [String] = []
for letter in alphabet {
    var hasDouble = false
    let doubleLetter = "\(String(letter))\(String(letter))"
    for word in words {
        if word.contains(doubleLetter) {
            hasDouble = true
        }
    }
    if !hasDouble {
        lettersNeverDoubled.append(String(letter))
    }
}

print(lettersNeverDoubled)
    
