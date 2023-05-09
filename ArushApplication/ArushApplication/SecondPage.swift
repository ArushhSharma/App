//
//  SecondPage.swift
//  ArushApplication
//
//  Created by Arush Sharma on 08/05/23.
//

import SwiftUI

struct SecondPage: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Button{
               dismiss()
            }label: {
                Text("Go Back")
                    .foregroundColor(.black)
                    .padding()
                    .padding(.horizontal)
                    .background(.gray)
                    .cornerRadius(30)
            }
        }
            
    }
    
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
