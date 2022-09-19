//
//  ContentView.swift
//  CW6-1
//
//  Created by Deem on 19/09/2022.
//

import SwiftUI


struct Studentinfo: Identifiable {
    
    let id = UUID()
    var name: String
    var year: Int
    var age: Int
    
}


struct ContentView: View {
    
    @State var Students = [
        
        Studentinfo(name: "Sarah Fahad", year: 2, age: 20) ,
        Studentinfo(name: "Nourah Mohammed", year: 4, age: 22),
        Studentinfo(name: "Rashed Ali", year: 1, age: 18)
    
    ]
    
    
    var body: some View {
        
        
        VStack {
            
            Image("stud")
                .resizable()
                .frame(width: 150, height: 100, alignment: .top)
            
            
            
            Text("Students Records")
                .font(.largeTitle)
                .bold()
                .padding()
            
            
            List {
                ForEach(Students) {
                    student in

                    VStack {
                        
                        Text("Name:\(student.name)")
                            .font(.system(size: 20))
                            .padding()
                        
                        Text("Year: \(student.year)")
                            .font(.system(size: 20))
                        
                        
                        Text("Age: \(student.age)")
                            .font(.system(size: 20))
                            .padding()
                           
                        
                        
                        
                            
                        }
                    
                    
                    
                    
                        
                  
                    }
                    
                }
                
            HStack {
                
                Image(systemName: "info.circle")
                    .font(.largeTitle)
//                    .bold()
                
                Text("No. of Registered Students: 3")
                    .font(.system(size: 23))
                    .bold()
                
                
                
                
            }
            
            
            
            
            }
            
            
        }
    
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
