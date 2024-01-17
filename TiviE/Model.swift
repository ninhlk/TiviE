//
//  Model.swift
//  TiviE
//
//  Created by Ninh Lê on 16/01/2024.
//

import Foundation

let genre: [String] = [ "Hành Động" , "Mạo Hiểm", "Khoa Giáo", "Giải Trí", "Khám Phá Thế Giới", "Văn Hoá", "Gia Đình" ]

struct Movies {
    var name, imageP, imageL, genre, url: String
}
var arrayMovies: [Movies] = [
    Movies(name: "Anh Em Mario Siêu Phàm",
           imageP: "https://images.msky.vn/images/hbo/films/041229H0-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/041229H0-landscape.jpg",
           genre: "Giải Trí",
           url: "https://www.youtube.com/watch?v=q5-6LtaAazo"),
    Movies(name: "Giới Siêu Giàu Châu Á",
           imageP: "https://images.msky.vn/images/hbo/films/022759L1-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/022759L1-landscape.jpg",
           genre: "Gia Đình",
           url: "https://www.youtube.com/watch?v=DbXDAXsOZ9o"),
    Movies(name: "Shazam",
           imageP: "https://images.msky.vn/images/hbo/films/040442H1-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/040442H1-landscape.jpg",
           genre: "Hành Động",
           url: "https://www.youtube.com/watch?v=o7WMCPs05-A"),
    Movies(name: "Cá Mập Cổ Đại",
           imageP: "https://images.msky.vn/images/hbo/films/022781L1-portrait.jpg",
           imageL: "https://images.msky.vn/images/hbo/films/022781L1-landscape.jpg",
           genre: "Mạo Hiểm",
           url: "https://www.youtube.com/watch?v=pAK70RwbEQ4")
]
