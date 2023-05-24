import UIKit

extension UIButton {
    enum ButtonState {
        case normal
        case highlighted
        case disabled
        case sending
        case sent
    }

    func setBackgroundColor(_ color: UIColor, forState state: ButtonState) {
        switch state {
        case .normal:
            self.setBackgroundImage(color.toImage(), for: .normal)
        case .highlighted:
            self.setBackgroundImage(color.toImage(), for: .highlighted)
        case .disabled:
            self.setBackgroundImage(color.toImage(), for: .disabled)
        case .sending:
            self.setBackgroundImage(color.toImage(), for: .normal)
            self.setTitle("Sending...", for: .normal)
            self.isEnabled = false
        case .sent:
            self.setBackgroundImage(color.toImage(), for: .normal)
            self.setTitle("Sent", for: .normal)
            self.isEnabled = false
        }
    }
}

extension UIColor {
    func toImage() -> UIImage {
        let size = CGSize(width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        self.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))
        let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
        UIGraphicsEndImageContext()
        return image
    }
}
