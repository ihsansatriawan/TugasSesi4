//
//  CoffeeDetailView.swift
//  TugasSesi4
//
//  Created by ihsan.satriawan on 02/12/22.
//

import SwiftUI

struct CoffeeDetailView: View {
    // MARK: - PROPERTIES
    let coffeeShopDetails: Coffeeshop
    
    // MARK: - BODY
    var body: some View {
        //TODO: Fixing Styling
        ZStack {
            LinearGradient(colors: [.white, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Image(coffeeShopDetails.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240)
                    .clipShape(Circle())
                    .overlay {
                        ZStack {
                            Circle()
                                .opacity(0.6)
                            VStack {
                                Image(systemName: "person.crop.circle.fill.badge.plus")
    //                                .renderingMode(.original)
    //                                .foregroundColor(.blue)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50)
                                    .foregroundColor(.blue)
                                
                                Text(coffeeShopDetails.name)
                                    .font(.system(size: 30, design: .rounded))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            } //: Vstack
                        } //: Zstack
                    } //: Overlay
                
                Text(coffeeShopDetails.review)
                    .multilineTextAlignment(.center)
                    .padding(10)
                    .font(.title2)
                    .foregroundColor(.blue)
                
                HStack {
                    Image(systemName: "pin")
                        .foregroundColor(.red)
                    
                    Text(coffeeShopDetails.location)
                        .foregroundColor(.red)
                }
            } //: VStack
        } //: Zstack
        
    }
}


// MARK: - PREVIEW
struct CoffeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetailView(coffeeShopDetails: Coffeeshop(image: "bojaeatery", name: "Boja Eatery", location: "Jl. Sumatera No. 21, Kota Bandung", review: "The food is delicious, cooked just right.  Friendly service.  Cozy atmosphere with floral decorations.  There is a ~robot~ that sends the dish.  Prices are reasonable for a restaurant of its class"))
    }
}
