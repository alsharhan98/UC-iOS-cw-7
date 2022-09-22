//
//  ContentView.swift
//  CW7P2
//
//  Created by user on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var num1 : Bool = false
    @State var num2 : Bool = false
    @State var num3 : Bool = false
    @State var tapped : Bool = false
    @State var fis = ["Computer Engineer"]
    @State var sta = ""
   // @State private var didTap: Bool = false
    var body: some View {
       
        
        VStack{
         
            HStack{
                
                Text("Choose Your Specialty")
                    .font(.largeTitle)
                    .padding()
                Button(action: {
                    tapped.toggle()
                    //self.didTap = true
                 
                }){
                    Image(systemName: tapped == true ? "minus": "plus")
                        .font(.largeTitle)
                                    .symbolVariant(.circle)
                                    .foregroundColor(tapped ? Color.red : Color.green)
                    
                  
                }
             
            
                
              
              
            
            }//end of hstack
            
                      
            if tapped == true{
           // Text("Computer Engineer")
             //  .frame(width: 200, height: 30)
               // .background(RoundedRectangle(cornerRadius:10).fill(Color.mint))
                //.padding()
              
                Button(action: {
                    num1.toggle()
                   
                 
                }){
                    Text("Computer Engineer")
                       .frame(width: 200, height: 30)
                        .background(RoundedRectangle(cornerRadius:10).fill(Color.mint))
                        .padding()
                   
                                    .symbolVariant(.circle)
                                    .foregroundColor(.black)
                    
                  
                }
                
                
                
                
                
                Button(action: {
                    num2.toggle()
                   
                 
                }){
                    Text("Computer Science")
                       .frame(width: 200, height: 30)
                        .background(RoundedRectangle(cornerRadius:10).fill(Color.orange))
                        .padding()
                   
                                    .symbolVariant(.circle)
                                    .foregroundColor(.black)
                    
                  
                }
                
                
                Button(action: {
                    num3.toggle()
                   
                 
                }){
                    Text("Another Specialty")
                       .frame(width: 200, height: 30)
                        .background(RoundedRectangle(cornerRadius:10).fill(Color.yellow))
                        .padding()
                   
                                    .symbolVariant(.circle)
                                    .foregroundColor(.black)
                    
                  
                }
                
                
            
               
        //    Text("Computer Science")
          //      .frame(width: 200, height: 30)
            //   .background(RoundedRectangle(cornerRadius:10).fill(Color.orange))
              // .padding()
                
                
            
           // Text("Another Specialty")
             //  .frame(width: 200, height: 30)
              //.background(RoundedRectangle(cornerRadius:10).fill(Color.yellow))
              //.padding()
            
            
            }
         
         
            if num1 == true{
                Text("Your Specialty: Computer Engineer")
                    .font(.largeTitle)
                    //.padding(100)
            }
            
            else if num2 == true{
                Text("Your Specialty: Computer Science")
                    .font(.largeTitle)
                    //.padding(100)
            }
                
            else if num3 == true{
                Text("Your Specialty: Another Specialty")
                    .font(.largeTitle)
                   // .padding(100)
            }
                
                
                
                
                
                
                
        }//vstack
        .onTapGesture {
            
            tapped.toggle()
      
        
  
        }

         
      
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
