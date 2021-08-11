//
//  PlaceholderTextView.swift
//  PlaceholderTextView
//
//  Created by Uday Bhateja on 09/08/21.
//

import UIKit

// MARK: - PlaceholderTextView
public class UDPlaceholderTextView: UITextView {
    
    // MARK: IBInspectable
    @IBInspectable public var placeholder: String = "" {
        didSet {
            placeholderLabel.text = placeholder
        }
    }
    
    @IBInspectable public var placeholderColor: UIColor = .gray {
        didSet {
            placeholderLabel.textColor = placeholderColor
        }
    }
    
    
    private var placeholderLabel    : UILabel = UILabel()
    private let kPadding            : CGFloat = 5.0
    private let kPaddingTop         : CGFloat = 8.0
    
    // MARK: init
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    public override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        commonInit()
    }
    
    private func commonInit() {
        setupFrame()
        setupProperties()
    }
    
    private func setupFrame() {
        addSubview(placeholderLabel)
        
        placeholderLabel.translatesAutoresizingMaskIntoConstraints = false
        placeholderLabel.topAnchor.constraint(equalTo: topAnchor, constant: kPaddingTop).isActive = true
        placeholderLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: kPadding).isActive = true
        placeholderLabel.bottomAnchor.constraint(greaterThanOrEqualTo: bottomAnchor, constant: kPaddingTop).isActive = true
        
        let width = bounds.size.width - (kPadding * 2.0)
        placeholderLabel.widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    private func setupProperties() {
        placeholderLabel.font           = self.font
        placeholderLabel.text           = placeholder
        placeholderLabel.textColor      = placeholderColor
        placeholderLabel.numberOfLines  = 0
        placeholderLabel.lineBreakMode  = .byWordWrapping
    }
    
    // MARK: Responder
    public override func becomeFirstResponder() -> Bool {
        placeholderLabel.isHidden = true
        return super.becomeFirstResponder()
    }
    
    public override func resignFirstResponder() -> Bool {
        placeholderLabel.isHidden = text.count > 0
        return super.resignFirstResponder()
    }
}
