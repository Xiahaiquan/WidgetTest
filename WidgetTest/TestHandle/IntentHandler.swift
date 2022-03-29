//
//  IntentHandler.swift
//  TestHandle
//
//  Created by harman on 2022/3/29.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        return self
    }
    
//    func provideCharacterOptionsCollection(for intent: SelectCharacterIntent, with completion: @escaping (INObjectCollection<GameCharacter>?, Error?) -> Void) {
//
//            // Iterate the available characters, creating
//            // a GameCharacter for each one.
//            let characters: [GameCharacter] = CharacterDetail.availableCharacters.map { character in
//                let gameCharacter = GameCharacter(
//                    identifier: character.name,
//                    display: character.name
//                )
//                gameCharacter.name = character.name
//                return gameCharacter
//            }
//
//            // Create a collection with the array of characters.
//            let collection = INObjectCollection(items: characters)
//
//            // Call the completion handler, passing the collection.
//            completion(collection, nil)
//        }
    
    
    
}

//extension IntentHandler: GameCharacter {
//    func provideGameCharacterOptionsCollection(
//        for intent: SelectEmojiIntent,
//        with completion: @escaping (INObjectCollection<GameCharacter>?, Error?) -> Void
//    ) {
//        var emojiItems = [DeviceModel]()
//        DeviceModel.availableCharacters.forEach { emojiDetails in
//            let emojiIntentObject =
////            EmojiINO(identifier: emojiDetails.id, display: "\(emojiDetails.emoji) \(emojiDetails.name)")
//            DeviceModel.init(icons: ["1"], name: "testName", powers: [.left, .right, .chargeBox])
//            emojiItems.append(emojiIntentObject)
//        }
//        completion(INObjectCollection(items: emojiItems), nil)
//    }
//}


extension IntentHandler: SelectEmojiIntentHandling {
  func provideEmojiOptionsCollection(
    for intent: SelectEmojiIntent,
    with completion: @escaping (INObjectCollection<EmojiINO>?, Error?) -> Void
  ) {
    var emojiItems = [EmojiINO]()
      DeviceModel.availableCharacters.forEach { emojiDetails in
      
          let emojiIntentObject = EmojiINO.init(identifier: emojiDetails.name, display: emojiDetails.name)
          
//        EmojiINO(identifier: emojiDetails.id, display: "\(emojiDetails.emoji) \(emojiDetails.name)")
      emojiItems.append(emojiIntentObject)
    }
    completion(INObjectCollection(items: emojiItems), nil)
  }
}
