//
//  SearchScope.swift
//  iTunesSearch
//
//  Created by Juliana Nielson on 6/16/23.
//

import UIKit

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

extension SearchScope {
    var orthogonalScrollingBehavior: UICollectionLayoutSectionOrthogonalScrollingBehavior {
        switch self {
        case .all:
            return .continuousGroupLeadingBoundary
        default:
            return .none
        }
    }

    var groupItemCount: Int {
        switch self {
        case .all:
            return 1
        default:
            return 3
        }
    }

    var groupWidthDimension: NSCollectionLayoutDimension {
        switch self {
        case .all:
            return .fractionalWidth(1/3)
        default:
            return .fractionalWidth(1.0)
        }
    }
}
