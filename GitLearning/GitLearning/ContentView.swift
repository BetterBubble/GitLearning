//
//  ContentView.swift
//  GitLearning
//
//  Created by Alex on 19.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State var effectMain: Double = 0
    @State var effectB: CGFloat = 0
    @State var effectG: CGFloat = 0
    @State var effectY: CGFloat = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.orange, .yellow, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                RoundedRectangle(cornerRadius: 25, style: .circular)
                    .frame(width: 140, height: 140)
                    .foregroundColor(.purple)
                    .padding(.bottom, 100)
                    .hoverEffect(.automatic)
                    .rotation3DEffect(Angle(degrees: effectMain), axis: (x: effectB, y: effectG, z: effectY))
                VStack {
                    Button(action: {
                        effectMain = 0
                        effectB = 0
                        effectG = 0
                        effectY = 0
                    }, label: {
                        ZStack {
                            Capsule()
                                .frame(width: 140, height: 30)
                                .foregroundColor(.purple)
                            Text("Staic Defolt")
                                .foregroundColor(.black)
                        }

                    })
                    HStack {
                        Button(action: {
                            effectMain = effectMain + 10
                        }, label: {
                            ZStack {
                                Capsule()
                                    .frame(width: 65, height: 30)
                                    .foregroundColor(.red)
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.black)
                            }
                        })
                        .padding(.bottom, 10)
                        Button(action: {
                            effectMain = effectMain - 10
                        }, label: {
                            ZStack {
                                Capsule()
                                    .frame(width: 65, height: 30)
                                    .foregroundColor(.red)
                                Image(systemName: "minus.circle")
                                    .foregroundColor(.black)
                            }
                        })
                        .padding(.bottom, 10)
                    }
                }
                HStack {
                    VStack {
                        Button(action: {
                            effectB = effectB + 10
                        }, label: {
                            ZStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(Color.blue)
                                    Image(systemName: "plus.circle")
                                        .foregroundColor(.black)
                                }
                            }
                        })
                        Button(action: {
                            effectB = effectB - 10
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color.blue)
                                Image(systemName: "minus.circle")
                                    .foregroundColor(.black)
                            }
                        })
                    }
                    VStack {
                        Button(action: {
                            effectG = effectG + 10
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color.green)
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.black)
                            }
                        })
                        Button(action: {
                            effectG = effectG - 10
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color.green)
                                Image(systemName: "minus.circle")
                                    .foregroundColor(.black)
                            }
                        })
                    }
                    VStack {
                        Button(action: {
                            effectY = effectY + 10
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color.yellow)
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.black)
                            }
                        })
                        Button(action: {
                            effectY = effectY - 10
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color.yellow)
                                Image(systemName: "minus.circle")
                                    .foregroundColor(.black)
                            }
                        })
                    }
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
