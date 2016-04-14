//
//  LoginModel.swift
//  Login
//
//  Created by student on 15/4/16.
//  Copyright © 2016 ISS-MWAD. All rights reserved.
//

import Foundation

class LoginModel {
    func verifyUserandPassword(userId: String, password:String) -> Bool {
        return userId == password
    }
}