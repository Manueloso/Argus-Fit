import SwiftUI

struct GoalsContentView: View {
    
    @State var selectedbutton : String = ""
    
    @AppStorage("isMyFirstLaunch")
    var isMyFirstLaunch: Bool = true
    
    var body: some View {
        NavigationStack{
            
            VStack(alignment: .leading, spacing: 24) {
                Text("What’s your main goal?")
                    .font(.custom("SF Pro", size: 28))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Button(action: {
                    selectedbutton = "Lose Weight"
                    isMyFirstLaunch.toggle()
                    // Action for the "Lose Weight" button
                }) {
                        Text("Lose Weight")
                            .font(.custom("SF Pro", size: 20))
                            .fontWeight(.bold)
                            .frame(width: 320, height: 90)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color(red: 0.11, green: 0.52, blue: 0.95))
                                    .shadow(color: Color.black.opacity(0.25), radius: 2, x: 0, y: 4)
                            )
                            .foregroundColor(.white)
                    }
                }
                
                Button(action: {
                    selectedbutton = "Gain Weight"
                    isMyFirstLaunch.toggle()
                    // Action for the "Lose Weight" button
                }) {
                  
                        Text("Gain Weight")
                            .font(.custom("SF Pro", size: 20))
                            .fontWeight(.bold)
                            .frame(width: 320, height: 90)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color(red: 0.11, green: 0.52, blue: 0.95))
                                    .shadow(color: Color.black.opacity(0.25), radius: 2, x: 0, y: 4)
                            )
                            .foregroundColor(.white)
                    }
                Button(action: {
                    selectedbutton = "Keep in Shape"
                    isMyFirstLaunch.toggle()
                    // Action for the "Keep in Shape" button
                }) {
                        Text("Keep in Shape")
                            .font(.custom("SF Pro", size: 20))
                            .fontWeight(.bold)
                            .frame(width: 320, height: 90)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color(red: 0.11, green: 0.52, blue: 0.95))
                                    .shadow(color: Color.black.opacity(0.25), radius: 2, x: 0, y: 4)
                            )
                            .foregroundColor(.white)
                    }
            
                Button(action: {
                    selectedbutton  = "Powerlifting"
                    isMyFirstLaunch.toggle()
                    // Action for the "Powerlifting" button
                }) {
                        Text("Powerlifting")
                            .font(.custom("SF Pro", size: 20))
                            .fontWeight(.bold)
                            .frame(width: 320, height: 90)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color(red: 0.11, green: 0.52, blue: 0.95))
                                    .shadow(color: Color.black.opacity(0.25), radius: 2, x: 0, y: 4)
                            )
                            .foregroundColor(.white)
                    }
            }
            .padding(.horizontal, 33)
            .padding(.vertical, 139)
            .background(Color.white)
        }
    }


struct GoalsContentView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsContentView()
    }
}
