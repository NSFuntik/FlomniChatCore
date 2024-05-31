//
//  ContentView.swift
//  dev
//
//  Created by Dmitry Mikhaylov on 24.05.2024.
//

import FlomniChatCore
import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                flomni
            } label: {
                VStack {
                    Image(systemName: "swift")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .padding(4)
                    Text("Hello, Flomni!").font(.headline)
                }
                .padding()
                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 16))
            }
            .nbUseNavigationStack(.whenAvailable)
        }
    }

    var flomni: some View {
        FlomniChatProvider.defaultValue = Container.shared.flomniChat.register(factory: {
            FlomniChat(
                apiKey: "5d0cd1707741de0009e061cb",
                appGroup: "group.com.flomni.chat",
                userId: UIDevice.deviceId
            )
        }).resolve()
        return CommonContentView()
//        return FlomniChatList(theme: .default, route: [], placement: .navigation) {
//            Image("DialogsLogo").resizable().renderingMode(.template).scaledToFit().frame(height: 40).padding(3, 6)
//        }.emptySessions
    }
}

#Preview {
    ContentView()
}

struct TrialButton: View {
    @State var popover: Bool = false
    var body: some View {
        Button(action: {
            popover.toggle()
        }, label: {
            Label("Записаться", systemImage: "pencil.and.outline")
                .symbolRenderingMode(.hierarchical)
                .vibrantForeground(thick: true).labelStyle(.titleAndIcon)
                .font(.title2.weight(.semibold).monospaced())
                .padding(8, 24)
                .materialBackground(with: .systemUltraThinMaterial, blur: 1, clipped: Capsule(), filled: .accentColor.opacity(0.44), bordered: .accent, width: 0.5)

        }).frame(width: .screenWidth, alignment: .center)
            .padding(12)
    }
}
