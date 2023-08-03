//
//  ContentView.swift
//  lap4week2
//
//  Created by الوليد خشيم on 16/01/1445 AH.
//

import SwiftUI


struct HomePage :View{
    var body: some View{
        Text("Truo")
    }
}

struct ContentView: View {
   @State var showingAlert: Bool = false
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                TextField("$username", text: $username)
                Text("")
                TextField("$password", text: $password)
                if username.lowercased() == "waleed" && password.lowercased() == "123123"{
                    HomePage()
                }else{  Button("Erore") {
                    showingAlert = true
                }
                .alert("Erore username or password", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { }
                }}
                Form{
                    List(mydata ,id:\.self){i in
                        
                        NavigationLink {
                            VStack{
                                
                                    Text("my name is    \( i["name"] ?? "name")")
                                    
                                
                                Text("i am        \( i["age"] ?? "name")")
                                Text("i am from     \( i["site"] ?? "name")")
                               
                            }
                            
                        }label: {
                            HStack {
                                Text("\( i["name"] ?? "name")")
                                Image(systemName: "swift")
                            }
                        }
                        
                        
                        
                    }
                    
                }
                
            }
            .padding()
        }
    }
}

var mydata: Array<Dictionary> = [
    ["name" : "waleed","age":"21","site":"madinah"],
    ["name" : "ahmad","age":"17","site":"jedah"],
    ["name" : "khalid","age":"18","site":"tabok"],
    ["name" : "raiad","age":"19","site":"apha"],
    ["name" : "tariq","age":"20","site":"najran"] ]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

