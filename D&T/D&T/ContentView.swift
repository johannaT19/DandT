import SwiftUI

struct ContentView: View {
    var body: some View {
       Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//
// HOME
//
//
struct Home : View {
    
    @State var show = false
    @State var searchText = ""
    
    var body: some View {
        
        ZStack(alignment: .leading){
            
            GeometryReader{_ in
                
                VStack{
                    
                    //NAV BAR
                    ZStack{
                        HStack{
                            Button(action: {
                                
                                withAnimation(.default){
                                    self.show.toggle()
                                }
                                
                            }) {
                                Image(systemName: "line.horizontal.3.decrease")
                                    .resizable()
                                    .renderingMode(.original)
                                    .frame(width: 20, height: 20)
                            }
                            Spacer()
                        }
                        
                        Text("Dress & Try")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                        
                        HStack{
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
                    .foregroundColor(.primary)
                    .overlay(Rectangle().stroke(Color.primary.opacity(0), lineWidth: 0).edgesIgnoringSafeArea(.top))
                    
                    //SEARCH BAR
                    VStack {
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Search")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.vertical, 5)
                        .padding(.horizontal)
                        .frame(width: 400)
                    }
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding()
                    
                    // MARK CHOICE
                    ScrollView{
                        VStack{
                            HStack{
                                Spacer()
                                Button(action: {
                                }) {
                                    Image("Mark1")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 130, height: 130)
                                        .cornerRadius(5)
                                }
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                    Image("Mark2")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 130, height: 130)
                                        .cornerRadius(5)
                                }
                                Spacer()
                            }
                            .padding(.top,30)
                            
                            HStack{
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                    Image("Mark3")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 130, height: 130)
                                        .cornerRadius(5)
                                }
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                    Image("Mark4")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 130, height: 130)
                                        .cornerRadius(5)
                                }
                                Spacer()
                            }
                            .padding(.top,25)
                            
                            HStack{
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                    Image("Mark5")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 130, height: 130)
                                        .cornerRadius(5)
                                }
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                    Image("Mark6")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 130, height: 130)
                                        .cornerRadius(5)
                                }
                                Spacer()
                            }
                            .padding(.top,25)
                        }
                    }
                   
                }
            }
            
            HStack{
                Menu(show: self.$show)
                    .offset(x: self.show ? 0 : -UIScreen.main.bounds.width / 1.5)
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
            .background(Color.primary.opacity(0).edgesIgnoringSafeArea(.all))
        }
    }
}

//
//
// SIDE MENU
//
//
struct Menu : View {
    
    @Binding var show : Bool
    
    var body: some View {
        
        // SIDE MENU
        VStack{
            HStack{
                Button(action: {
                    
                    withAnimation(.default){
                        
                        self.show.toggle()
                    }
                    
                }) {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 10, height: 15)
                }
                Spacer()
            }
            .padding(.top)
            .padding(.bottom, 25)
            
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack (spacing: 12){
                Text("Nom")
                
                Text("Prénom")
                    .font(.caption)
            }
            .padding(.top, 25)
            
            HStack(spacing: 22){
               
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "house")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 25, height: 25)
                    Text("Accueil")
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 5, height: 10)
        
                }
                Spacer()
            }
            .padding(.top,40)
            
            HStack(spacing: 22){
               
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "heart")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 25, height: 25)
                    Text("Favoris")
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 5, height: 10)
        
                }
                Spacer()
            }
            .padding(.top,25)
            
            HStack(spacing: 22){
               
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "cart")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 25, height: 25)
                    Text("Panier")
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 5, height: 10)
        
                }
                Spacer()
            }
            .padding(.top,25)
            Spacer()
            HStack(spacing: 22){
               
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "gearshape")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 25, height: 25)
                    Text("Parametres")
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 5, height: 10)
        
                }
                Spacer()
            }
            .padding(.top,25)
            .padding(.bottom, 25)
         
        }
        .padding(.horizontal, 15)
        .frame(width: UIScreen.main.bounds.width / 1.7)
        .background((Color.white).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        .overlay(Rectangle().stroke(Color.primary.opacity(0.2), lineWidth: 2).shadow(radius: 3).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        
    }
}
