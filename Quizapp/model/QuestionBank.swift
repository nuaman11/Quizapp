
import Foundation

class QuestionBank{
    var list = [Question]()
 
    
    
    init() {
        
        //method 1
     let item = Question(text: "In school, Albert Einstein failed most of the subjects, except for physics and math."
, correctAnswer: true)
        
        list.append(item)
        
        
        //method 2
        list.append(Question(text: "The first song ever sung in the space was Happy Birthday."
, correctAnswer: true))
        
        list.append(Question(text: "The first country in the world to use postcards was the United States of America."
, correctAnswer: false))
      
        list.append(Question(text: "Tea contains more caffeine than coffee and soda."
, correctAnswer: false))
        
        list.append(Question(text: "The first product with a bar code was chewing gum."
, correctAnswer: true))
        
     
    list.append(Question(text: "The Beatles is a famous rock band from Manchester, the United Kingdom.", correctAnswer: false))
        
        list.append(Question(text: "Machu Picchu is an abandoned Incan citadel located in Chile.", correctAnswer: false))
        
        list.append(Question(text: "The star is the most common symbol used in all national flags around the world", correctAnswer: true))
        
        list.append(Question(text: "The capital of Australia is Sydney.", correctAnswer: false))
        
        list.append(Question(text: "tiger is a bird"
        , correctAnswer: false))
        
    }
    
}
