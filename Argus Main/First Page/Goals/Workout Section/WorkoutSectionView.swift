import SwiftUI

struct WorkoutSection: View {
    @State private var elapsedTime: TimeInterval = 0
    @State private var timerIsRunning = false
    @State private var timer: Timer?

    var body: some View {
       
    
        VStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Walk for 4 minute\nRun for 1 minute\nRepeat that sequence 4 more times\nEnd with 4 minutes of walking")
                    .font(Font.custom("SF Pro", size: 17).weight(.semibold))
                    .foregroundColor(.white)
                    .frame(width: 289, alignment: .leading)
                    .padding(.horizontal, 21)
                    .padding(.vertical, 18)
                    .background(Color(red: 0.11, green: 0.52, blue: 0.95))
                    .cornerRadius(10)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 330, height: 315)
                    .background(
                        Image("workoutsection")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 330, height: 315)
                            .clipped()
                    )
                    
            }
            
            Text(timeString(elapsedTime))
                .font(Font.custom("SF Pro", size: 26).weight(.bold))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.22, green: 0.26, blue: 0.31))
                .frame(width: 327, alignment: .bottom)
            
            Button(action: {
                if timerIsRunning {
                    timer?.invalidate()
                    timer = nil
                } else {
                    startTimer()
                }
                timerIsRunning.toggle()
            }) {
                Image(systemName: timerIsRunning ? "pause.circle.fill" : "play.circle.fill")
                    .resizable()
                    .frame(width: 64, height: 64) // Larger button size
                    .foregroundColor(.white)
            }
            .background(Color(red: 0.11, green: 0.52, blue: 0.95)
                            .cornerRadius(500))
            
            ProgressBar(width: progressBarWidth(), totalWidth: 288)
                .frame(height: 4)
            
        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            elapsedTime += 1
        }
    }

    func timeString(_ time: TimeInterval) -> String {
        let seconds = Int(time) % 60
        let minutes = Int(time) / 60 % 60
        let hours = Int(time) / 3600
        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    }
    
    func progressBarWidth() -> CGFloat {
        let totalDuration: TimeInterval = 300 // Total duration in seconds (5 minutes)
        return CGFloat(elapsedTime / totalDuration) * 288
    }
}

struct WorkoutSection_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutSection()
    }
}

struct ProgressBar: View {
    var width: CGFloat
    var totalWidth: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(width: totalWidth, height: 4)
                .opacity(0.3)
                .background(Color.white)
            
            Rectangle()
                .frame(width: width, height: 4)
                .foregroundColor(Color.blue)
        }
    }
}

