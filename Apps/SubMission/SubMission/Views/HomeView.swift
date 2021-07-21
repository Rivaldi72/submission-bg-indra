import SwiftUI

struct HomeView: View {
    
    @State var search = ""
    var body: some View {
        
//        NavigationView {
            
            VStack {
                
                ZStack{
                    
                    Image("background")
                        .resizable()
                        .scaledToFit()
                        .offset(y: -22)
                    
                    VStack{
                        
                        HStack{
                            
                            Text("Halo Indra...")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Image("notification_icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                                .foregroundColor(.white)
                            
                            Image("avatar")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 45)
                                .clipShape(Circle())
                        }
                        
                        HStack{
                            
                            Text("Wonderful")
                                .foregroundColor(.white)
                                .font(.custom("maira", size: 30))
                            
                            Spacer()
                        }
                        
                        HStack{
                            
                            Text("INDONESIA")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Spacer()
                        }
                        
                        HStack{
                            
                            TextField("Cari destinasi kamu...", text: $search)
                            
                            Image("search_icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                                .foregroundColor(.black.opacity(0.1))
                        }
                        .padding()
                        .background(Color.white.cornerRadius(10).shadow(color: .black.opacity(0.1), radius: 10))
                        .offset(y: 37)
                    }
                    .padding()
                }
                
                HStack(alignment: .bottom) {
                    
                    Text("Kategori")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Lihat Semua")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(.blue)
                    })
                }
                .padding(.top)
                .padding(.horizontal)
                .padding(.bottom, 0)
                
                HStack {
                    
                    ZStack(alignment: .bottom) {
                        
                        Image("kategori_pantai").resizable()
                        
                        Rectangle()
                            .frame(width: .infinity, height: 25)
                            .foregroundColor(.black.opacity(0.5))
                        
                        Text("Pantai")
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.bottom, 4)
                        
                    }
                    .cornerRadius(10)
                    .frame(width: UIScreen.main.bounds.width / 4, height: UIScreen.main.bounds.width / 3)
                    
                    Spacer()
                    
                    ZStack(alignment: .bottom) {
                        
                        Image("kategori_gunung").resizable()
                        
                        Rectangle()
                            .frame(width: .infinity, height: 25)
                            .foregroundColor(.black.opacity(0.5))
                        
                        Text("Gunung")
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.bottom, 4)
                        
                    }
                    .cornerRadius(10)
                    .frame(width: UIScreen.main.bounds.width / 4, height: UIScreen.main.bounds.width / 3)
                    
                    Spacer()
                    
                    ZStack(alignment: .bottom) {
                        
                        Image("kategori_kota").resizable()
                        
                        Rectangle()
                            .frame(width: .infinity, height: 25)
                            .foregroundColor(.black.opacity(0.5))
                        
                        Text("Kota")
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.bottom, 4)
                        
                    }
                    .cornerRadius(10)
                    .frame(width: UIScreen.main.bounds.width / 4, height: UIScreen.main.bounds.width / 3)
                }
                .padding(.horizontal)
                
                HStack(alignment: .bottom) {
                    
                    Text("Populer")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Lihat Semua")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(.blue)
                    })
                }
                .padding(.top, 8)
                .padding(.horizontal)
                .padding(.bottom)
                
                Spacer()
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
