

import UIKit

final class RMCharacterInfoCollectionViewCellViewModel {
    private let type: `Type`
    private let value: String
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        formatter.timeZone = .current
        return formatter
    }()
    
    static let shortDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        formatter.timeZone = .current
        return formatter
    }()
    
    public var title: String {
        type.displayTitle
    }
    
    public var displayValue: String {
        if value.isEmpty { return "None" }
//        "2022-12-25T16:35:06+0000"
        if let date = Self.dateFormatter.date(from: value), type == .created {
            return Self.shortDateFormatter.string(from: date)
        }
        return value
    }
    
    public var iconImage: UIImage? {
        return type.iconImage
    }
    
    public var tintColor: UIColor {
        return type.tintColor
    }
    
    enum `Type`: String {
        case status
        case gender
        case type
        case species
        case origin
        case location
        case created
        case episodeCount
        
        var tintColor: UIColor {
            switch self {
            case .status:
                return .systemRed
            case .gender:
                return .systemBlue
            case .type:
                return .systemMint
            case .species:
                return .systemPink
            case .origin:
                return .systemIndigo
            case .location:
                return .systemPurple
            case .created:
                return .systemYellow
            case .episodeCount:
                return .systemBrown
            }
        }
        
        var iconImage: UIImage? {
            switch self {
            case .status:
                return UIImage(systemName: "bell")
            case .gender:
                return UIImage(systemName: "bell")
            case .type:
                return UIImage(systemName: "bell")
            case .species:
                return UIImage(systemName: "bell")
            case .origin:
                return UIImage(systemName: "bell")
            case .location:
                return UIImage(systemName: "bell")
            case .created:
                return UIImage(systemName: "bell")
            case .episodeCount:
                return UIImage(systemName: "bell")
            }
        }
        
        var displayTitle: String {
            switch self {
            case .status, .gender, .type, .species, .origin, .location, .created:
                return rawValue.uppercased()
            case .episodeCount:
                return "EPISODE COUNT"
            }
        }
    }
    
    init(type: `Type`, value: String) {
        self.value = value
        self.type = type
    }
}
