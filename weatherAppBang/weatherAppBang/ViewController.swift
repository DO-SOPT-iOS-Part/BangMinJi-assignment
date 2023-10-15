//
//  ViewController.swift
//  weatherAppBang
//
//  Created by 방민지 on 2023/10/16.
//

import UIKit

class ViewController: UIViewController {
    
    private let nameLabel1: UILabel = {
        let label = UILabel()
        label.text = "이름이 무엇인가요!?"
        label.font = .sfPro(size: 16, weight: .bold)
        label.textColor = .blue
        label.textAlignment = .center
        return label
    }()
    
    private let nameLabel2: UILabel = {
        let label = UILabel()
        label.text = "이름이 무엇인가요!?"
        label.font = .sfPro(size: 16, weight: .regular)
        label.textColor = .blue
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setStyle()
        setLayout()
    }
}

private extension ViewController {
    
    func setStyle() {
        
        view.backgroundColor = .white
    }
    
    func setLayout() {
        
        [nameLabel1, nameLabel2].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        NSLayoutConstraint.activate([nameLabel1.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
                                     nameLabel1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                                     nameLabel1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)])
        
        NSLayoutConstraint.activate([nameLabel2.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
                                     nameLabel2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                                     nameLabel2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)])
    }
}
extension UIFont {
    static func sfPro(size fontSize: CGFloat, weight: UIFont.Weight) -> UIFont {
        for family in UIFont.familyNames {
          print(family)

          for sub in UIFont.fontNames(forFamilyName: family) {
            print("====> \(sub)")
          }
        }
        
        let familyName = "SFProText"
        
        var weightString: String
        switch weight {
        case .bold:
            weightString = "Bold"
        case .medium:
            weightString = "Medium"
        case .regular:
            weightString = "Regular"
        default:
            weightString = "Medium"
        }
        
        return UIFont(name: "\(familyName)-\(weightString)", size: fontSize)!
    }
}

