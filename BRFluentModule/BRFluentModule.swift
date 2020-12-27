//
//  BRFluenceModule.swift
//  
//
//  Created by Shine on 2020/12/27.
//

import Foundation

postfix operator ^+

postfix func ^+ <K>(obj : K) -> BRFluentModule<K>{
    return BRFluentModule(someObject: obj)
}

postfix operator ^-

@discardableResult postfix func ^- <K>(obj : BRFluentModule<K>) -> K{
    return obj.someObject
}

@dynamicMemberLookup
struct BRFluentModule<SomeObject>{
    var someObject : SomeObject
        
    subscript<Value>( dynamicMember keyPath : WritableKeyPath<SomeObject,Value>)-> (Value)->(BRFluentModule<SomeObject>){
        var tempObject = self.someObject
            
        return {value in
            tempObject[keyPath : keyPath] = value
            return BRFluentModule(someObject : tempObject)
        }
    }
}
