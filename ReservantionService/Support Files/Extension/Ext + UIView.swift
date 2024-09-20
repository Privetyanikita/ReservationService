//
//  Ext + UIView.swift
//  ReservantionService
//
//  Created by NikitaKorniuk   on 18.09.24.
//

import UIKit

extension UIView {
    func add(subviews: UIView...) {
        for subview in subviews {
            self.addSubview(subview)
        }
    }
}
