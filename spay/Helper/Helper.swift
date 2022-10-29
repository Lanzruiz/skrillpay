//
//  Helper.swift
//  spay
//
//  Created by Lanz Ruiz on 10/24/22.
//

import Foundation

func delay (durationInSeconds seconds: Double, completion: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
}
