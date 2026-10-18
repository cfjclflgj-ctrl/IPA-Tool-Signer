import SwiftUI
@main struct DPIDIEVApp: App { var body: some Scene { WindowGroup { MenuView().preferredColorScheme(.dark) } } }

struct MenuView: View {
  let features = ["𝙎𝙚𝙣𝙨𝙞𝙩𝙞𝙫𝙮乂𝙈𝙤𝙙𝙚 🩸","𝑹𝒆𝒈乂𝑻𝒐𝒖𝒄𝒉 ⚙️","𝙎𝙢𝙤𝙤𝙩𝙝乂𝙈𝙤𝙪𝙨𝙚 💦","𝘿𝙚𝙡𝙖𝙮𝙁𝙡𝙤𝙬乂𝙈𝙪̛𝙤̛̣𝙩 🌊","𝘼𝙞𝙢乂𝙏𝙧𝙖𝙘𝙠 🎯"]
  @State var on = Array(repeating: false, count: 5)
  @State var spin = 0.0
  @State var twinkle = false
  let neon = AngularGradient(colors: [.pink, .cyan, .yellow, .pink], center: .center)
  var body: some View {
    ZStack {
      Color(red: 0.07, green: 0.05, blue: 0.14).ignoresSafeArea()
      ForEach(0..<30, id: \.self) { i in
        Circle().fill(Color.yellow).frame(width: 4, height: 4).shadow(color: .yellow, radius: 4)
          .position(x: CGFloat((i*37)%100)/100*UIScreen.main.bounds.width, y: CGFloat((i*53)%100)/100*UIScreen.main.bounds.height)
          .opacity(twinkle == (i%2==0) ? 1 : 0.1)
          .animation(.easeInOut(duration: 1).repeatForever().delay(Double(i%10)*0.1), value: twinkle)
      }
      ScrollView {
        VStack(spacing: 10) {
          Text("𝘿𝙋𝙄𝘿𝙄𝙀𝙑 🎶").font(.largeTitle.bold()).foregroundStyle(LinearGradient(colors: [.pink,.yellow,.cyan], startPoint: .leading, endPoint: .trailing))
          Group {
            Text("💬: Zalo: 0867632725")
            Text("👑: 𝙏𝙖̣𝙤 𝘽𝙤̛̉𝙞: 𝘾𝙞𝙥𝙝𝙚𝙧𝙇𝙚𝙜𝙚𝙣𝙙 🧩")
            Text("👑: 𝙈𝙖𝙠𝙚: 𝘾𝙞𝙥𝙝𝙚𝙧𝙇𝙚𝙜𝙚𝙣𝙙 🧩")
            Text("🌐: 𝙏𝙞𝙠𝙩𝙤𝙠: 𝘾𝙞𝙥𝙝𝙚𝙧𝙇𝙚𝙜𝙚𝙣𝙙 🧩")
          }.font(.footnote).foregroundColor(.gray)
          Text("🔥Hỗ trợ cải thiện trong quá trình kéo tâm, xây dựng tạo ra cho các bạn trải nghiệm. Cải thiện kéo tâm đây không phải hack, phần mềm hack. Xin vui lòng cảm ơn🔥")
            .font(.caption).foregroundColor(.orange).multilineTextAlignment(.center).padding(8)
          ForEach(0..<5, id: \.self) { i in
            Toggle(isOn: $on[i]) {
              VStack(alignment: .leading) {
                Text(features[i]).bold().foregroundColor(.white)
                Text("𝙑𝙄𝙋乂𝘿𝙋𝙄𝘿𝙄𝙀𝙑 ✨").font(.caption).foregroundColor(.cyan)
              }
            }.tint(.pink).padding(12)
             .background(RoundedRectangle(cornerRadius: 14).fill(Color.white.opacity(0.06)))
             .overlay(RoundedRectangle(cornerRadius: 14).stroke(on[i] ? Color.cyan : .clear, lineWidth: 1.5).shadow(color: .cyan, radius: 6))
          }
        }.padding(20)
        .background(RoundedRectangle(cornerRadius: 24).fill(Color(red: 0.11, green: 0.08, blue: 0.2)))
        .overlay(RoundedRectangle(cornerRadius: 24).stroke(neon, lineWidth: 3).hueRotation(.degrees(spin)).shadow(color: .pink, radius: 12))
        .padding()
      }
    }
    .onAppear {
      twinkle = true
      withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)) { spin = 360 }
    }
  }
}
