//
//  ContentView.swift
//  guess_flag
//
//  Created by iOS UNAM 18 on 13/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    
    var body: some View {
        ZStack{
            /*VStack(spacing: 0){
                Color.red
                Color.blue
            }
            Text("Hola a todos")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            LinearGradient(gradient: Gradient(stops: [
                Gradient.Stop(color: .white, location: 0.45),
                Gradient.Stop(color: .black, location: 0.95)]), startPoint: .top, endPoint: .bottom)*/
            
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
            VStack{
                Button{
                    print("Trabajando")
                } label: {
                    Label("Edit", systemImage: "pencil")
                }
                Button("Show Alert"){
                    showAlert = true
                }
                .alert("Important Message", isPresented: $showAlert){
                    Button("Delete", role: .destructive) { }
                    Button("Cancel", role: .cancel) { }
                } message: {
                    Text("Read this message")
                }
            }
            
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
