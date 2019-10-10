//
//  SingleCommandtask.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 03/10/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

@available(iOS 13.0, *)
public final class SingleCommandTask<TCommandSerializer>: Task<TaskCompletionResult<TCommandSerializer.CommandResponse>>
    where TCommandSerializer: CommandSerializer {

    private let commandSerializer: TCommandSerializer
    
    public init(_ commandSerializer: TCommandSerializer) {
        self.commandSerializer = commandSerializer
    }
    
    override public func run(with environment: CardEnvironment, completion: @escaping (TaskCompletionResult<TCommandSerializer.CommandResponse>) -> Void) {
         sendCommand(commandSerializer, completion: completion)
    }
}
