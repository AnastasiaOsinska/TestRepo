import UIKit

let string = "find the, longest word, in the string."

func separatedBy(string: String) -> [String] {
    var bufferString = ""
    var array = [String]()
    for element in string {
        if element != " " {
            bufferString.append(element)
        } else {
            array.append(bufferString)
            bufferString = ""
        }
    }
    return array
}

func cleanString(string: String) -> String {
    var cleanString = ""
    for element in string {
        if element != "," && element != "." {
            cleanString.append(element)
        }
    }
    return cleanString
}


func word(string: String) {
    let newString = cleanString(string: string)
    let wordsArray = separatedBy(string: newString)
    var max = wordsArray[0]
    for element in wordsArray {
        max = element.count > max.count ? element : max
    }
    print ("\(max)")
}
word(string: string)
