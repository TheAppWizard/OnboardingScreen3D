//
//  Card.swift
//  OnBoardingScreen3D
//
//  Created by Shreyas Vilaschandra Bhike on 20/02/22.
//

import SwiftUI
import Foundation


struct Card: Identifiable {
    var id  = UUID()
    var image : String
    var title : String
    var description : String
    
}

var testData:[Card] = [

     
 Card( image: "",title: "L I K E", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vehicula nulla."),

 Card(image: "", title: "C O M M E N T", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vehicula nulla."),
 
 Card( image: "",title: "S H A R E", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vehicula nulla."),
 
 Card( image: "",title: "F O L L O W", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vehicula nulla."),
 
 
]
