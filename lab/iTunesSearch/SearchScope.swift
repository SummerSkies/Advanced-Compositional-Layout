//
//  SearchScope.swift
//  iTunesSearch
//
//  Created by Juliana Nielson on 6/16/23.
//

import Foundation

enum SearchScope: CaseIterable {
    case all, movies, music, apps, books

    var title: String {
        switch self {
        case .all: return "All"
        case .movies: return "Movies"
        case .music: return "Music"
        case .apps: return "Apps"
        case .books: return "Books"
        }
    }

    var mediaType: String {
        switch self {
        case .all: return "all"
        case .movies: return "movie"
        case .music: return "music"
        case .apps: return "software"
        case .books: return "ebook"
        }
    }
}
