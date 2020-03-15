//
//  ViewController.swift
//  testePage view
//
//  Created by Lucídio Andrade Barbosa de Souza on 11/11/19.
//  Copyright © 2019 Lucídio Andrade Barbosa de Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var i = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

//        let btn = UIButton()
//        btn.translatesAutoresizingMaskIntoConstraints = false
//
        let picker = UIPickerView()
        picker.translatesAutoresizingMaskIntoConstraints = false
        picker.dataSource = self
        picker.delegate = self
        view.addSubview(picker)
        
        picker.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        picker.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        picker.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true



//        btn.widthAnchor.constraint(equalToConstant: 128).isActive = true
//        btn.heightAnchor.constraint(equalToConstant: 128).isActive = true
//        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        btn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

//        btn.setTitle("Tap here!", for: .normal)
//        btn.setTitleColor(UIColor.red, for: .normal)
//        btn.addTarget(self, action: #selector(tapped), for: .touchUpInside)

        //view.addSubview(btn)
    }
    
    


//    @objc func tapped() {
//        i += 1
//        print("Running \(i)")
//
//        switch i {
//        case 1:
//            let generator = UINotificationFeedbackGenerator()
//            generator.notificationOccurred(.error)
//
//        case 2:
//            let generator = UINotificationFeedbackGenerator()
//            generator.notificationOccurred(.success)
//
//        case 3:
//            let generator = UINotificationFeedbackGenerator()
//            generator.notificationOccurred(.warning)
//
//        case 4:
//            let generator = UIImpactFeedbackGenerator(style: .light)
//            generator.impactOccurred()
//
//        case 5:
//            let generator = UIImpactFeedbackGenerator(style: .medium)
//            generator.impactOccurred()
//
//        case 6:
//            let generator = UIImpactFeedbackGenerator(style: .heavy)
//            generator.impactOccurred()
//
//        default:
//            let generator = UISelectionFeedbackGenerator()
//            generator.selectionChanged()
//            i = 0
//        }
//    }
}


extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return 10
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
            return "\(row+1)"
       
    }
    
}
