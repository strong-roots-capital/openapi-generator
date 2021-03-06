//
// ModelWithPropertiesAndAdditionalProperties.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


/** This is an empty model with no properties and only additionalProperties of type int32 */

public struct ModelWithPropertiesAndAdditionalProperties: Codable {

    public var myIntegerReq: Int
    public var myIntegerOpt: Int?
    public var myPrimitiveReq: AllPrimitives
    public var myPrimitiveOpt: AllPrimitives?
    public var myStringArrayReq: [String]
    public var myStringArrayOpt: [String]?
    public var myPrimitiveArrayReq: [AllPrimitives]
    public var myPrimitiveArrayOpt: [AllPrimitives]?

    public init(myIntegerReq: Int, myIntegerOpt: Int?, myPrimitiveReq: AllPrimitives, myPrimitiveOpt: AllPrimitives?, myStringArrayReq: [String], myStringArrayOpt: [String]?, myPrimitiveArrayReq: [AllPrimitives], myPrimitiveArrayOpt: [AllPrimitives]?) {
        self.myIntegerReq = myIntegerReq
        self.myIntegerOpt = myIntegerOpt
        self.myPrimitiveReq = myPrimitiveReq
        self.myPrimitiveOpt = myPrimitiveOpt
        self.myStringArrayReq = myStringArrayReq
        self.myStringArrayOpt = myStringArrayOpt
        self.myPrimitiveArrayReq = myPrimitiveArrayReq
        self.myPrimitiveArrayOpt = myPrimitiveArrayOpt
    }
    public var additionalProperties: [String:String] = [:]

    public subscript(key: String) -> String? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(myIntegerReq, forKey: "myIntegerReq")
        try container.encodeIfPresent(myIntegerOpt, forKey: "myIntegerOpt")
        try container.encode(myPrimitiveReq, forKey: "myPrimitiveReq")
        try container.encodeIfPresent(myPrimitiveOpt, forKey: "myPrimitiveOpt")
        try container.encode(myStringArrayReq, forKey: "myStringArrayReq")
        try container.encodeIfPresent(myStringArrayOpt, forKey: "myStringArrayOpt")
        try container.encode(myPrimitiveArrayReq, forKey: "myPrimitiveArrayReq")
        try container.encodeIfPresent(myPrimitiveArrayOpt, forKey: "myPrimitiveArrayOpt")
        try container.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        myIntegerReq = try container.decode(Int.self, forKey: "myIntegerReq")
        myIntegerOpt = try container.decodeIfPresent(Int.self, forKey: "myIntegerOpt")
        myPrimitiveReq = try container.decode(AllPrimitives.self, forKey: "myPrimitiveReq")
        myPrimitiveOpt = try container.decodeIfPresent(AllPrimitives.self, forKey: "myPrimitiveOpt")
        myStringArrayReq = try container.decode([String].self, forKey: "myStringArrayReq")
        myStringArrayOpt = try container.decodeIfPresent([String].self, forKey: "myStringArrayOpt")
        myPrimitiveArrayReq = try container.decode([AllPrimitives].self, forKey: "myPrimitiveArrayReq")
        myPrimitiveArrayOpt = try container.decodeIfPresent([AllPrimitives].self, forKey: "myPrimitiveArrayOpt")
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("myIntegerReq")
        nonAdditionalPropertyKeys.insert("myIntegerOpt")
        nonAdditionalPropertyKeys.insert("myPrimitiveReq")
        nonAdditionalPropertyKeys.insert("myPrimitiveOpt")
        nonAdditionalPropertyKeys.insert("myStringArrayReq")
        nonAdditionalPropertyKeys.insert("myStringArrayOpt")
        nonAdditionalPropertyKeys.insert("myPrimitiveArrayReq")
        nonAdditionalPropertyKeys.insert("myPrimitiveArrayOpt")
        additionalProperties = try container.decodeMap(String.self, excludedKeys: nonAdditionalPropertyKeys)
    }



}

