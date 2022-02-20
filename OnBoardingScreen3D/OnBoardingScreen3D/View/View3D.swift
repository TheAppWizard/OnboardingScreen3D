//
//  View3D.swift
//  OnBoardingScreen3D
//
//  Created by Shreyas Vilaschandra Bhike on 20/02/22.
//

import SwiftUI

struct View3D: View {
    var body: some View {
        Shadow3D(imgName: "heart.fill", shadowanim: false, rotateanim: false, shadowscale: false)
    }
}

struct View3D_Previews: PreviewProvider {
    static var previews: some View {
        View3D()
    }
}















struct Shadow3D: View {
    
    
    @State var imgName = ""
    @State var shadowanim  = false
    @State var rotateanim  = false
    @State var shadowscale = false
    
    var body: some View {
        
        
        ZStack{
            ZStack{
                
                Image("shadow")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: .center)
                    .offset(x: shadowanim ? 10 : -10, y: shadowanim ? -10 : 10)
            
                        .onAppear() {
                            withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                                                {
                                                    shadowanim.toggle()
                                                }
                    }

                Image("colorback")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: .center)
                
                
                
                ZStack{
                    
                    HStack{
                    Image(systemName: imgName)
                        .font(.system(size: 110))
                        .foregroundColor(.white)
//                        .shadow(color: .black, radius: 1, x: 0.0, y: 0.0)
                        
                        Spacer().frame(width: 25, height: 10, alignment: .center)
                        
                    Text("1").font(.system(size: 100, weight: .regular, design: .default))
                        .foregroundColor(.white)
//                        .shadow(color: .black, radius: 1, x: 0.0, y: 0.0)
                       
                    }.offset(x: 0, y: -15)
                }
            }.rotationEffect(.degrees(rotateanim ? -30 : 35))
                    .onAppear() {
                        withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                                            {
                                                rotateanim.toggle()
                                            }
                    }
            
            
            Ellipse()
                .opacity(0.06)
                .frame(width:  300, height: 65, alignment: .center)
                .offset(x: shadowscale ? 20 : -20, y: 200)
                    .onAppear() {
                        withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                                            {
                                                shadowscale.toggle()
                                            }
                    }
             }
        
    }
}
