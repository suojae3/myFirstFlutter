
import SwiftUI

struct ContentView: View {
    @State var show = false
    @State var viewState = CGSize.zero
    @State var showCard = false
    @State var bottomState = CGSize.zero
    @State var showFull = false
    
    
    var body: some View {
        ZStack {
            
            TitleView()
                .blur(radius: show ? 10 : 0)
                .opacity(showCard ? 0.4 : 1)
                .offset(y: showCard ? -200 : 0)
                .animation(
                    Animation
                        .default
                        .delay(0.1),
                    value: show
                )
        
 
                    
            BackTrackCardView2()
                .frame(width: 340, height: 220)
                .background(show ? Color.blue : Color.purple)
                .cornerRadius(15.0)
                .shadow(radius: 30)
                .offset(x: 0, y: show ? -300 : -40)
                .offset(y: showCard ? -10 : 0)
                .offset(x: viewState.width, y: viewState.height)
              

                .scaleEffect(0.9)
                .rotationEffect(Angle.degrees(show ? 0 : 10.0))
                .rotationEffect(Angle(degrees: showCard ? 0 : 0))
                .rotation3DEffect(Angle(degrees: 10), axis: (x: 0.0, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.5), value: show)


            
            BackTrackCardView1()
                .background(show ? Color.orange : Color.red)
                .cornerRadius(15.0)
                .shadow(radius: 30)
                .offset(x: 0, y: show ? -200 : -20)
                .offset(x: viewState.width, y: viewState.height)
                .offset(y: showCard ? -40 : 0)
                .animation(.spring(response: 0.4, dampingFraction: 0.5), value: viewState)

                .scaleEffect(0.97)
                .rotationEffect(Angle.degrees(show ? 0 : 5))
                .rotation3DEffect(Angle(degrees: 3), axis: (x: 10.0, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.3), value: show)


            CardView()
                .frame(width: showCard ? 400 : 340.0, height: 220.0)
                .background(Color.indigo)
//            .cornerRadius(20)
                .clipShape(RoundedRectangle(cornerRadius:   showCard ? 30 : 20, style: .continuous))
                .shadow(radius: 20)
                .offset(x: viewState.width, y: viewState.height)
                .offset(y: showCard ? -70 : 0)
                .blendMode(.hardLight)
                .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0.6), value: showCard)
                .onTapGesture {
                    self.show.toggle()
                    self.showCard.toggle()
                }
                .gesture(
                    DragGesture().onChanged { value in
                        self.viewState = value.translation
                        self.show = true
                    }
                    .onEnded { value in
                        self.viewState = .zero
                        self.show = false
                    }
                )

            Text("\(bottomState.height)").offset(y: -250)
            
            BottomCardView(show: $show)
                .offset(x: 0, y: showCard ? 400 : 1000)
                .offset(y: bottomState.height)
//                .blur(radius: show ? 0 : 20)
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8 ), value: showCard)
                .gesture(
                    DragGesture().onChanged { value in
                        self.bottomState = value.translation
                        if self.showFull{
                            self.bottomState.height += -300
                        }
                        if self.bottomState.height < -300 {
                            self.bottomState.height = -300
                        }
                    }
                        .onEnded { value in
                            if self.bottomState.height > 50 {
                                self.showCard = false
                            }
                            if (self.bottomState.height < -100 && !self.showFull) || (self.bottomState.height > -250 && self.showFull) {
                                self.bottomState.height = -300
                                self.showFull = true                            } else {
                                self.bottomState = .zero
                                    self.showFull = false
                            }
                        }
                )
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Student ID")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("certificate")
                        .foregroundColor(Color("accent"))
                }
                Spacer()
                Image("Logo1")
            }
            .padding()
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 110, alignment: .top)
        }
    }
}

struct BackTrackCardView1: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 330, height: 220)

    }
}

struct BackTrackCardView2: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 300, height: 220)

    }
}



struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("카드수납 어플")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.top, 50)
            .padding(.horizontal, 30)

            Spacer()
        }
    }
        
}

struct BottomCardView: View {
    @Binding var show: Bool
    
    
    var body: some View {
        VStack(spacing: 30) {
            Rectangle()
                .frame(width: 30, height: 5)
                .cornerRadius(3)
                .opacity(0.2)
            
            
            Text("구성은 학생증 카드 / 도서관 카드 / 교통카드 / 또 무슨 카드 있지?")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4.0)
            
            HStack(spacing: 20) {
                RingView(color1: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), color2: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), width: 88, height: 88, percent: 80, show: $show)
                    .animation(Animation.easeInOut.delay(0.3))
                VStack(alignment: .leading, spacing: 8) {
                    Text("SwiftUI").fontWeight(.bold)
                    Text("12 of 12 sections completed\n10 houres sepnt on far")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .lineSpacing(4)
                }
                .padding(20)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.blue.opacity(0.3), radius: 20, x: -20)
            }
            Spacer()
        }
        .padding(.top, 10)
        .padding(.horizontal, 30)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 30)
        
    }
}






