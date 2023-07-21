

import SwiftUI

struct MenuView: View {
    var body: some View {
        
        VStack {
            
            Spacer()
            
            VStack(spacing: 16){
                Text("Marks - 28 completion")
                
                Color.white
                    .frame(width: 38, height: 6)
                    .cornerRadius(3)
                    .frame(width: 130, height: 6, alignment: .leading)
                    .background(Color.black.opacity(0.08))
                    .cornerRadius(3)
                    .padding()
                    .frame(width: 150, height: 24)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(12)
                                
                
                MenuRow(title: "Account", icon: "gear")
                MenuRow(title: "Biliing ", icon: "creditcard")
                MenuRow(title: "Sign Out", icon: "person.crop.circle")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9309203029, green: 0.9137393832, blue: 0.9981213212, alpha: 1)), Color(#colorLiteral(red: 0.7878400683, green: 0.7668505907, blue: 0.8757609725, alpha: 1))]),startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 30)
            .overlay(
                Image("Avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 60)
                    .clipShape(Circle())
                    .offset(y: -150)
                )
        }
        .padding(.bottom, 30)
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuRow: View {
    
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color.purple)

             
            
            Text(title)
                .font(.system(size: 20, weight: .bold))
                .imageScale(.large)
                .frame(width: 120, alignment: .leading)
        }
    }
}





