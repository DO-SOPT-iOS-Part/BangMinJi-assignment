//
//  SecondViewController.swift
//  weatherAppBang
//
//  Created by 방민지 on 2023/10/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    //    private let scrollView = UIScrollView()
    //    private var contentView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
        setLayout()
    }
}

private extension SecondViewController {
    func setStyle(){
        
    }
    
    func setLayout() {
        self.view.addSubview(background)
        self.view.addSubview(titleLabel2)
        self.view.addSubview(stackView3)
        self.view.addSubview(weatherbox)
        self.view.addSubview(bottomBar)
        weatherbox.addSubview(stateLabel)
        weatherbox.addSubview(line)
        weatherbox.addSubview(timeTable)
        weatherbox.addSubview(weatherTable)
        weatherbox.addSubview(tempTable)
        
        titleLabel2.translatesAutoresizingMaskIntoConstraints = false
        stackView3.translatesAutoresizingMaskIntoConstraints = false
        weatherbox.translatesAutoresizingMaskIntoConstraints = false
        bottomBar.translatesAutoresizingMaskIntoConstraints = false
        line.translatesAutoresizingMaskIntoConstraints = false
        timeTable.translatesAutoresizingMaskIntoConstraints = false
        weatherTable.translatesAutoresizingMaskIntoConstraints = false
        tempTable.translatesAutoresizingMaskIntoConstraints = false
        stackView3.addArrangeSubViews(titleLabel2, temLabel, weatherLabel, highlowLabel)
        timeTable.addArrangeSubViews(time1, time2, time3, time4, time5)
        weatherTable.addArrangeSubViews(image1, image2, image3, image4, image5)
        tempTable.addArrangeSubViews(temp1, temp2, temp3, temp4, temp5)
        bottomBar.addArrangeSubViews(map, myLocation, dot, list)
        
        NSLayoutConstraint.activate([
            background.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0), background.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0), background.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0), background.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel2.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 121),
            titleLabel2.trailingAnchor.constraint(equalTo: background.trailingAnchor, constant: -121),
            titleLabel2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 78)
        ])
        
        NSLayoutConstraint.activate([
            stackView3.topAnchor.constraint(equalTo: background.topAnchor, constant: 78),
            stackView3.bottomAnchor.constraint(equalTo: background.bottomAnchor, constant: -522)
        ])
        
        NSLayoutConstraint.activate([
            weatherbox.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 20),
            weatherbox.trailingAnchor.constraint(equalTo: background.trailingAnchor, constant: -20),
            weatherbox.topAnchor.constraint(equalTo: stackView3.bottomAnchor, constant: 44)
        ])
        
        NSLayoutConstraint.activate([
            stateLabel.leadingAnchor.constraint(equalTo: weatherbox.leadingAnchor, constant: 15),
            stateLabel.trailingAnchor.constraint(equalTo: weatherbox.trailingAnchor, constant: -15),
            stateLabel.topAnchor.constraint(equalTo: weatherbox.topAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            line.leadingAnchor.constraint(equalTo: weatherbox.leadingAnchor, constant: 1),
            line.trailingAnchor.constraint(equalTo: weatherbox.trailingAnchor, constant: -1),
            line.topAnchor.constraint(equalTo: weatherbox.topAnchor, constant: 66),
            line.bottomAnchor.constraint(equalTo: weatherbox.bottomAnchor, constant: -146)
        ])
        
        NSLayoutConstraint.activate([
            timeTable.leadingAnchor.constraint(equalTo: weatherbox.leadingAnchor, constant: 22),
            timeTable.trailingAnchor.constraint(equalTo: weatherbox.trailingAnchor, constant: -22),
            timeTable.topAnchor.constraint(equalTo: line.topAnchor, constant: 14),
            timeTable.bottomAnchor.constraint(equalTo: weatherbox.bottomAnchor, constant: -110)
        ])
        
        NSLayoutConstraint.activate([
            weatherTable.leadingAnchor.constraint(equalTo: weatherbox.leadingAnchor, constant: 12),
            weatherTable.trailingAnchor.constraint(equalTo: weatherbox.trailingAnchor, constant: -12),
            //weatherTable.topAnchor.constraint(equalTo: timeTable.topAnchor, constant: 14),
            weatherTable.bottomAnchor.constraint(equalTo: weatherbox.bottomAnchor, constant: -52)
        ])
        
        NSLayoutConstraint.activate([
            tempTable.leadingAnchor.constraint(equalTo: weatherbox.leadingAnchor, constant: 21),
            tempTable.trailingAnchor.constraint(equalTo: weatherbox.trailingAnchor, constant: -21),
            //weatherTable.topAnchor.constraint(equalTo: timeTable.topAnchor, constant: 14),
            tempTable.bottomAnchor.constraint(equalTo: weatherbox.bottomAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            bottomBar.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 0),
            bottomBar.trailingAnchor.constraint(equalTo: background.trailingAnchor, constant: 0),
            bottomBar.topAnchor.constraint(equalTo: background.topAnchor, constant: 730),
            bottomBar.bottomAnchor.constraint(equalTo: background.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            map.leadingAnchor.constraint(equalTo: bottomBar.leadingAnchor, constant: 10 ),
            map.trailingAnchor.constraint(equalTo: bottomBar.trailingAnchor, constant: -321),
            map.topAnchor.constraint(equalTo: bottomBar.topAnchor, constant: 4),
            map.bottomAnchor.constraint(equalTo: background.bottomAnchor, constant: -34)
        ])
        
        NSLayoutConstraint.activate([
            myLocation.leadingAnchor.constraint(equalTo: bottomBar.leadingAnchor, constant: 161),
            myLocation.trailingAnchor.constraint(equalTo: bottomBar.trailingAnchor, constant: -190),
            myLocation.topAnchor.constraint(equalTo: bottomBar.topAnchor, constant: 14),
            myLocation.bottomAnchor.constraint(equalTo: background.bottomAnchor, constant: -44)
        ])
        
        NSLayoutConstraint.activate([
            dot.leadingAnchor.constraint(equalTo: bottomBar.leadingAnchor, constant: 189),
            dot.trailingAnchor.constraint(equalTo: bottomBar.trailingAnchor, constant: -162),
            dot.topAnchor.constraint(equalTo: bottomBar.topAnchor, constant: 14),
            dot.bottomAnchor.constraint(equalTo: bottomBar.bottomAnchor, constant: -44)
        ])
        
        NSLayoutConstraint.activate([
            list.leadingAnchor.constraint(equalTo: bottomBar.leadingAnchor, constant: 322),
            list.trailingAnchor.constraint(equalTo: bottomBar.trailingAnchor, constant: -9),
            list.topAnchor.constraint(equalTo: bottomBar.topAnchor, constant: 4),
            list.bottomAnchor.constraint(equalTo: bottomBar.bottomAnchor, constant: -34)
        ])
    }
}

private var background: UIImageView = {
    let backImage = UIImageView()
    backImage.frame = UIScreen.main.bounds
    backImage.contentMode = .scaleAspectFill
    backImage.image = UIImage(named: "background")
    return backImage
}()

private var stackView3: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.distribution = .fill
    stackView.layoutMargins = UIEdgeInsets(top: 0, left: 111, bottom: 0, right: 111)
    stackView.spacing = 4
    return stackView
}()

private var timeTable: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .horizontal
    stackView.distribution = .equalSpacing
    stackView.spacing = 32
    return stackView
}()

private var weatherTable: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .horizontal
    stackView.distribution = .equalSpacing
    stackView.spacing = 22
    return stackView
}()

private var tempTable: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .horizontal
    stackView.distribution = .equalSpacing
    stackView.spacing = 32
    return stackView
}()



private var time1: UILabel = {
    let label = UILabel()
    label.text = "Now"
    label.textColor = .white
    label.font = .sfPro(size: 17, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var time2: UILabel = {
    let label = UILabel()
    label.text = "10시"
    label.textColor = .white
    label.font = .sfPro(size: 17, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var time3: UILabel = {
    let label = UILabel()
    label.text = "11시"
    label.textColor = .white
    label.font = .sfPro(size: 17, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var time4: UILabel = {
    let label = UILabel()
    label.text = "12시"
    label.textColor = .white
    label.font = .sfPro(size: 17, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var time5: UILabel = {
    let label = UILabel()
    label.text = "1시"
    label.textColor = .white
    label.font = .sfPro(size: 17, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var image1: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "nightCloud")
    return image
}()

private var image2: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "rainy")
    return image
}()

private var image3: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "heavyRain")
    return image
}()

private var image4: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "thunder")
    return image
}()

private var image5: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "foxRain")
    return image
}()

private var temp1: UILabel = {
    let label = UILabel()
    label.text = "21°"
    label.textColor = .white
    label.font = .sfPro(size: 22, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var temp2: UILabel = {
    let label = UILabel()
    label.text = "21°"
    label.textColor = .white
    label.font = .sfPro(size: 22, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var temp3: UILabel = {
    let label = UILabel()
    label.text = "19°"
    label.textColor = .white
    label.font = .sfPro(size: 22, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var temp4: UILabel = {
    let label = UILabel()
    label.text = "19°"
    label.textColor = .white
    label.font = .sfPro(size: 22, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

private var temp5: UILabel = {
    let label = UILabel()
    label.text = "19°"
    label.textColor = .white
    label.font = .sfPro(size: 22, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()


private var weatherbox: UIStackView = {
    let view = UIStackView()
    view.axis = .vertical
    view.layer.backgroundColor = UIColor.clear.cgColor
    view.layer.cornerRadius = 15
    view.layer.borderWidth = 0.5
    view.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.25).cgColor
    return view
}()

private var bottomBar: UIStackView = {
    let view = UIStackView()
    view.axis = .horizontal
    view.layer.backgroundColor = UIColor.clear.cgColor
    view.layer.borderWidth = 0.5
    view.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.25).cgColor
    return view
}()


private var titleLabel2: UILabel = {
    let label = UILabel()
    label.text = "의정부시"
    label.textColor = .white
    label.textAlignment = .center
    label.font = .sfPro(size: 36, weight: .regular )
    label.translatesAutoresizingMaskIntoConstraints = false
    label.adjustsFontSizeToFitWidth = true
    return label
}()

private var temLabel: UILabel = {
    let label = UILabel()
    label.text = "21°"
    label.textColor = .white
    label.textAlignment = .center
    label.font = .sfPro(size: 102, weight: .thin )
    label.translatesAutoresizingMaskIntoConstraints = false
    label.adjustsFontSizeToFitWidth = true
   return label
}()

private var weatherLabel: UILabel = {
    let label = UILabel()
    label.text = "흐림"
    label.textColor = .white
    label.textAlignment = .center
    label.font = .sfPro(size: 24, weight: .regular )
    label.translatesAutoresizingMaskIntoConstraints = false
    label.adjustsFontSizeToFitWidth = true
   return label
}()

private var highlowLabel: UILabel = {
    let label = UILabel()
    label.text = "최고:29° 최저:15°"
    label.textColor = .white
    label.textAlignment = .center
    label.font = .sfPro(size: 20, weight: .medium )
    label.translatesAutoresizingMaskIntoConstraints = false
    label.adjustsFontSizeToFitWidth = true
   return label
}()

private var stateLabel: UILabel = {
    let label = UILabel()
    label.text = "08:00~09:00에 강우 상태가, 18:00에 한때 흐린 상태가 예상됩니다."
    label.widthAnchor.constraint(equalToConstant: 305).isActive = true
    label.textColor = .white
    label.font = .sfPro(size: 18, weight: .regular)
    label.numberOfLines = 0
    label.translatesAutoresizingMaskIntoConstraints = false
    label.adjustsFontSizeToFitWidth = true
   return label
}()

private var line: UIView = {
   let line = UIView()
    line.alpha = 0.2
    line.backgroundColor = UIColor.white
    line.heightAnchor.constraint(equalToConstant: 1).isActive = true
    return line
}()

private var map: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "map")
    image.translatesAutoresizingMaskIntoConstraints = false
    image.contentMode = .scaleAspectFit
    return image
}()

private var myLocation: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "myLocation")
    image.translatesAutoresizingMaskIntoConstraints = false
    image.contentMode = .scaleAspectFit
    return image
}()

private var dot: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "dot")
    image.translatesAutoresizingMaskIntoConstraints = false
    image.contentMode = .scaleAspectFit
    return image
}()

private var list: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "list")
    image.translatesAutoresizingMaskIntoConstraints = false
    image.contentMode = .scaleAspectFit
    return image
}()

