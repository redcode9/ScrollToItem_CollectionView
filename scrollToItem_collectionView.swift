import UIKit

// This is an easy way to scroll on a determinated Item having an IndexPath

extension UICollectionView {
    func scrollToItem(at indexPath: IndexPath,
                      at position: UICollectionView.ScrollPosition,
                      duration: TimeInterval = 0.24,
                      delay: TimeInterval = 0.0,
                      options: UIView.AnimationOptions = [.curveEaseOut],
                      completion: ((Bool) -> Void)?) {
        UIView.animate(withDuration: duration, delay: delay, options: options, animations: {
            self.scrollToItem(at: indexPath, at: position, animated: false)
        }, completion: { isFinished in
            completion?(isFinished)
        })
    }
}