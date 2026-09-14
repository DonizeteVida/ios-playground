import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            #if os(macOS)
                Text("Hello World from macOS")
            #elseif os(iOS)
                Text("Hello World from iOS")
            #endif
        }.padding()
    }
}

#Preview {
    ContentView()
}
