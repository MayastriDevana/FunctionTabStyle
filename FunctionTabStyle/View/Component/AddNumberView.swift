//
//  AddNumberView.swift
//  FunctionTabStyle
//
//  Created by User on 18/04/24.
//

import SwiftUI

struct AddNumberView: View {
    @State private var number1: String = ""
    @State private var number2: String = ""
    @State private var hasil: String = ""
    
    var body: some View {
        VStack{
            TextField("Insert first number", text:$number1)
                .keyboardType(.numberPad)
            TextField("Insert second number", text:$number2)
                .keyboardType(.numberPad)
            Text("Results = \(hasil)")
            
            Button {
                if let num1 = Double(number1), 
                    let num2 = Double(number2){
                   let results = add(from: num1, to: num2)
                    hasil = String(format: "%.0f", results)
        
                }
            }label: {
                Text("add")
            }
            .buttonStyle(BorderedButtonStyle())
            
        }
        .textFieldStyle(.roundedBorder)
        .padding()
    }
    private func add(from firstNumber: Double, to secondNumber: Double) -> Double{
        let results = firstNumber + secondNumber
        return results
    }
    
//    // MARK: - FUNCTION RESULT
//
//    private func resultsAddition(){
//    if let num1 = Double(number1), let num2 = Double(number2){
//        let results = add(from: num1, to: num2)
//        hasil = String()
//    }
//    
}

#Preview {
    AddNumberView()
}
