import SwiftUI

struct RunningSection: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                Image("running1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 324, height: 260)
                    .clipped()
                    .cornerRadius(10)
                    .padding(.bottom, 25.0)
                //In General People Burn 11.4 for minutes when running
                // Stage 1
                Button(action: {}) {
                    NavigationLink(destination: WorkoutSection()){
                        VStack(alignment: .leading) {
                            Text("Stage 1")
                                .multilineTextAlignment(.leading)
                                .font(.body)
                                .fontWeight(.bold)
                                .frame(width: 289, alignment: .leading)
                                .padding(.horizontal, 20)
                                .padding(.top, 20)
                            Text("30 minutes")
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 20)
                            Text("342 calories burned")
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 20)
                                .padding(.bottom, 20)
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(red: 0.11, green: 0.52, blue: 0.95))
                                .shadow(color: Color.black.opacity(0.25), radius: 2, x: 0, y: 4)
                        )
                        .foregroundColor(.white)
                    }
                }
            }
            // Stage 2 (Copy the stage button code here)
            Button(action: {}) {
                NavigationLink(destination: WorkoutSection()){
                    VStack(alignment: .leading) {
                        Text("Stage 2")
                            .multilineTextAlignment(.leading)
                            .font(.body)
                            .fontWeight(.bold)
                            .frame(width: 289, alignment: .leading)
                            .padding(.horizontal, 20)
                            .padding(.top, 20)
                        Text("45 minutes")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 20)
                        Text("513 calories burned")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 20)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 0.11, green: 0.52, blue: 0.95))
                            .shadow(color: Color.black.opacity(0.25), radius: 2, x: 0, y: 4)
                    )
                    .foregroundColor(.white)
                }
            }
            // Stage 3 (Copy the stage button code here)
            Button(action: {}) {
                NavigationLink(destination: WorkoutSection()){
                    VStack(alignment: .leading) {
                        Text("Stage 3")
                            .multilineTextAlignment(.leading)
                            .font(.body)
                            .fontWeight(.bold)
                            .frame(width: 289, alignment: .leading)
                            .padding(.horizontal, 20)
                            .padding(.top, 20)
                        Text("60 minutes")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 20)
                        Text("684 calories burned")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 20)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 0.11, green: 0.52, blue: 0.95))
                            .shadow(color: Color.black.opacity(0.25), radius: 2, x: 0, y: 4)
                    )
                    .foregroundColor(.white)
                }
            }.navigationTitle("Running Challenge")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RunningSection()
    }
}

