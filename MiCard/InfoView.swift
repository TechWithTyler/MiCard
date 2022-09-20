//
//  InfoView.swift
//  MiCard
//
//  Created by Tyler Sheft on 9/20/22.
//

import SwiftUI

struct InfoView: View {

	var text: String

	var imageName: String

	var body: some View {
		RoundedRectangle(cornerRadius: 25)
			.fill(Color.white)
			.frame(width: nil, height: 50, alignment: .center)
			.overlay(
				HStack {
					Image(systemName: imageName)
						.foregroundColor(.green)
					Text(text).foregroundColor(.black)
						.font(.system(size: 24))
				}
			)
			.padding(.all)
	}
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
		InfoView(text: "Piece of info", imageName: "info")
			.previewLayout(.sizeThatFits)
    }
}
