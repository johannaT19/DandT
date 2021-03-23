import SwiftUI

struct SubMenuMarkView: View {
    var body: some View {
       SubMenu()
       ClothingView()
    }
}

struct SubMenuMarkView_Previews: PreviewProvider {
    static var previews: some View {
        SubMenuMarkView()
    }
}


//
//
//SUB MENU
//
//
struct SubMenu : View {
    
    var body: some View {
        ZStack (alignment: .leading){
            GeometryReader{_ in
                VStack{
                    
                    // BAR NAV
                    ZStack {
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "chevron.left")
                                    .resizable()
                                    .renderingMode(.original)
                                    .frame(width: 10, height: 15)
                            }
                            Spacer()
                            
                            Text("Marque")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "cart")
                                    .resizable()
                                    .renderingMode(.original)
                                    .frame(width: 25, height: 25)
                            }
                        }
                        .padding()
                    }
                    
                    // MENU CATEGORY
                    VStack{
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Nouveautés")
                                    .foregroundColor(.black)
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .renderingMode(.original)
                            }
                            
                        }
                        .padding()
                        .padding(.top, 20)
                        
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Vêtements")
                                    .foregroundColor(.black)
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .renderingMode(.original)
                            }
                        }
                        .padding()
                        .padding(.top, 15)
                        
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Chaussures")
                                    .foregroundColor(.black)
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .renderingMode(.original)
                            }
                        }
                        .padding()
                        .padding(.top, 15)
                        
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Accessoires")
                                    .foregroundColor(.black)
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .renderingMode(.original)
                            }
                        }
                        .padding()
                        .padding(.top, 15)
                        
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Outlet")
                                    .foregroundColor(.black)
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .renderingMode(.original)
                            }
                        }
                        .padding()
                        .padding(.top, 15)
                    }
                }
            }
        }
    }
}

//
//
// VIEW CLOTHING
//
//
struct ClothingView : View {
    var body: some View {
        ZStack (alignment: .leading){
            GeometryReader {_ in
                VStack{
                    
                    // BAR NAV
                    ZStack {
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "chevron.left")
                                    .resizable()
                                    .renderingMode(.original)
                                    .frame(width: 10, height: 15)
                            }
                            Spacer()
                            
                            Text("Choix")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "cart")
                                    .resizable()
                                    .renderingMode(.original)
                                    .frame(width: 25, height: 25)
                            }
                        }
                    }
                    .padding()
                    
                    // FILTRE
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Filtre")
                                .foregroundColor(.black)
                                
                        }
                    }
                    .padding()
                    .frame(width: 400, height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                
                    // CLOTHING
                    ScrollView{
                        VStack{
                            HStack{
                                VStack{
                                    Image("Clothing")
                                        .resizable()
                                        .renderingMode(.original)
                                        .frame(width: 160, height: 200)
                                    Text("Pantalon wide leg")
                                    HStack{
                                        Spacer()
                                        Text("25,99 €")
                                            .foregroundColor(.black)
                                            .fontWeight(.light)
                                            .font(.caption)
                                        Spacer()
                                        
                                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                            Image(systemName: "suit.heart")
                                                .resizable()
                                                .renderingMode(.original)
                                                .frame(width: 15, height: 15)
                                        }
                                        Spacer()
                                    }
                                }
                                .frame(width: 150, height: 250)
                                .padding()
                                
                                VStack{
                                    Image("Clothing")
                                        .resizable()
                                        .renderingMode(.original)
                                        .frame(width: 160, height: 200)
                                    Text("Pantalon wide leg")
                                    HStack{
                                        Spacer()
                                        Text("25,99 €")
                                            .foregroundColor(.black)
                                            .fontWeight(.light)
                                            .font(.caption)
                                        Spacer()
                                        
                                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                            Image(systemName: "suit.heart")
                                                .resizable()
                                                .renderingMode(.original)
                                                .frame(width: 15, height: 15)
                                        }
                                        Spacer()
                                    }
                                }
                                .frame(width: 150, height: 250)
                                .padding()
                            }
                            
                            HStack{
                                VStack{
                                    Image("Clothing")
                                        .resizable()
                                        .renderingMode(.original)
                                        .frame(width: 160, height: 200)
                                    Text("Pantalon wide leg")
                                    HStack{
                                        Spacer()
                                        Text("25,99 €")
                                            .foregroundColor(.black)
                                            .fontWeight(.light)
                                            .font(.caption)
                                        Spacer()
                                        
                                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                            Image(systemName: "suit.heart")
                                                .resizable()
                                                .renderingMode(.original)
                                                .frame(width: 15, height: 15)
                                        }
                                        Spacer()
                                    }
                                }
                                .frame(width: 150, height: 250)
                                .padding()
                                
                                VStack{
                                    Image("Clothing")
                                        .resizable()
                                        .renderingMode(.original)
                                        .frame(width: 160, height: 200)
                                    Text("Pantalon wide leg")
                                    HStack{
                                        Spacer()
                                        Text("25,99 €")
                                            .foregroundColor(.black)
                                            .fontWeight(.light)
                                            .font(.caption)
                                        Spacer()
                                        
                                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                            Image(systemName: "suit.heart")
                                                .resizable()
                                                .renderingMode(.original)
                                                .frame(width: 15, height: 15)
                                        }
                                        Spacer()
                                    }
                                }
                                .frame(width: 150, height: 250)
                                .padding()
                                
                            }
                            
                            HStack{
                                VStack{
                                    Image("Clothing")
                                        .resizable()
                                        .renderingMode(.original)
                                        .frame(width: 160, height: 200)
                                    Text("Pantalon wide leg")
                                    HStack{
                                        Spacer()
                                        Text("25,99 €")
                                            .foregroundColor(.black)
                                            .fontWeight(.light)
                                            .font(.caption)
                                        Spacer()
                                        
                                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                            Image(systemName: "suit.heart")
                                                .resizable()
                                                .renderingMode(.original)
                                                .frame(width: 15, height: 15)
                                        }
                                        Spacer()
                                    }
                                }
                                .frame(width: 150, height: 250)
                                .padding()
                                
                                VStack{
                                    Image("Clothing")
                                        .resizable()
                                        .renderingMode(.original)
                                        .frame(width: 160, height: 200)
                                    Text("Pantalon wide leg")
                                    HStack{
                                        Spacer()
                                        Text("25,99 €")
                                            .foregroundColor(.black)
                                            .fontWeight(.light)
                                            .font(.caption)
                                        Spacer()
                                        
                                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                            Image(systemName: "suit.heart")
                                                .resizable()
                                                .renderingMode(.original)
                                                .frame(width: 15, height: 15)
                                        }
                                        Spacer()
                                    }
                                }
                                .frame(width: 150, height: 250)
                                .padding()
                            }
                        }
                        .padding()
                        .frame(width: 425)
                    }
                }
            }
        }
    }
}
