//
//  OnboardingCollectionViewCell.swift
//  MyGames
//
//  Created by Luiz Gomes on 18/07/20.
//  Copyright © 2020 Douglas Frari. All rights reserved.
//

import UIKit

struct OnboardingCollectionViewCellModel {
    let mainText: String
    let imageName: String
}

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureContainerView()
    }

    func configure(model: OnboardingCollectionViewCellModel) {
        mainLabel.text = model.mainText
        imageView.image = UIImage(named: model.imageName)
    }
    
}

private extension OnboardingCollectionViewCell {

    func configureContainerView() {
        containerView.layer.cornerRadius = 16
    }
}
