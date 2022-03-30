//
//  Test.swift
//  Test
//
//  Created by harman on 2022/3/25.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    typealias Entry = SimpleEntry
    
    typealias Intent = SelectEmojiIntent
    
    
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: SelectEmojiIntent(), smallViewData: .live0,mediumViewData: .live, largeViewData: .partyBox)
    }
    
    func getSnapshot(for configuration: SelectEmojiIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        
        let devieModel = lookupDataDetails(for: configuration)
        
        let entry = SimpleEntry(date: Date(), configuration: configuration, smallViewData: devieModel, mediumViewData: .live, largeViewData: .partyBox)
        completion(entry)
    }
    
    
    func getTimeline(for configuration: SelectEmojiIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []
        
        let devieModel =  lookupDataDetails(for: configuration)
        
        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        //        for hourOffset in 0 ..< 5 {
        //            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
        let entry = SimpleEntry(date: Date(), configuration: configuration, smallViewData: devieModel, mediumViewData: .live, largeViewData: .partyBox)
        entries.append(entry)
        //        }
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
    
    
    private func lookupDataDetails(for configuration: SelectEmojiIntent) -> DeviceModel {
        guard let emojiId = configuration.emoji?.identifier,
              let emojiForConfig = DeviceModel.availableCharacters.first(where: { emoji in
                  emoji.id == emojiId
              })
        else {
            return DeviceModel.live0
        }
        return emojiForConfig
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: SelectEmojiIntent
    
    let smallViewData: DeviceModel?
    let mediumViewData: DeviceInfoModel?
    let largeViewData: DeviceLargeModel?
}

struct TestEntryView : View {
    
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    var entry: Provider.Entry
    
    @ViewBuilder
    var body: some View {
        switch family {
        case .systemSmall:
            SmallView(model: entry.smallViewData ?? .live0)
            
        case .systemMedium:
            MediumView(model: entry.mediumViewData ?? .live)
        case .systemLarge:
            LargeView(model: entry.largeViewData ?? .partyBox)
        default: Text("No more to show")
        }
    }
}

@main
struct Test: Widget {
    let kind: String = "Test"
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: SelectEmojiIntent.self, provider: Provider()) { entry in
            TestEntryView(entry: entry)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
            
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        TestEntryView(entry: SimpleEntry(date: Date(), configuration: SelectEmojiIntent(), smallViewData: .live0, mediumViewData: .live, largeViewData: .partyBox))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
