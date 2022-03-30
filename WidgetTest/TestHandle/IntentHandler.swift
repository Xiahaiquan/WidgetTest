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
    
}


extension IntentHandler: SelectEmojiIntentHandling {
    func provideEmojiOptionsCollection(
        for intent: SelectEmojiIntent,
        with completion: @escaping (INObjectCollection<EmojiINO>?, Error?) -> Void
    ) {
        var emojiItems = [EmojiINO]()
        DeviceModel.availableCharacters.forEach { emojiDetails in
            
            let emojiIntentObject = EmojiINO.init(identifier: emojiDetails.id, display: emojiDetails.name)
            
            emojiItems.append(emojiIntentObject)
        }
        completion(INObjectCollection(items: emojiItems), nil)
    }
}
