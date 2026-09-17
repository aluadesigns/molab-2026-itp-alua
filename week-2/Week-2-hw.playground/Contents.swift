import UIKit


let sz = CGSize(width: 500, height: 500)
let renderer = UIGraphicsImageRenderer(size: sz)

@MainActor //don't know what this is!
func yourImage(amount: Int) -> UIImage {
    
    let image = renderer.image { context in
        
    var ypos: Int = 0
    for _ in 0..<amount {
        ypos += 10
        var colors: [UIColor] = [ .green, .blue, .yellow, .purple, .white, .cyan]
        var color = colors.randomElement()!
        color.setFill()
        context.fill(CGRect(x: 0, y: ypos, width: 700, height: 10))
            
        }
       
    }
//    print("\(amount) boxes")
    return image
}

yourImage(amount: 50)

