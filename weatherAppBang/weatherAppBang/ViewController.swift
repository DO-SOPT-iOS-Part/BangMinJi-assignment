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
        self.navigationController?.navigationBar.isHidden = true;
        setLayout()
        backgroundSmall.addTarget(self, action: #selector(handleBackgroundTap), for: .touchUpInside)
    }
    @objc func handleBackgroundTap() {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}

private extension ViewController {
    func setLayout() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubViews(titleLabel, settingButton, search, backgroundSmall)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        settingButton.translatesAutoresizingMaskIntoConstraints = false
        backgroundSmall.translatesAutoresizingMaskIntoConstraints = false
        search.translatesAutoresizingMaskIntoConstraints = false
        backgroundSmall.addSubViews(label1, label2, label3, label4, label5, label6)

        label1.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false
        label3.translatesAutoresizingMaskIntoConstraints = false
        label4.translatesAutoresizingMaskIntoConstraints = false
        label5.translatesAutoresizingMaskIntoConstraints = false
        label6.translatesAutoresizingMaskIntoConstraints = false
       
        NSLayoutConstraint.activate([scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
                                     scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                     scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)])
        
        NSLayoutConstraint.activate([contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
                                     contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
                                     contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
                                     contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor)])
        
        contentView.heightAnchor.constraint(equalToConstant: 1000).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        let contentViewHeight = contentView.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor)
        contentViewHeight.priority = .defaultHigh
        contentViewHeight.isActive = true
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            titleLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 53),
        ])
        
        NSLayoutConstraint.activate([
            settingButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10),
            settingButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 8),
        ])
        
        NSLayoutConstraint.activate([
            search.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            search.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            search.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 105)        ])
        
        NSLayoutConstraint.activate([
            backgroundSmall.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            backgroundSmall.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            backgroundSmall.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 160)
                ])
        
        NSLayoutConstraint.activate([
            label1.leadingAnchor.constraint(equalTo: backgroundSmall.leadingAnchor, constant: 24),
            label1.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 10)
                ])
        NSLayoutConstraint.activate([
            label2.leadingAnchor.constraint(equalTo: backgroundSmall.leadingAnchor, constant: 24),
            label2.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 44)
                ])
        NSLayoutConstraint.activate([
            label3.trailingAnchor.constraint(equalTo: backgroundSmall.trailingAnchor, constant: -24),
            label3.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 4)
                ])
        NSLayoutConstraint.activate([
            label4.leadingAnchor.constraint(equalTo: backgroundSmall.leadingAnchor, constant: 24),
            label4.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 87)
                ])
        NSLayoutConstraint.activate([
            label5.trailingAnchor.constraint(equalTo: label6.leadingAnchor, constant: -6),
            label5.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 87)
                ])
        NSLayoutConstraint.activate([
            label6.trailingAnchor.constraint(equalTo: backgroundSmall.trailingAnchor, constant: -24),
            label6.topAnchor.constraint(equalTo: backgroundSmall.topAnchor, constant: 87)
                ])
    }
}

private var settingButton: UIImageView = {
    let setting = UIImageView()
    setting.image = UIImage(named: "setting")
    return setting
}()

private  var backgroundSmall: UIButton = {
    let backgroundButton = UIButton()
    backgroundButton.setImage(UIImage(named: "backgroundSmall"), for: .normal)
    backgroundButton.isUserInteractionEnabled = true
    return backgroundButton
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
