//
//  ContentView.swift
//  CW7
//
//  Created by aalaa alsharhan on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    
   // @State var imag = ["Dan","Rup","Emma"]
    
    var body: some View {
        NavigationView
        {
        List
        {
     
            MoviesName(title: "Harry Potter", imageN: "harry")
            MoviesName(title: "The SpiderWick", imageN: "spider")
            MoviesName(title: "Nanny Mcphee", imageN: "Nanny")
            
           
            
            
         
        }//end of list
        
           
            
            
            
        }//end of nav
        
        .accentColor(.white)
        
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}

struct MoviesName: View {
    
    let title:String
    let imageN: String
    
  //  @State var imag = ["Dan","Rup","Emma"]
    
    var body: some View {
        HStack
        {
            
            Image(imageN)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                //.aspectRatio(1.0, contentMode: .fit)
                .clipShape(Circle())
            Text(title)
            
            
            NavigationLink(destination:
                            
                            ZStack{
                            
               // Color.black
                            Image(imageN)
                    .resizable()
                    .scaledToFill()
                    .opacity(0.5)
                    .blur(radius: 10)
                    .ignoresSafeArea()
                            
                            
                            VStack{
                Image(imageN)
                .resizable()
                //.scaledToFit()
            .frame(width: 180, height: 180)
            .clipShape(Circle())
            .padding(5)
            .background(.white)
            .clipShape(Circle())
                Text(title)
                    .font(.title)
                    .foregroundColor(.white)
                    .ignoresSafeArea()
                                
                                ScrollView(.horizontal)
                                {
                                    Image("Dan")
                                }


                             
            }//end of vstack
                
                
                
                
                           
            }//end of zstack
                           
               
            )//end of destination link
                
             
            
            {
             //empty
            
            }
            
          


        }//end of hstack
        
    
        .navigationTitle("Movies")
    }
}
