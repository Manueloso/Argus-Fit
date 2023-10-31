
import SwiftUI
import ConfettiSwiftUI

struct CongratulationsView: View {
    
    
    @State private var counter = 0
    
    
    let cardData = [
        CardData(imageName: "flame", value: "310", label: "Calories Burned"),
        CardData(imageName: "time", value: "1h 30m", label: "Time")
    ]
    var body: some View {
        NavigationStack{
            ZStack {
                Color.white // Set the background color to white
                ZStack {
                    
                    
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 390, height: 861)
                        .foregroundColor(Color.white) // Set the background color to white
                        .shadow(color: Color(red: 0.2, green: 0.2, blue: 0.28).opacity(0.04), radius: 10, x: 0, y: 4)
                        .shadow(color: Color(red: 0.05, green: 0.1, blue: 0.29).opacity(0.08), radius: 2.5, x: 0, y: 0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .inset(by: 0.5)
                                .stroke(Color.white, lineWidth: 1)
                        )
                    VStack{
                        NavigationLink(destination:LoseWeightsView(viewModel: SportsViewModel())){
                            Text("Done")
                                .padding(.bottom, 760)
                                .padding(.leading,270)
                            
                        }
                    }
                    
                    VStack {
                        
                        Text("Congratulations!")
                            .font(Font.custom("SF Pro", size: 28).weight(.bold))
                            .onAppear {
                                // Trigger the confettiCannon animation when the view appears
                                counter += 1
                            }
                            .confettiCannon(counter: $counter, num: 100)
                        
                        
                            .foregroundColor(Color(red: 0.11, green: 0.52, blue: 0.95))
                            .padding(.top, 20)
                        
                        HStack {
                            ForEach(cardData, id: \.self) { data in
                                CardView(data: data)
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 40)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
        }//.navigationBarBackButtonHidden()
    }
    struct CardData: Identifiable, Hashable {
        let id = UUID()
        let imageName: String
        let value: String
        let label: String
    }
    
    struct CardView: View {
        let data: CardData
        
        var body: some View {
            
            VStack(alignment: .leading, spacing: 12) {
                Image(data.imageName)
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Text(data.value)
                    .font(Font.custom("SF Pro", size: 20).weight(.bold))
                    .foregroundColor(Color(red: 0.22, green: 0.26, blue: 0.31))
                    .frame(maxWidth: .infinity, alignment: .bottomLeading)
                
                Text(data.label)
                    .font(Font.custom("SF Pro", size: 13).weight(.medium))
                    .foregroundColor(Color(red: 0.5, green: 0.55, blue: 0.6))
                    .frame(maxWidth: .infinity, alignment: .bottomLeading)
            }
            .padding(10)
            .frame(width: 165, alignment: .topLeading)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color(red: 0.2, green: 0.2, blue: 0.28).opacity(0.04), radius: 10, x: 0, y: 4)
            .shadow(color: Color(red: 0.05, green: 0.1, blue: 0.29).opacity(0.08), radius: 2.5, x: 0, y: 0)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .inset(by: 0.5)
                    .stroke(Color.white, lineWidth: 1)
            )
        }
    }
}








struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationsView()
    }
}
