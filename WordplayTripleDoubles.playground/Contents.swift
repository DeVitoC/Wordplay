import Cocoa

let bundle = Bundle.main
guard let path = bundle.path(forResource: "sowpods", ofType: "txt") else { fatalError("path is nil") }
guard let content = try? String(contentsOfFile: path) else { fatalError("content is nil") }

let words = content.components(separatedBy: .newlines)

// create an array to store the success words
// loop through the words
// create a counter to keep track of the number of doubles
// create a variable to keep track of the previous letter
// loop through the characters in the word
// check if the variable is !""
// compare current char to the previous char
// if it's a double, increment the counter
// either way: set prev char  = current char
// check if the counter is at least 3
// if so, add to the array

// print result

var tripleDoubles: [String] = []

for word in words {
    var counter = 0
    var prevLetter = ""

    for char in word {
        if !prevLetter.isEmpty {
            if String(char) == prevLetter {
                counter += 1
            }
        }
        prevLetter = String(char)
    }

    if counter >= 4 {
        tripleDoubles.append(word)
    }
}

print(tripleDoubles)

