//
//  BRFluenceModule.swift
//  
//
//  Created by Shine on 2020/12/27.
//

import Foundation

postfix operator ^+

public postfix func ^+ <K>(obj : K) -> BRFluentModule<K>{
    return BRFluentModule(someObject: obj)
}

postfix operator ^-

@discardableResult public postfix func ^- <K>(obj : BRFluentModule<K>) -> K{
    return obj.someObject
}

@dynamicMemberLookup
public struct BRFluentModule<SomeObject>{
    var someObject : SomeObject
        
    public subscript<Value>( dynamicMember keyPath : WritableKeyPath<SomeObject,Value>)-> (Value)->(BRFluentModule<SomeObject>){
        var tempObject = self.someObject
            
        return {value in
            tempObject[keyPath : keyPath] = value
            return BRFluentModule(someObject : tempObject)
        }
    }
}
