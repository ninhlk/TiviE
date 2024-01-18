//
//  Model.swift
//  TiviE
//
//  Created by Ninh Lê on 16/01/2024.
//

import Foundation


var userName, passWord: String?

let genre: [String] = [ "Hành Động", "Kinh Dị", "Mạo Hiểm", "Khoa Giáo", "Giải Trí", "Tình Cảm", "Văn Hoá", "Gia Đình" ]

struct Movies {
    var name, imageP, imageL, genre, urlStr: String
}
var arrayMovies: [Movies] = [
    Movies(name: "Anh Em Mario Siêu Phàm",
           imageP: "https://images.msky.vn/images/hbo/films/041229H0-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/041229H0-landscape.jpg",
           genre: "Giải Trí",
           urlStr: "https://www.youtube.com/watch?v=q5-6LtaAazo"),
    Movies(name: "Giới Siêu Giàu Châu Á",
           imageP: "https://images.msky.vn/images/hbo/films/022759L1-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/022759L1-landscape.jpg",
           genre: "Gia Đình",
           urlStr: "https://www.youtube.com/watch?v=DbXDAXsOZ9o"),
    Movies(name: "Shazam",
           imageP: "https://images.msky.vn/images/hbo/films/040442H1-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/040442H1-landscape.jpg",
           genre: "Hành Động",
           urlStr: "https://www.youtube.com/watch?v=o7WMCPs05-A"),
    Movies(name: "Cá Mập Cổ Đại",
           imageP: "https://images.msky.vn/images/hbo/films/022781L1-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/022781L1-landscape.jpg",
           genre: "Mạo Hiểm",
           urlStr: "https://www.youtube.com/watch?v=pAK70RwbEQ4"),
    Movies(name: "Cú Ngã",
           imageP: "https://images.msky.vn/images/hbo/films/039467H1-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/039467H1-landscape.jpg",
           genre: "Mạo Hiểm",
           urlStr: "https://www.youtube.com/watch?v=WwduY77YYJ8"),
    Movies(name: "The Flash",
           imageP: "https://images.msky.vn/images/hbo/films/040975H1-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/040975H1-landscape.jpg",
           genre: "Hành Động",
           urlStr: "https://www.youtube.com/watch?v=emO7N5oOJ3M"),
    Movies(name: "Gã Hề Ma Quái: Chương 2",
           imageP: "https://images.msky.vn/images/hbo/films/023714A1-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/023714A1-landscape.jpg",
           genre: "Kinh Dị",
           urlStr: "https://www.youtube.com/watch?v=BSkTj-R_vJk"),
    Movies(name: "Ngôi Sao Mới Rạng",
           imageP: "https://images.msky.vn/images/hbo/films/022895L2-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/022895L2-landscape.jpg",
           genre: "Kinh Dị",
           urlStr: "https://www.youtube.com/watch?v=YLzxmoeuKzE")
    
]
