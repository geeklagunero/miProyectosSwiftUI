//
//  NuevoCombineApp.swift
//  NuevoCombine
//
//  Created by Ricardo Roman Landeros on 15/01/25.
//

import SwiftUI

@main
struct NuevoCombineApp: App {
    
    var modelo = Modelo()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelo)
        }
    }
}
