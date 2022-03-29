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
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent(), mediumViewData: .live, largeViewData: .partyBox)
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration, mediumViewData: .live, largeViewData: .partyBox)
        completion(entry)
    }
    //TimelineProviderContext.displaySize

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration, mediumViewData: .live, largeViewData: .partyBox)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    
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
            SmallView(model: .live)
                
        case .systemMedium:
            MediumView(model: .live)
        case .systemLarge:
            LargeView(model: .partyBox)
        default: Text("No more to show")
        }
    }
}

@main
struct Test: Widget {
    let kind: String = "Test"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
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
        TestEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent(), mediumViewData: .live, largeViewData: .partyBox))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
