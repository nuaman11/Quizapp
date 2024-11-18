
import Foundation
class Question {
    
    var questionText : String
    var answer : Bool
    
    init( text : String, correctAnswer : Bool){
        questionText = text
        answer = correctAnswer
    }
}
