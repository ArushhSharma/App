//
//  ContentView.swift
//  ArushApplication
//
//  Created by Arush Sharma on 07/05/23.
//

import SwiftUI

struct ContentView: View {
    @State private var ShowSecondPage = false
    var body: some View {
       
        
        ZStack {Color(.white)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                
                Image("Course")
                    .resizable()
                    .cornerRadius(10.0)
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                HStack{
                    Spacer()
                    Text("Enroll Now")
                        .font(.title)
                    //                    .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.fill")
                            
                        }
                        
                        Text("241 reviews")
                        
                    }
                    Spacer()
                }
                
                
                .shadow(radius: 25)
                HStack{
                    Spacer()
                    ZStack{
                        Rectangle().frame(width: 150)
                            .foregroundColor(.black)
                            .frame(height: 60)
                            .cornerRadius(30)
                        Text("Register").foregroundColor(.white).onTapGesture {
                            ShowSecondPage.toggle()
                        }
                        
                    }
                    
                    Spacer()
                }
                .sheet(isPresented:$ShowSecondPage){
                    SecondPage()
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
