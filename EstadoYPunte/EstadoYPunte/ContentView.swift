//
//  ContentView.swift
//  EstadoYPunte
//
//  Created by Ricardo Roman Landeros on 14/01/25.
//

import SwiftUI

struct ContentView: View {
    
    // Binding: es la conexion entre propiedades que almacena datos
    @State private var x = "Titulo"
    
    @State private var show = true
    @State private var numero = 0
    
    @State private var numeroMoneda = 123
    @State private var numeroMOneda2 = "0"
    
    var body: some View {
        VStack {
            Text(x)
                .font(.largeTitle)
            HStack {
                Button {
                    show.toggle()
                    if show {
                        numero -= 1
                    } else {
                        numero += 1
                    }
                } label: {
                    if show {
                        Image(systemName: "heart")
                            .foregroundStyle(.red)
                            .font(.largeTitle)
                    } else {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.red)
                            .font(.largeTitle)
                    }
                }
                Text("\(numero)")
                    .bold()
                
                Button {
                    numeroMoneda = numeroMoneda + (Int(numeroMOneda2) ?? 0)
                } label: {
                   
                        Image(systemName: "dollarsign.circle.fill")
                            .foregroundStyle(.yellow)
                            .font(.largeTitle)
                }
                
                Text("\(numeroMoneda)")
                    .bold()

            }
            TextField("Donacion", text: $numeroMOneda2)
                .padding(.all)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Titulo", text: $x)
                .padding(.all)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Vista2(x: $x)
            Vista3(x: $x)
        }
    }
}

struct Vista2: View {
    @Binding var x: String
    
    var body: some View {
        Text(x)
            .font(.largeTitle)
            .foregroundStyle(.red)
    }
}

struct Vista3: View {
    @Binding var x: String
    
    var body: some View {
        Button {
            x = "Cambiar el titulo de la vista 3"
        } label: {
            Text("Cambiar titulo")
        }
    }
}



#Preview {
    ContentView()
}
