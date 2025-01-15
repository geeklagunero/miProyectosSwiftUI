//
//  ContentView.swift
//  NuevoCombine
//
//  Created by Ricardo Roman Landeros on 15/01/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var modelo = Modelo()
    
    var body: some View {
        VStack {
            Text("Contador = \(modelo.contador)")
            Button("Sumar Contador"){
                modelo.contador += 1
            }
            //Vista2()
            //Vista3()
            Vista4()
            Vista5()
        }
        .padding()
    }
}

struct Vista2: View {
    
    @ObservedObject var modelo = Modelo()
    
    var body: some View {
        VStack {
            Text("Contador Vista 2(ObserverObject) = \(modelo.contador)")
            Button("Sumar Contador"){
                modelo.contador += 1
            }
        }
        .padding()
    }
}

struct Vista3: View {
    
    @StateObject var modelo = Modelo()
    
    var body: some View {
        VStack {
            Text("Contador Vista 3(Statebject) = \(modelo.contador)")
            Button("Sumar Contador"){
                modelo.contador += 1
            }
        }
        .padding()
    }
}

struct Vista4: View {
    
    //@StateObject var modelo = Modelo()
    @EnvironmentObject var modelo: Modelo
    
    var body: some View {
        VStack {
            Text("Contador Vista 4(Enviromentbject) = \(modelo.contador)")
            Button("Sumar Contador"){
                modelo.contador += 1
            }
        }
        .padding()
    }
}

struct Vista5: View {
    
    //@StateObject var modelo = Modelo()
    @EnvironmentObject var modelo: Modelo
    
    var body: some View {
        VStack {
            Text("Contador Vista 5(Enviromentbject) = \(modelo.contador)")
            Button("Sumar Contador"){
                modelo.contador += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView().environmentObject(Modelo())
}
