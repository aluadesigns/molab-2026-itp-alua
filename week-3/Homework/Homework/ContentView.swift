import SwiftUI
import Playgrounds

struct ContentView: View {
    @State private var numStart: Int?
    @State private var numEnd: Int?
    let columns = Array(repeating: GridItem(.flexible()), count: 10)

    
    var body: some View {
        Form {
            TextField("Enter starting number", value: $numStart, format: .number)
                .keyboardType(.decimalPad)
            TextField("Enter end point number", value: $numEnd, format: .number)
                .keyboardType(.decimalPad)
            
        }
        
        .formStyle(.columns)
        .padding(20)
        .background(Color.cyan.opacity(0.3))
        .frame(width: 100, height: 10)

        
        if let start = numStart, let end = numEnd, start <= end {
                       ScrollView {
                           LazyVGrid(columns: columns, spacing: 8) {
                               ForEach(start...end, id: \.self) { number in
                                   if isPrime(num: number) {
                                       Circle()
                                           .frame(width: 5, height: 5)
                                   } else {
                                       Color.clear
                                           .frame(width: 5, height: 5)
                                   }
                               }
                           }
                       }
                   }
               }
           }

       func isPrime(num: Int) -> Bool {
           if num < 2 {
               return false
           }
           for i in 2..<num/2+1 {
               if num % i == 0 {
                   return false
               }
           }
           return true
       }
    
    
#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
