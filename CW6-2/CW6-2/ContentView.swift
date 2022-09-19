//
//  ContentView.swift
//  CW6-2
//
//  Created by Deem on 19/09/2022.
//

import SwiftUI


// struct DetailView: View { -> any name
// let iconName: String -> this is a variable used for updating
//    var body: some view {
//      Text("") -> here we can deal w the variable
//} then we call it in the destination

struct ContentView: View {
    
    let chooseColor = [Color.pink , Color.yellow, Color.green , Color.cyan , Color.indigo]
    @State var selectedColor = Color.white
    
    @State var yourtext = ""
    
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color.black
                    .ignoresSafeArea()
                    .opacity(0.2)
                
            VStack(spacing: 0) {

                    
                HStack {
                    
                    Text("Your Diary")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.top, 55.0)
                    
                    
                    Image(systemName: "heart.fill")
                    
                }
                
                
                    
                    
                    HStack {
                        
                        ForEach(chooseColor, id: \.self) { color in
                            Circle()
                                .foregroundColor(color)
                                .onTapGesture {
                                    selectedColor = color
                                }
                        }
                    } .padding()
                    
                    Text("Pick the color of the page")
                        .font(.system(size: 20))
                        .padding(.bottom)
                    
                    
                    TextField("Type here...", text:  $yourtext)
                        .frame(width: 300, height: 60, alignment: .center)
                        .background()
                        .cornerRadius(50)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    
                    Spacer()
                    
                    NavigationLink(destination:
                                    
                                    ZStack {
                        
                        Rectangle()
                            .fill(selectedColor)
                            .ignoresSafeArea(edges: .all)
                            

                        Text(yourtext)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        
                  
                    }
                                   
                    ) {
                        
                        Text("Save")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                            .bold()
                            .frame(width: 100, height: 60, alignment: .center)
                            .background()
                            .cornerRadius(50)
                            .shadow(radius: 30)
                            .padding(.bottom, 200.5)

                        
                        
                        
                    }
                    
                    Spacer()
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Navigation View
// in the body
// HStack {

//Navigation link (destination: ) {
// Image ()
//}
//} Navigation title

