//
//  QuestionBrain.swift
//  36
//
//  Created by Диана Нуансенгси on 07.06.2021.
//

import Foundation
import UIKit


struct QuestionBrain {
    var questionNumberForBottomLabel = 0
    var questionNumberForTopLabel = 1
    var questions = [
        Question(textOfQuestion: "1. Учитывая , что вы можете выбрать любого человека в мире, кого бы вы хотели пригласить на ужин?"),
        Question(textOfQuestion: "2. Хотели бы вы стать знаменитым? В каком смысле?"),
        Question(textOfQuestion:"3. Перед телефонным звонком вы когда-нибудь репетируете то, что собираетесь сказать? Почему?"),
        Question(textOfQuestion: "4. Что для вас было бы 'идеальным' днем?"),
        Question(textOfQuestion: "5. Когда вы в последний раз пели самому себе? Кому-то еще?"),
        Question(textOfQuestion: "6. Если бы вы смогли дожить до 90 лет и сохранить ум или тело 30-летнего человека в течение последних 60 лет своей жизни, чего бы вы хотели?"),
        Question(textOfQuestion: "7. Есть ли у вас тайное предчувствие о том, как вы умрете?"),
        Question(textOfQuestion: "8. Назовите три вещи, которые, по-видимому, есть у вас и вашего партнера."),
        Question(textOfQuestion: "9. За что в своей жизни вы чувствуете наибольшую благодарность?"),
        Question(textOfQuestion: "10. Если бы вы могли что-то изменить в том, как вас воспитывали, что бы это было?"),
        Question(textOfQuestion: "11. Потратьте четыре минуты и расскажите своему партнеру историю своей жизни как можно подробнее."),
        Question(textOfQuestion: "12. Если бы вы могли проснуться завтра, обретя какое-либо качество или способность, что бы это было?"),
        Question(textOfQuestion: "13. Если бы хрустальный шар мог рассказать вам правду о себе, своей жизни, будущем или о чем-то еще, что бы вы хотели знать?"),
        Question(textOfQuestion: "14. Есть ли что-то, о чем вы мечтали какое-то время? Почему ты этого не сделал?"),
        Question(textOfQuestion: "15. Какое самое большое достижение в вашей жизни?"),
        Question(textOfQuestion: "16. Что вы больше всего цените в дружбе?"),
        Question(textOfQuestion: "17. Какое ваше самое дорогое воспоминание?"),
        Question(textOfQuestion: "18. Какое ваше самое страшное воспоминание?"),
        Question(textOfQuestion: "19. Если бы вы знали, что через год внезапно умрете, изменили бы вы что-нибудь в том, как вы сейчас живете? Почему?"),
        Question(textOfQuestion: "20. Что для вас значит дружба?"),
        Question(textOfQuestion: "21. Какую роль играют любовь и привязанность в вашей жизни?"),
        Question(textOfQuestion: "22. Поочередно делитесь тем, что вы считаете положительной характеристикой вашего партнера. Поделитесь в общей сложности пятью предметами."),
        Question(textOfQuestion: "23. Насколько близка и тепла ваша семья? Чувствуете ли вы, что ваше детство было счастливее, чем у большинства других людей?"),
        Question(textOfQuestion: "24. Как вы относитесь к своим отношениям с матерью?"),
        Question(textOfQuestion: "25. Составьте по три правдивых предложения, начинающихся с 'мы'. Например: 'Мы оба в этой комнате чувствуем ...'"),
        Question(textOfQuestion: "26. Завершите это предложение: 'Я хотел бы, чтобы у меня был кто-то, с кем я мог бы поделиться ...'"),
        Question(textOfQuestion: "27. Если вы собираетесь стать близким другом со своим партнером, пожалуйста, поделитесь тем, что ему или ей было бы важно знать."),
        Question(textOfQuestion: "28. Расскажите своему партнеру, что вам в нем нравится; на этот раз будьте очень честны, говоря вещи, которые вы, возможно, не скажете кому-то, кого только что встретили."),
        Question(textOfQuestion: "29. Поделитесь со своим партнером неловким моментом в вашей жизни."),
        Question(textOfQuestion: "30. Когда вы в последний раз плакали в присутствии другого человека? В одиночку?"),
        Question(textOfQuestion: "31. Скажите своему партнеру что-то, что вам уже нравится в нем."),
        Question(textOfQuestion: "32. Что слишком серьезно, о чем шутки неуместны?"),
        Question(textOfQuestion: "33. Если бы вы должны были умереть в этот вечер, не имея возможности общаться с кем-либо, о чем, не сказанном кому-то, вы больше всего жалели бы? Почему вы еще не сказали им этого?"),
        Question(textOfQuestion: "34. Ваш дом, содержащий все, что у вас есть, загорается. После спасения ваших близких и домашних животных у вас есть время, чтобы безопасно сделать последний рывок, чтобы сохранить какой-либо один предмет. Что бы это могло быть? Почему?"),
        Question(textOfQuestion: "35. Из всех людей в вашей семье, чья смерть показалась бы вам самой тревожной? Почему?"),
        Question(textOfQuestion: "36. Поделитесь личной проблемой и спросите совета у вашего партнера о том, как он или она может справиться с ней. Кроме того, попросите своего партнера подумать о том, как вы, по-видимому, относитесь к выбранной вами проблеме."),
        Question(textOfQuestion: "И в заключение, смотрите друг другу в глаза в течение 4 минут, не отводя взгляда."),
        Question(textOfQuestion: "И в заключение, смотрите друг другу в глаза в течение 4 минут, не отводя взгляда.")]
    //next question for odd numbers
    mutating func nextQuestionForBottomLabel() {
        if questionNumberForBottomLabel + 1 < questions.count - 1 {
            questionNumberForBottomLabel += 2
        }
        else {
            questionNumberForBottomLabel = 0
        }
    }
    //next question for even numbers
    mutating func nextQuestionForTopLabel() {
        if questionNumberForTopLabel + 1 < questions.count - 1 {             questionNumberForTopLabel += 2            
        }
        else {
            questionNumberForTopLabel = 1
        }
    }
    mutating func getQuestionTextForBottomLabel() -> String {
        return questions[questionNumberForBottomLabel].textOfQuestion
    }
    mutating func getQuestionTextForTopLabel() -> String {
        return questions[questionNumberForTopLabel].textOfQuestion        
    }
    func showButtonTimer() -> Bool{
        if questionNumberForBottomLabel == 10 ||  questionNumberForTopLabel == 37 || questionNumberForBottomLabel == 36 {
            return true
        } else {
            return false
        }
    }
}
