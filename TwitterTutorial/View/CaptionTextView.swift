//
//  CaptionTextView.swift
//  TwitterTutorial
//
//  Created by 정채원 on 2020/12/17.
//

import UIKit

class CaptionTextView: UITextView {
    
    // MARK: - Properties

    let placeholerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .darkGray
        label.text = "What's happening?"
        return label
    }()

    // MARK: - Lifecycle
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        backgroundColor = .white
        font = UIFont.systemFont(ofSize: 16)
        isScrollEnabled = false
        heightAnchor.constraint(equalToConstant: 200).isActive = true

        addSubview(placeholerLabel)
        placeholerLabel.anchor(top: topAnchor, left: leftAnchor,
                               paddingTop: 8, paddingLeft: 4)
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleTextInputChange),
                                               name: UITextView.textDidChangeNotification, object: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Selectors
    
    @objc func handleTextInputChange() {
        placeholerLabel.isHidden = !text.isEmpty
    }
    
}
