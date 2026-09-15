import SwiftUI
import UniformTypeIdentifiers

private struct UIKitDocumentPickerRepresentable: UIViewControllerRepresentable {
    let forType: UTType

    func makeUIViewController(context: Context)
        -> UIDocumentPickerViewController
    {
        let controller = UIDocumentPickerViewController(
            forOpeningContentTypes: [forType],
            asCopy: false
        )
        return controller
    }

    func updateUIViewController(
        _ uiViewController: UIDocumentPickerViewController,
        context: Context
    ) {

    }
}

struct UIKitDocumentPicker: View {
    var body: some View {
        UIKitDocumentPickerRepresentable(
            forType: .folder
        )
    }
}
