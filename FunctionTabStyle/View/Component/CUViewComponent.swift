//
//  CUViewComponent.swift
//  FunctionTabStyle
//
//  Created by User on 18/04/24.
//

import SwiftUI

struct CUViewComponent: View {
    var body: some View {
//        ContentUnavailableView("Connection Issue", systemImage: "wifi.slash", description: Text("Check your internet connection"))
        ContentUnavailableView{
            Label("No Mail", systemImage: "tray.fill")
        }description: {
            Text("Check your inbox")
        }actions: {
            Button{
                
            }label: {
                Text("Refresh")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    CUViewComponent()
}
