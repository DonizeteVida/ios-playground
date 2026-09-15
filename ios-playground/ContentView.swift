import SwiftUI
import UniformTypeIdentifiers
import UIKit

struct FolderPicker: View {
    @State var isPresented = false

    var body: some View {
        Button("Select a folder") {
            isPresented.toggle()
        }
        .fileDialogMessage("Select a folder")
        .fileDialogDefaultDirectory(.downloadsDirectory)
        .fileImporter(
            isPresented: $isPresented,
            allowedContentTypes: [.folder],
        ) { result in
            if case .success(let success) = result {
                print("\(success)")
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            #if os(macOS)
                Text("Hello World from macOS")
            #elseif os(iOS)
                Text("Hello World from iOS")
            #endif

            FolderPicker()
        }.padding()
    }
}

#Preview {
    ContentView()
}
