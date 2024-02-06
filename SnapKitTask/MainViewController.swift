//
//  MainViewController.swift
//  SnapKitTask
//
//  Created by Emirhan İpek on 6.02.2024.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    // MARK: - UI Elements
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "FutureTech"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Date: \(getCurrentDate())"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let deviceContainer1: UIView = {
        let view = UIView()
        view.backgroundColor = .systemMint
        return view
    }()
    
    private let deviceContainer2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemMint
        return view
    }()
    
    private let deviceIcon1: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "device1"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let deviceIcon2: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "device2"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let deviceStatusLabel1: UILabel = {
        let label = UILabel()
        label.text = "Connected"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    private let deviceStatusLabel2: UILabel = {
        let label = UILabel()
        label.text = "Disconnected"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    private let controlButton1: UIButton = {
        let button = UIButton()
        button.setTitle("Turn On", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private let controlButton2: UIButton = {
        let button = UIButton()
        button.setTitle("Turn Off", for: .normal)
        button.backgroundColor = .systemRed
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - UI Setup
    
    private func setupUI() {
        view.backgroundColor = .systemMint
        
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(deviceContainer1)
        deviceContainer1.snp.makeConstraints { make in
            make.top.equalTo(dateLabel.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(120)
        }
        
        deviceContainer1.addSubview(deviceIcon1)
        deviceIcon1.snp.makeConstraints { make in
            make.leading.top.equalToSuperview().inset(20)
            make.width.height.equalTo(80)
        }
        
        deviceContainer1.addSubview(deviceStatusLabel1)
        deviceStatusLabel1.snp.makeConstraints { make in
            make.top.equalTo(deviceIcon1.snp.bottom).offset(8)
            make.centerX.equalTo(deviceIcon1)
        }
        
        deviceContainer1.addSubview(controlButton1)
        controlButton1.snp.makeConstraints { make in
            make.top.equalTo(deviceStatusLabel1.snp.bottom).offset(8)
            make.centerX.equalTo(deviceIcon1)
            make.width.equalTo(100)
        }
        
        view.addSubview(deviceContainer2)
        deviceContainer2.snp.makeConstraints { make in
            make.top.equalTo(deviceContainer1.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(120)
        }
        
        deviceContainer2.addSubview(deviceIcon2)
        deviceIcon2.snp.makeConstraints { make in
            make.leading.top.equalToSuperview().inset(20)
            make.width.height.equalTo(80)
        }
        
        deviceContainer2.addSubview(deviceStatusLabel2)
        deviceStatusLabel2.snp.makeConstraints { make in
            make.top.equalTo(deviceIcon2.snp.bottom).offset(8)
            make.centerX.equalTo(deviceIcon2)
        }
        
        deviceContainer2.addSubview(controlButton2)
        controlButton2.snp.makeConstraints { make in
            make.top.equalTo(deviceStatusLabel2.snp.bottom).offset(8)
            make.centerX.equalTo(deviceIcon2)
            make.width.equalTo(100)
        }
    }
    
    // MARK: - Helper Functions
    
    private static func getCurrentDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, 2050"
        return formatter.string(from: Date())
    }
}


#Preview(body: {
    MainViewController()
})
