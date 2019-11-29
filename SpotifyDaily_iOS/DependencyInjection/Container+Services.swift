//
//  Container+Services.swift
//  SpotifyDaily
//
//  Created by Kevin Li on 11/29/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

import Swinject
import SwinjectAutoregistration

extension Container {
    
    func registerServices() {
        self.autoregister(DataManager.self, initializer: UserDataManager.init).inObjectScope(.container)
        self.autoregister(SessionService.self, initializer: SessionService.init).inObjectScope(.container)
    }
}