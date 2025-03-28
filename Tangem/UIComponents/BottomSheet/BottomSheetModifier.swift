//
//  BottomSheetModifier.swift
//  Tangem
//
//

import SwiftUI

/// How it works?
/// - When we get `item` we following next steps:
/// 1. Create `BottomSheetContainer` with external `content`
/// 2. Create `UIHostingController` with `rootView` as `sheetContainer`
/// 3. Show `UIController` without animation
/// 4. Show `sheetContainer` with animation
/// - When we should dismiss `bottomSheet` this steps:
/// 1. Hide `sheetContainer` with animation
/// 2. After completion we close `UIController`
struct BottomSheetModifier<Item: Identifiable, ContentView: View>: ViewModifier {
    typealias Sheet = BottomSheetContainer<ContentView>

    @Binding private var item: Item?

    private let stateObject: Sheet.StateObject
    private let settings: Sheet.Settings
    private var sheetContent: (Item) -> ContentView

    @State private var controller: UIHostingController<Sheet>?
    private var sheet: Sheet? { controller?.rootView }

    init(
        item: Binding<Item?>,
        stateObject: Sheet.StateObject,
        settings: Sheet.Settings,
        sheetContent: @escaping (Item) -> ContentView
    ) {
        _item = item
        self.stateObject = stateObject
        self.settings = settings
        self.sheetContent = sheetContent
    }

    func body(content: Content) -> some View {
        content
            .onChange(of: item?.id) { _ in update(item: item) }
    }

    func update(item: Item?) {
        if let item = item {
            let controller = updateUIController(item: item)
            showController(controller)
        } else {
            sheet?.hideView {
                hideController()
            }
        }
    }

    func updateUIController(item: Item) -> UIHostingController<Sheet> {
        let sheet = BottomSheetContainer(stateObject: stateObject, settings: settings) {
            sheetContent(item)
        }

        let controller = UIHostingController<Sheet>(rootView: sheet)
        controller.modalPresentationStyle = .overFullScreen
        controller.overrideUserInterfaceStyle = UIApplication.topViewController?.overrideUserInterfaceStyle ?? .unspecified
        controller.view.backgroundColor = .clear

        stateObject.viewDidHidden = {
            hideController()
        }

        // Save the controller for dismiss it when it will be needed
        self.controller = controller

        return controller
    }

    func showController(_ controller: UIViewController) {
        UIApplication.modalFromTop(controller, animated: false) {
            sheet?.showView()
        }
    }

    func hideController() {
        // If we have a first responder
        // Will be better to dismiss the UIViewController with animation
        // Because it provides a good animation for opening the keyboard
        // If we don't have a responder we have to dismiss the UIViewController without animation
        // Because it provide a freeze screen in 0.2 seconds

        let hasFirstResponder = UIResponder.current != nil

        controller?.dismiss(animated: hasFirstResponder) {
            // We should deinit controller to avoid unnecessary call update(item:) method
            controller = nil
            item = nil
            stateObject.viewDidHidden = {}
        }
    }
}
