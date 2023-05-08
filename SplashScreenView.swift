import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            MainView()
        }
        else {
            VStack {
                VStack{
                    Image("cisonaricon")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(25)
                        .foregroundColor(.gray)
                    Text("Welcome to CI Sonar")
                        .padding()
                        .bold()
                        .padding()
                        .scaleEffect(2)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.2)) {
                                self.size = 0.9
                                self.opacity = 1.0
                                }
                        }
                    }
                }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.isActive = true
            }
        }
    }
}
struct SplashScreenView_Previews: PreviewProvider {
        static var previews: some View {
            SplashScreenView()
        }
    }
}
