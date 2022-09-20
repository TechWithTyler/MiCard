//
//  ContentView.swift
//  MiCard
//
//  Created by Tyler Sheft on 9/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack {
			Color(red: 0.09, green: 0.63, blue: 0.53, opacity: 1.0)
				.edgesIgnoringSafeArea(.all)
			VStack {
				Image("tyler")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 150, height: 150)
					.clipShape(Circle())
					.overlay(
						Circle().stroke(Color.white, lineWidth: 5)
					)
				Text("Tyler Sheft")
					.font(.custom("Pacifico-Regular", size: 40))
					.bold()
				.foregroundColor(.white)
				Text("Apple Developer")
					.foregroundColor(.white)
					.font(.system(size: 25))
				Divider()
				InfoView(text: "+1 (415) 272-5795", imageName: "phone.fill")
				InfoView(text: "twsandmds@gmail.com", imageName: "envelope.fill")
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView()
    }
}
