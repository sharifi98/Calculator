//
//  ContentView.swift
//  Calculator
//
//  Created by Hossein Sharifi on 24/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [
        ["7", "8", "9", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="]
    ]
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 12) {
                
                HStack{
                    Spacer()
                    Text("42").foregroundColor(.white)
                        .font(.system(size: 64))
                }.padding()
                
                ForEach(buttons, id: \.self) { row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { button in
                            Text(button)
                                .font(.system(size: 32))
                                    .frame(width: buttonWidth(), height: self.buttonWidth())
                                    .foregroundColor(.white)
                                    .background(Color.yellow)
                                    .cornerRadius(self.buttonWidth())
                        }
                        
                        
                    }
                }
                
            }.padding()
        }
        
    }
    
    //  The function calculates the width of each button in the calculator grid based on the device's screen width and the spacing between buttons. Specifically, it takes the total width of the screen and subtracts four times the spacing (which is set to 12 points in this case) to account for the four spaces between the buttons in each row. The result is then divided by four to get the width of each button, which is returned by the function. This ensures that each button has equal width and fills the available space in the row.

    func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
