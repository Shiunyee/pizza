//
//  ContentView.swift
//  pizza
//
//  Created by Wong Shiun Yee on 13/2/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tomato = true
    @State private var mozarella = false
    @State private var pineapple = false
    @State private var age = 0
    var body: some View {
        VStack {
            VStack {
                VStack {
                    VStack {
                        VStack {
                        
                                Text("Pizza 🍕")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                        
                            .padding()
                            Toggle(isOn: $tomato) {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Include Tomato")
                                    .padding(.leading, 33.0)/*@END_MENU_TOKEN@*/
                                
                            }
                            .padding(.trailing, 33.0)
                        }
                        Toggle(isOn: $mozarella) {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Include Mozarella")
                                .padding(.leading, 33.0)/*@END_MENU_TOKEN@*/
                        }
                        .padding(/*@START_MENU_TOKEN@*/.trailing, 33.0/*@END_MENU_TOKEN@*/)
                    }
                    Toggle(isOn: $pineapple) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Include Pineapple")
                            .padding(.leading, 33.0)/*@END_MENU_TOKEN@*/
                    }
                    .padding(.trailing, 33.0)
                }
                Stepper(value: $age, in: 0...130) {
                    Text("Quantity : \(age)")
                        .padding(.leading, 33.0)
                }
                .padding(.trailing, 33.0)
            }
            Button("Order") {
                print("Order taken!")
            }
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
