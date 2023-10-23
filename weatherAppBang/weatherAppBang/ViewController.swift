//
//  ViewController.swift
//  weatherAppBang
//
//  Created by 방민지 on 2023/10/16.
//

import UIKit

class ViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    private var contentView = UIView()
    override func viewDidLoad() {
        setStyle()
        setLayout()
    }
}

private extension ViewController {
    
    func setStyle() {
       // view.backgroundColor = .black
    }
    
//    private func setLayout() {
//            self.view.addSubview(stackView)
//            stackView.translatesAutoresizingMaskIntoConstraints = false
//
//            NSLayoutConstraint.activate([stackView.topAnchor.constraint(equalTo: view.topAnchor),
//                                         stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//                                         stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//                                         stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)])
//
//            [redView, blueView].forEach {
//                $0.translatesAutoresizingMaskIntoConstraints = false
//                stackView.addArrangedSubview($0)
//            }
//
//        }
    
    func setLayout() {
        
        self.view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(settingButton)
        settingButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(backgroundSmall)
        backgroundSmall.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(search)
        search.translatesAutoresizingMaskIntoConstraints = false
        backgroundSmall.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        backgroundSmall.addSubview(label2)
        label2.translatesAutoresizingMaskIntoConstraints = false
        backgroundSmall.addSubview(label3)
        label3.translatesAutoresizingMaskIntoConstraints = false
        backgroundSmall.addSubview(label4)
        label4.translatesAutoresizingMaskIntoConstraints = false
        backgroundSmall.addSubview(label5)
        label5.translatesAutoresizingMaskIntoConstraints = false
        backgroundSmall.addSubview(label6)
        label6.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                                     scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                     scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)])
        
        NSLayoutConstraint.activate([contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
                                     contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
                                     contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
                                     contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
                                     contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)])
        
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
                let contentViewHeight = contentView.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor)
                contentViewHeight.priority = .defaultLow
                contentViewHeight.isActive = true
        
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 97),
        ])
        
        NSLayoutConstraint.activate([
            settingButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            settingButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 52),
        ])
        
        NSLayoutConstraint.activate([
            search.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            search.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            search.topAnchor.constraint(equalTo: view.topAnchor, constant: 149)        ])
        
        NSLayoutConstraint.activate([
            backgroundSmall.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            backgroundSmall.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            backgroundSmall.topAnchor.constraint(equalTo: view.topAnchor, constant: 204)
                ])
        NSLayoutConstraint.activate([
            label1.leadingAnchor.constraint(equalTo: backgroundSmall.leadingAnchor, constant: 16),
            label1.trailingAnchor.constraint(equalTo: backgroundSmall.trailingAnchor, constant: -225),
            label1.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 10)
                ])
        NSLayoutConstraint.activate([
            label2.leadingAnchor.constraint(equalTo: backgroundSmall.leadingAnchor, constant: 16),
            label2.trailingAnchor.constraint(equalTo: backgroundSmall.trailingAnchor, constant: -225),
            label2.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 44)
                ])
        NSLayoutConstraint.activate([
//            label3.leadingAnchor.constraint(equalTo: backgroundSmall.leadingAnchor, constant: 249),
            label3.trailingAnchor.constraint(equalTo: backgroundSmall.trailingAnchor, constant: -16),
            label3.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 4)
                ])
        NSLayoutConstraint.activate([
            label4.leadingAnchor.constraint(equalTo: backgroundSmall.leadingAnchor, constant: 16),
            label4.trailingAnchor.constraint(equalTo: backgroundSmall.trailingAnchor, constant: -289),
            label4.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 87)
                ])
        NSLayoutConstraint.activate([
//            label5.leadingAnchor.constraint(equalTo: backgroundSmall.leadingAnchor, constant: 196),
            label5.trailingAnchor.constraint(equalTo: backgroundSmall.trailingAnchor, constant: -79),
            label5.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 87)
                ])
        NSLayoutConstraint.activate([
//            label6.leadingAnchor.constraint(equalTo: backgroundSmall.leadingAnchor, constant: 262),
            label6.trailingAnchor.constraint(equalTo: backgroundSmall.trailingAnchor, constant: -16),
            label6.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 87)
                ])
        
    }
}

//private var stackView1: UIStackView = {
//        let stackView = UIStackView()
//        stackView.axis = .vertical
//        stackView.distribution = .fillEqually
//        stackView.spacing = 0
//        return stackView
//    }()
//
//private var stackView2: UIStackView = {
//        let stackView = UIStackView()
//        stackView.axis = .vertical
//        stackView.distribution = .fillEqually
//        stackView.spacing = 0
//        return stackView
//    }()


private var settingButton: UIImageView = {
    let setting = UIImageView()
    setting.image = UIImage(named: "setting")
    return setting
}()

private var backgroundSmall: UIImageView = {
    let backgroundImage = UIImageView()
    backgroundImage.image = UIImage(named: "backgroundSmall")
    return backgroundImage
}()

private var titleLabel: UILabel = {
    let label = UILabel()
    label.text = "날씨"
    label.textColor = .white
    label.font = .sfPro(size: 36, weight: .bold )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var search: UISearchBar = {
    let search = UISearchBar()
    search.barTintColor = UIColor.clear
    search.setImage(UIImage(named: "finder"), for: .search, state: .normal)
    search.placeholder = "도시 또는 공항 검색"
    search.layer.cornerRadius = 10
    search.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1).cgColor
    if let textfield = search.value(forKey: "searchField") as? UITextField {
        textfield.attributedPlaceholder = NSAttributedString(string: textfield.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        //textfield.textColor = UIColor.black
        if let placeholderLabel = textfield.value(forKey: "placeholderLabel") as? UILabel {
            placeholderLabel.font = .sfPro(size: 19, weight: .regular)
        }
    }
    return search
}()

private var label1: UILabel = {
    let label = UILabel()
    label.text = "나의 위치"
    label.textColor = .white
    label.font = .sfPro(size: 24, weight: .bold )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var label2: UILabel = {
    let label = UILabel()
    label.text = "의정부시"
    label.textColor = .white
    label.font = .sfPro(size: 17, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var label3: UILabel = {
    let label = UILabel()
    label.text = "21°"
    label.textColor = .white
    label.font = .sfPro(size: 52, weight: .thin )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var label4: UILabel = {
    let label = UILabel()
    label.text = "흐림"
    label.textColor = .white
    label.font = .sfPro(size: 16, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var label5: UILabel = {
    let label = UILabel()
    label.text = "최고:29°"
    label.textColor = .white
    label.font = .sfPro(size: 15, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var label6: UILabel = {
    let label = UILabel()
    label.text = "최저:15°"
    label.textColor = .white
    label.font = .sfPro(size: 15, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()
