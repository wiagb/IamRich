//
//  ViewController.swift
//  I am Rich
//
//  Created by ddd on 25.07.2021.
//

import UIKit



class ViewController: UIViewController {

    let labelTitle: UILabel = {
        let labelTitle = UILabel()
        labelTitle.text = "I Am Rich"
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        labelTitle.font = UIFont(name: "Menlo", size: 40)
        labelTitle.textColor = .blue
        labelTitle.backgroundColor = .white
        return labelTitle
    }()
    
    let imgViewDiamond:UIImageView = {
        let imgViewDiamond = UIImageView(image: UIImage(named: "diamond"))
        imgViewDiamond.translatesAutoresizingMaskIntoConstraints = false
        imgViewDiamond.contentMode = .scaleAspectFit
        return imgViewDiamond
    }()
    
   lazy var stackMain:UIStackView = {
        let stackMain = UIStackView()
        stackMain.translatesAutoresizingMaskIntoConstraints = false
        stackMain.axis = .vertical
        stackMain.alignment = .center
        stackMain.spacing = 20
        stackMain.distribution = .fillEqually
        stackMain.addArrangedSubview(labelTitle)
        stackMain.addArrangedSubview(imgViewDiamond)
        return stackMain
    }()
    

    func addConstraint() {
        
        //stack constraint
        NSLayoutConstraint.activate([
            stackMain.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackMain.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackMain.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackMain.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(stackMain)
        addConstraint()

    }


}

