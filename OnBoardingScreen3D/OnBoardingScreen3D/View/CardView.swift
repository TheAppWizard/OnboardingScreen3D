//
//  CardView.swift
//  OnBoardingScreen3D
//
//  Created by Shreyas Vilaschandra Bhike on 20/02/22.
//

import SwiftUI

struct CardView: View {
    
    var card : Card
    var body: some View {
        VStack{
            

            Image(card.image)
                .resizable()
                .frame(width: 400, height: 400)
            
            Text(card.title)
                .font(.system(size: 50))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .shadow(color: .pink, radius: 1, x: 1, y: 1)
               
            
            Text(card.description)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .font(.system(size: 25))
                .foregroundColor(.white)
                .shadow(color: .pink, radius: 1, x: 1, y: 1)
                .frame(width: 335, height: 100)
                .padding(5)
        
        }.padding()
            .offset(x: 0, y: 0)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: testData[1])
    }
}
