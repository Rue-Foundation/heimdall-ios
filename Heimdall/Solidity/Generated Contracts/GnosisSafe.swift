//
//  GnosisSafe.swift
//
//  Generated by Bivrost at 1508864299.69732.
//

struct GnosisSafe {
    struct IsOwner: SolidityFunction {
        static let methodId = "2f54bf6e"
        typealias Return = Solidity.Bool
        typealias Arguments = Solidity.Address
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.Bool.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let param0 = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return param0
        }
    }
    struct ConfirmAndExecuteTransaction: SolidityFunction {
        static let methodId = "8be153a4"
        typealias Return = Void
        typealias Arguments = (to: Solidity.Address, value: Solidity.UInt256, data: Solidity.Bytes, operation: Solidity.UInt8, nonce: Solidity.UInt256)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.to, arguments.value, arguments.data, arguments.operation, arguments.nonce))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let to = try Solidity.Address.decode(source: source)
            let value = try Solidity.UInt256.decode(source: source)
            // Ignore location for dynamic type
            _ = source.consume()
            let operation = try Solidity.UInt8.decode(source: source)
            let nonce = try Solidity.UInt256.decode(source: source)
            // Dynamic Types
            let data = try Solidity.Bytes.decode(source: source)
            return Arguments(to: to, value: value, data: data, operation: operation, nonce: nonce)
        }
    }
    struct GetOwners: SolidityFunction {
        static let methodId = "a0e67e2b"
        typealias Return = Solidity.VariableArray<Solidity.Address>
        typealias Arguments = Void
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Ignore location for dynamic type
            _ = source.consume()
            // Dynamic Types
            let param0 = try Solidity.VariableArray<Solidity.Address>.decode(source: source)
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
    }
    struct GetExceptions: SolidityFunction {
        static let methodId = "49149aa4"
        typealias Return = Solidity.VariableArray<Solidity.Address>
        typealias Arguments = Void
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Ignore location for dynamic type
            _ = source.consume()
            // Dynamic Types
            let param0 = try Solidity.VariableArray<Solidity.Address>.decode(source: source)
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
    }
    struct AddException: SolidityFunction {
        static let methodId = "c602ca6a"
        typealias Return = Void
        typealias Arguments = Solidity.Address
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let exception = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return exception
        }
    }
    struct RemoveException: SolidityFunction {
        static let methodId = "7fdc38fb"
        typealias Return = Void
        typealias Arguments = Solidity.Address
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let exception = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return exception
        }
    }
    struct ConfirmTransaction: SolidityFunction {
        static let methodId = "79716e43"
        typealias Return = Void
        typealias Arguments = Solidity.Bytes32
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let transactionHash = try Solidity.Bytes32.decode(source: source)
            // Dynamic Types
            return transactionHash
        }
    }
    struct IsConfirmed: SolidityFunction {
        static let methodId = "b79ffaff"
        typealias Return = Solidity.Bool
        typealias Arguments = (param0: Solidity.Bytes32, param1: Solidity.Address)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.param0, arguments.param1))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.Bool.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let param0 = try Solidity.Bytes32.decode(source: source)
            let param1 = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return Arguments(param0: param0, param1: param1)
        }
    }
    struct ConfirmTransactionWithSignatures: SolidityFunction {
        static let methodId = "ad691fb7"
        typealias Return = Void
        typealias Arguments = (transactionHash: Solidity.Bytes32, v: Solidity.VariableArray<Solidity.UInt8>, r: Solidity.VariableArray<Solidity.Bytes32>, s: Solidity.VariableArray<Solidity.Bytes32>)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.transactionHash, arguments.v, arguments.r, arguments.s))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let transactionHash = try Solidity.Bytes32.decode(source: source)
            // Ignore location for dynamic type
            _ = source.consume()
            // Ignore location for dynamic type
            _ = source.consume()
            // Ignore location for dynamic type
            _ = source.consume()
            // Dynamic Types
            let v = try Solidity.VariableArray<Solidity.UInt8>.decode(source: source)
            let r = try Solidity.VariableArray<Solidity.Bytes32>.decode(source: source)
            let s = try Solidity.VariableArray<Solidity.Bytes32>.decode(source: source)
            return Arguments(transactionHash: transactionHash, v: v, r: r, s: s)
        }
    }
    struct Condition: SolidityFunction {
        static let methodId = "c5031331"
        typealias Return = Solidity.Address
        typealias Arguments = Void
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
    }
    struct ReplaceOwner: SolidityFunction {
        static let methodId = "e20056e6"
        typealias Return = Void
        typealias Arguments = (oldOwner: Solidity.Address, newOwner: Solidity.Address)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.oldOwner, arguments.newOwner))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let oldOwner = try Solidity.Address.decode(source: source)
            let newOwner = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return Arguments(oldOwner: oldOwner, newOwner: newOwner)
        }
    }
    struct MAX_OWNERS: SolidityFunction {
        static let methodId = "0b8bb146"
        typealias Return = Solidity.UInt8
        typealias Arguments = Void
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.UInt8.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
    }
    struct AddOwner: SolidityFunction {
        static let methodId = "0e5229b0"
        typealias Return = Void
        typealias Arguments = (owner: Solidity.Address, _required: Solidity.UInt8)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.owner, arguments._required))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let owner = try Solidity.Address.decode(source: source)
            let _required = try Solidity.UInt8.decode(source: source)
            // Dynamic Types
            return Arguments(owner: owner, _required: _required)
        }
    }
    struct ExecuteTransaction: SolidityFunction {
        static let methodId = "9681467f"
        typealias Return = Void
        typealias Arguments = (to: Solidity.Address, value: Solidity.UInt256, data: Solidity.Bytes, operation: Solidity.UInt8, nonce: Solidity.UInt256)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.to, arguments.value, arguments.data, arguments.operation, arguments.nonce))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let to = try Solidity.Address.decode(source: source)
            let value = try Solidity.UInt256.decode(source: source)
            // Ignore location for dynamic type
            _ = source.consume()
            let operation = try Solidity.UInt8.decode(source: source)
            let nonce = try Solidity.UInt256.decode(source: source)
            // Dynamic Types
            let data = try Solidity.Bytes.decode(source: source)
            return Arguments(to: to, value: value, data: data, operation: operation, nonce: nonce)
        }
    }
    struct RevokeConfirmation: SolidityFunction {
        static let methodId = "f3fc536d"
        typealias Return = Void
        typealias Arguments = Solidity.Bytes32
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let transactionHash = try Solidity.Bytes32.decode(source: source)
            // Dynamic Types
            return transactionHash
        }
    }
    struct IsException: SolidityFunction {
        static let methodId = "98636f32"
        typealias Return = Solidity.Bool
        typealias Arguments = Solidity.Address
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.Bool.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let param0 = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return param0
        }
    }
    struct GetConfirmationCount: SolidityFunction {
        static let methodId = "113642e5"
        typealias Return = Solidity.UInt256
        typealias Arguments = Solidity.Bytes32
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let confirmationCount = try Solidity.UInt256.decode(source: source)
            // Dynamic Types
            return confirmationCount
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let transactionHash = try Solidity.Bytes32.decode(source: source)
            // Dynamic Types
            return transactionHash
        }
    }
    struct IsConfirmedByRequiredOwners: SolidityFunction {
        static let methodId = "6101ef35"
        typealias Return = Solidity.Bool
        typealias Arguments = Solidity.Bytes32
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.Bool.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let transactionHash = try Solidity.Bytes32.decode(source: source)
            // Dynamic Types
            return transactionHash
        }
    }
    struct GetTransactionHash: SolidityFunction {
        static let methodId = "2b500041"
        typealias Return = Solidity.Bytes32
        typealias Arguments = (to: Solidity.Address, value: Solidity.UInt256, data: Solidity.Bytes, operation: Solidity.UInt8, nonce: Solidity.UInt256)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.to, arguments.value, arguments.data, arguments.operation, arguments.nonce))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.Bytes32.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let to = try Solidity.Address.decode(source: source)
            let value = try Solidity.UInt256.decode(source: source)
            // Ignore location for dynamic type
            _ = source.consume()
            let operation = try Solidity.UInt8.decode(source: source)
            let nonce = try Solidity.UInt256.decode(source: source)
            // Dynamic Types
            let data = try Solidity.Bytes.decode(source: source)
            return Arguments(to: to, value: value, data: data, operation: operation, nonce: nonce)
        }
    }
    struct ExecuteException: SolidityFunction {
        static let methodId = "43e6d450"
        typealias Return = Void
        typealias Arguments = (to: Solidity.Address, value: Solidity.UInt256, data: Solidity.Bytes, operation: Solidity.UInt8, exception: Solidity.Address)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.to, arguments.value, arguments.data, arguments.operation, arguments.exception))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let to = try Solidity.Address.decode(source: source)
            let value = try Solidity.UInt256.decode(source: source)
            // Ignore location for dynamic type
            _ = source.consume()
            let operation = try Solidity.UInt8.decode(source: source)
            let exception = try Solidity.Address.decode(source: source)
            // Dynamic Types
            let data = try Solidity.Bytes.decode(source: source)
            return Arguments(to: to, value: value, data: data, operation: operation, exception: exception)
        }
    }
    struct ConfirmAndExecuteTransactionWithSignatures: SolidityFunction {
        static let methodId = "534035bc"
        typealias Return = Void
        typealias Arguments = (to: Solidity.Address, value: Solidity.UInt256, data: Solidity.Bytes, operation: Solidity.UInt8, nonce: Solidity.UInt256, v: Solidity.VariableArray<Solidity.UInt8>, r: Solidity.VariableArray<Solidity.Bytes32>, s: Solidity.VariableArray<Solidity.Bytes32>)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.to, arguments.value, arguments.data, arguments.operation, arguments.nonce, arguments.v, arguments.r, arguments.s))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let to = try Solidity.Address.decode(source: source)
            let value = try Solidity.UInt256.decode(source: source)
            // Ignore location for dynamic type
            _ = source.consume()
            let operation = try Solidity.UInt8.decode(source: source)
            let nonce = try Solidity.UInt256.decode(source: source)
            // Ignore location for dynamic type
            _ = source.consume()
            // Ignore location for dynamic type
            _ = source.consume()
            // Ignore location for dynamic type
            _ = source.consume()
            // Dynamic Types
            let data = try Solidity.Bytes.decode(source: source)
            let v = try Solidity.VariableArray<Solidity.UInt8>.decode(source: source)
            let r = try Solidity.VariableArray<Solidity.Bytes32>.decode(source: source)
            let s = try Solidity.VariableArray<Solidity.Bytes32>.decode(source: source)
            return Arguments(to: to, value: value, data: data, operation: operation, nonce: nonce, v: v, r: r, s: s)
        }
    }
    struct IsExecuted: SolidityFunction {
        static let methodId = "e52cb36a"
        typealias Return = Solidity.Bool
        typealias Arguments = Solidity.Bytes32
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.Bool.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let param0 = try Solidity.Bytes32.decode(source: source)
            // Dynamic Types
            return param0
        }
    }
    struct ChangeRequired: SolidityFunction {
        static let methodId = "88b2319d"
        typealias Return = Void
        typealias Arguments = Solidity.UInt8
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let _required = try Solidity.UInt8.decode(source: source)
            // Dynamic Types
            return _required
        }
    }
    struct Owners: SolidityFunction {
        static let methodId = "025e7c27"
        typealias Return = Solidity.Address
        typealias Arguments = Solidity.UInt256
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let param0 = try Solidity.UInt256.decode(source: source)
            // Dynamic Types
            return param0
        }
    }
    struct RemoveOwner: SolidityFunction {
        static let methodId = "233023b4"
        typealias Return = Void
        typealias Arguments = (owner: Solidity.Address, _required: Solidity.UInt8)
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments.owner, arguments._required))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let owner = try Solidity.Address.decode(source: source)
            let _required = try Solidity.UInt8.decode(source: source)
            // Dynamic Types
            return Arguments(owner: owner, _required: _required)
        }
    }
    struct Required: SolidityFunction {
        static let methodId = "dc8452cd"
        typealias Return = Solidity.UInt8
        typealias Arguments = Void
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.UInt8.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
    }
    struct GetConfirmingOwners: SolidityFunction {
        static let methodId = "c676920a"
        typealias Return = Solidity.VariableArray<Solidity.Address>
        typealias Arguments = Solidity.Bytes32
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Ignore location for dynamic type
            _ = source.consume()
            // Dynamic Types
            let confirmingOwners = try Solidity.VariableArray<Solidity.Address>.decode(source: source)
            return confirmingOwners
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let transactionHash = try Solidity.Bytes32.decode(source: source)
            // Dynamic Types
            return transactionHash
        }
    }
    struct Exceptions: SolidityFunction {
        static let methodId = "46eb2902"
        typealias Return = Solidity.Address
        typealias Arguments = Solidity.UInt256
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            let param0 = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return param0
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let param0 = try Solidity.UInt256.decode(source: source)
            // Dynamic Types
            return param0
        }
    }
    struct ChangeCondition: SolidityFunction {
        static let methodId = "890e0870"
        typealias Return = Void
        typealias Arguments = Solidity.Address
        static func encodeCall(arguments: Arguments) -> String {
            return "0x\(methodId)\(BaseEncoder.encode(arguments: arguments))"
        }
        static func decode(returnData: String) throws -> Return {
            let source = BaseDecoder.partition(returnData)
            // Static Types & Location
            // Dynamic Types
            return 
        }
        static func decode(argumentsData: String) throws -> Arguments {
            let source = BaseDecoder.partition(argumentsData)
            // Static Types & Location
            let _condition = try Solidity.Address.decode(source: source)
            // Dynamic Types
            return _condition
        }
    }
}
