import UIKit

public final class Block: UIView {
    
    private let title: UILabel
    private let subtitle: UILabel
    private let button: UIButton
    private let icon: UIImageView
    
    public func setHeader(_ header: String?) {
        title.text = header
        title.isHidden = header?.isEmpty ?? true
    }
    
    public func setSubheader(_ subheader: String?) {
        subtitle.text = subheader
        subtitle.isHidden = subheader?.isEmpty ?? true
    }
    
    public func setButtonTitle(_ buttonTitle: String?) {
        button.setTitle(buttonTitle, for: .normal)
        button.isHidden = buttonTitle?.isEmpty ?? true
    }
    
    public init(style: BlockStyle = Theme.BlockStyles.default) {
        title = UILabel(style: style.headerStyle)
        subtitle = UILabel(style: style.subheaderStyle)
        button = UIButton(style: style.buttonStyle)
        icon = UIImageView(style: style.iconStyle)
        
        title.isHidden = true
        subtitle.isHidden = true
        button.isHidden = true
        icon.isHidden = true
        
        super.init(frame: .zero)
        
        let headersStackView = UIStackView(arrangedSubviews: [title, subtitle])
        headersStackView.axis = .vertical
        headersStackView.distribution = .fill
        headersStackView.alignment = .leading
        headersStackView.spacing = Layout.subheaderTop;
        
        let iconStackView = UIStackView(arrangedSubviews: [headersStackView, icon])
        iconStackView.axis = .horizontal
        iconStackView.distribution = .fill
        iconStackView.alignment = .center
        iconStackView.spacing = Layout.iconLeft;
        
        let contentStackView = UIStackView(arrangedSubviews: [iconStackView, button])
        contentStackView.axis = .vertical
        contentStackView.distribution = .fill
        contentStackView.alignment = .fill
        contentStackView.spacing = Layout.buttonTop;
        
        contentStackView.layoutMargins = Layout.contentInsets
        contentStackView.isLayoutMarginsRelativeArrangement = true
        
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentStackView)
        leftAnchor.constraint(equalTo: contentStackView.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: contentStackView.rightAnchor).isActive = true
        topAnchor.constraint(equalTo: contentStackView.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: contentStackView.bottomAnchor).isActive = true
        
        if let cornerRadius = style.cornerRadius {
            layer.cornerRadius = cornerRadius
        }
        backgroundColor = style.normalColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private enum Layout {
        static let contentInsets = UIEdgeInsets(top: 16, left: 20, bottom: 18, right: 16)
        static let subheaderTop: CGFloat = 8
        static let iconLeft: CGFloat = 16
        static let buttonTop: CGFloat = 14
        static let buttonBottom: CGFloat = 2
    }
}
