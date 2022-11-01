//
//  GalleryView.swift
//  MySwiftUI
//
//  Created by Sathya Chinnasamy on 31/10/22.
//

import SwiftUI

struct GalleryView: View {
    @State private var isShowPhotoLibrary = false
    var body: some View {
        Text("Gallery View!!")
            .navigationTitle("Gallery")
                            .toolbar {
                                Button("Add") {
                                    self.isShowPhotoLibrary = true
                                }
                            }.sheet(isPresented: $isShowPhotoLibrary) {
                                ImagePicker(sourceType: .photoLibrary)
                            }
    }
}

struct ImagePicker: UIViewControllerRepresentable {
 
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
 
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
 
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType
 
        return imagePicker
    }
 
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
 
    }
}
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
