//
//  ContentView.swift
//  Notes
//
//  Created by Isabella Di Lorenzi on 16/11/23.
//
/*
import SwiftUI

struct ContentView: View {
    @State var model = NotesViewModel()
    //  let note = Trash()
    
    
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            List($model.notes) { note in
                NavigationLink(destination: VStack { TextEditor(text: .constant("Placeholder")) }) {
                    Image(systemName: "folder")
                    HStack{
                        Image(systemName: note.text)
                        Text(note.name)
                        
                    }
                    NavigationStack{
                        List(note.notes) { note in
                            NavigationLink(destination: VStack { TextEditor(text: /*@START_MENU_TOKEN@*/.constant("Placeholder")/*@END_MENU_TOKEN@*/) }) {
                                //Image(systemName: "folder")
                                HStack{
                                    Image(systemName: note.text)
                                    Text(note.name)
                                    
                                }
                            }
                            .searchable(text: $searchText)
                            .navigationTitle("Folders")
                        }
                    }
                }
            }
        }
    }
}
                
                struct ContentView_Previews: PreviewProvider {
                    static var previews: some View {
                        ContentView()
                    }
                    
                }
*/
