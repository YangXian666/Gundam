import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // 背景（全螢幕）
            Color.pink
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    
                    // 頭盔主體
                    RoundedRectangle(cornerRadius: 60)
                        .fill(Color.white)
                        .frame(width: 220, height: 230)
                        .shadow(color: .blue, radius: 100)
                    
                    // 側邊裝甲
                    HStack {
                        Capsule()
                            .fill(Color.gray)
                            .frame(width: 40, height: 120)
                        
                        Spacer()
                        
                        Capsule()
                            .fill(Color.gray)
                            .frame(width: 40, height: 120)
                    }
                    .frame(width: 260)
                    
                    // 眼睛（綠色）
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 70, height: 20)
                        .rotationEffect(.degrees(-10))
                        .offset(x:42, y: -50)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 70, height: 20)
                        .rotationEffect(.degrees(10))
                        .offset(x:-42, y: -50)
                    
                    // 頭頂紅色區塊
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 60, height: 40)
                        .offset(y: -110)
                    
                    // 天線（左）
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 10, height: 150)
                        .rotationEffect(.degrees(-15))
                        .offset(x: -50, y: -155)
                    
                    // 天線（右）
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 10, height: 150)
                        .rotationEffect(.degrees(15))
                        .offset(x: 50, y: -155)
                    
                    // 眉毛（左）
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 20, height: 150)
                        .rotationEffect(.degrees(-65))
                        .offset(x: -66, y: -70)
                    
                    // 眉毛（左）
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 20, height: 150)
                        .rotationEffect(.degrees(65))
                        .offset(x: 66, y: -70)
                    
                    // 嘴巴（通氣孔）
                    VStack(spacing: 6) {
                        ForEach(0..<3) { _ in
                            Capsule()
                                .fill(Color.gray)
                                .frame(width: 40, height: 8)
                                .rotationEffect(.degrees(25))
                        }
                    }
                    .offset(x:17, y: 20)
                    
                    VStack(spacing: 6) {
                        ForEach(0..<3) { _ in
                            Capsule()
                                .fill(Color.gray)
                                .frame(width: 40, height: 8)
                                .rotationEffect(.degrees(-25))
                        }
                    }
                    .offset(x:-17, y: 20)
                    
                    // 下巴（紅色）
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 40, height: 70)
                        .offset(y: 90)
                }
                
                // 文字
                Text("FREEDOM GUNDAM")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding(.top, 20)
            }
        }
    }
}

#Preview {
    ContentView()
}
