// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable file_length
fileprivate func compareOptionals<T>(lhs: T?, rhs: T?, compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    switch (lhs, rhs) {
    case let (lValue?, rValue?):
        return compare(lValue, rValue)
    case (nil, nil):
        return true
    default:
        return false
    }
}

fileprivate func compareArrays<T>(lhs: [T], rhs: [T], compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    guard lhs.count == rhs.count else { return false }
    for (idx, lhsItem) in lhs.enumerated() {
        guard compare(lhsItem, rhs[idx]) else { return false }
    }

    return true
}


// MARK: - AutoEquatable for classes, protocols, structs
// MARK: - ExportInstance AutoEquatable
extension ExportInstance: Equatable {}
internal func == (lhs: ExportInstance, rhs: ExportInstance) -> Bool {
    guard lhs.name == rhs.name else { return false }
    guard lhs.value == rhs.value else { return false }
    return true
}
// MARK: - Frame AutoEquatable
extension Frame: Equatable {}
internal func == (lhs: Frame, rhs: Frame) -> Bool {
    guard lhs.arity == rhs.arity else { return false }
    guard lhs.module == rhs.module else { return false }
    guard lhs.locals == rhs.locals else { return false }
    return true
}
// MARK: - Function AutoEquatable
extension Function: Equatable {}
public func == (lhs: Function, rhs: Function) -> Bool {
    guard lhs.type == rhs.type else { return false }
    guard lhs.locals == rhs.locals else { return false }
    guard lhs.body == rhs.body else { return false }
    return true
}
// MARK: - GlobalType AutoEquatable
extension GlobalType: Equatable {}
public func == (lhs: GlobalType, rhs: GlobalType) -> Bool {
    guard lhs.mutability == rhs.mutability else { return false }
    guard lhs.valueType == rhs.valueType else { return false }
    return true
}
// MARK: - Label AutoEquatable
extension Label: Equatable {}
internal func == (lhs: Label, rhs: Label) -> Bool {
    guard lhs.arity == rhs.arity else { return false }
    guard lhs.continuation == rhs.continuation else { return false }
    guard lhs.range == rhs.range else { return false }
    return true
}
// MARK: - ModuleInstance AutoEquatable
extension ModuleInstance: Equatable {}
public func == (lhs: ModuleInstance, rhs: ModuleInstance) -> Bool {
    guard lhs.types == rhs.types else { return false }
    guard lhs.functionAddresses == rhs.functionAddresses else { return false }
    guard lhs.tableAddresses == rhs.tableAddresses else { return false }
    guard lhs.memoryAddresses == rhs.memoryAddresses else { return false }
    guard lhs.globalAddresses == rhs.globalAddresses else { return false }
    guard lhs.exportInstances == rhs.exportInstances else { return false }
    return true
}
// MARK: - TableType AutoEquatable
extension TableType: Equatable {}
public func == (lhs: TableType, rhs: TableType) -> Bool {
    guard lhs.limits == rhs.limits else { return false }
    return true
}

// MARK: - AutoEquatable for Enums
// MARK: - ExternalType AutoEquatable
extension ExternalType: Equatable {}
public func == (lhs: ExternalType, rhs: ExternalType) -> Bool {
    switch (lhs, rhs) {
    case (.function(let lhs), .function(let rhs)):
        return lhs == rhs
    case (.table(let lhs), .table(let rhs)):
        return lhs == rhs
    case (.memory(let lhs), .memory(let rhs)):
        return lhs == rhs
    case (.global(let lhs), .global(let rhs)):
        return lhs == rhs
    default: return false
    }
}
// MARK: - FunctionType AutoEquatable
extension FunctionType: Equatable {}
public func == (lhs: FunctionType, rhs: FunctionType) -> Bool {
    if lhs.parameters != rhs.parameters { return false }
    if lhs.results != rhs.results { return false }
    return true
}
// MARK: - NumericInstruction.Binary AutoEquatable
extension NumericInstruction.Binary: Equatable {}
internal func == (lhs: NumericInstruction.Binary, rhs: NumericInstruction.Binary) -> Bool {
    switch (lhs, rhs) {
    case (.add(let lhs), .add(let rhs)):
        return lhs == rhs
    case (.sub(let lhs), .sub(let rhs)):
        return lhs == rhs
    case (.mul(let lhs), .mul(let rhs)):
        return lhs == rhs
    case (.eq(let lhs), .eq(let rhs)):
        return lhs == rhs
    case (.ne(let lhs), .ne(let rhs)):
        return lhs == rhs
    case (.divS(let lhs), .divS(let rhs)):
        return lhs == rhs
    case (.divU(let lhs), .divU(let rhs)):
        return lhs == rhs
    case (.remS(let lhs), .remS(let rhs)):
        return lhs == rhs
    case (.remU(let lhs), .remU(let rhs)):
        return lhs == rhs
    case (.and(let lhs), .and(let rhs)):
        return lhs == rhs
    case (.or(let lhs), .or(let rhs)):
        return lhs == rhs
    case (.xor(let lhs), .xor(let rhs)):
        return lhs == rhs
    case (.shl(let lhs), .shl(let rhs)):
        return lhs == rhs
    case (.shrS(let lhs), .shrS(let rhs)):
        return lhs == rhs
    case (.shrU(let lhs), .shrU(let rhs)):
        return lhs == rhs
    case (.rotl(let lhs), .rotl(let rhs)):
        return lhs == rhs
    case (.rotr(let lhs), .rotr(let rhs)):
        return lhs == rhs
    case (.ltS(let lhs), .ltS(let rhs)):
        return lhs == rhs
    case (.ltU(let lhs), .ltU(let rhs)):
        return lhs == rhs
    case (.gtS(let lhs), .gtS(let rhs)):
        return lhs == rhs
    case (.gtU(let lhs), .gtU(let rhs)):
        return lhs == rhs
    case (.leS(let lhs), .leS(let rhs)):
        return lhs == rhs
    case (.leU(let lhs), .leU(let rhs)):
        return lhs == rhs
    case (.geS(let lhs), .geS(let rhs)):
        return lhs == rhs
    case (.geU(let lhs), .geU(let rhs)):
        return lhs == rhs
    case (.div(let lhs), .div(let rhs)):
        return lhs == rhs
    case (.min(let lhs), .min(let rhs)):
        return lhs == rhs
    case (.max(let lhs), .max(let rhs)):
        return lhs == rhs
    case (.copysign(let lhs), .copysign(let rhs)):
        return lhs == rhs
    case (.lt(let lhs), .lt(let rhs)):
        return lhs == rhs
    case (.gt(let lhs), .gt(let rhs)):
        return lhs == rhs
    case (.le(let lhs), .le(let rhs)):
        return lhs == rhs
    case (.ge(let lhs), .ge(let rhs)):
        return lhs == rhs
    default: return false
    }
}
// MARK: - NumericInstruction.Constant AutoEquatable
extension NumericInstruction.Constant: Equatable {}
internal func == (lhs: NumericInstruction.Constant, rhs: NumericInstruction.Constant) -> Bool {
    switch (lhs, rhs) {
    case (.const(let lhs), .const(let rhs)):
        return lhs == rhs
    }
}
// MARK: - NumericInstruction.Conversion AutoEquatable
extension NumericInstruction.Conversion: Equatable {}
internal func == (lhs: NumericInstruction.Conversion, rhs: NumericInstruction.Conversion) -> Bool {
    switch (lhs, rhs) {
    case (.wrap(let lhs), .wrap(let rhs)):
        if lhs.0 != rhs.0 { return false }
        if lhs.1 != rhs.1 { return false }
        return true
    case (.extendS(let lhs), .extendS(let rhs)):
        if lhs.0 != rhs.0 { return false }
        if lhs.1 != rhs.1 { return false }
        return true
    case (.extendU(let lhs), .extendU(let rhs)):
        if lhs.0 != rhs.0 { return false }
        if lhs.1 != rhs.1 { return false }
        return true
    case (.truncS(let lhs), .truncS(let rhs)):
        if lhs.0 != rhs.0 { return false }
        if lhs.1 != rhs.1 { return false }
        return true
    case (.truncU(let lhs), .truncU(let rhs)):
        if lhs.0 != rhs.0 { return false }
        if lhs.1 != rhs.1 { return false }
        return true
    case (.convertS(let lhs), .convertS(let rhs)):
        if lhs.0 != rhs.0 { return false }
        if lhs.1 != rhs.1 { return false }
        return true
    case (.convertU(let lhs), .convertU(let rhs)):
        if lhs.0 != rhs.0 { return false }
        if lhs.1 != rhs.1 { return false }
        return true
    case (.demote(let lhs), .demote(let rhs)):
        if lhs.0 != rhs.0 { return false }
        if lhs.1 != rhs.1 { return false }
        return true
    case (.promote(let lhs), .promote(let rhs)):
        if lhs.0 != rhs.0 { return false }
        if lhs.1 != rhs.1 { return false }
        return true
    case (.reinterpret(let lhs), .reinterpret(let rhs)):
        if lhs.0 != rhs.0 { return false }
        if lhs.1 != rhs.1 { return false }
        return true
    default: return false
    }
}
// MARK: - NumericInstruction.Unary AutoEquatable
extension NumericInstruction.Unary: Equatable {}
internal func == (lhs: NumericInstruction.Unary, rhs: NumericInstruction.Unary) -> Bool {
    switch (lhs, rhs) {
    case (.clz(let lhs), .clz(let rhs)):
        return lhs == rhs
    case (.ctz(let lhs), .ctz(let rhs)):
        return lhs == rhs
    case (.popcnt(let lhs), .popcnt(let rhs)):
        return lhs == rhs
    case (.eqz(let lhs), .eqz(let rhs)):
        return lhs == rhs
    case (.abs(let lhs), .abs(let rhs)):
        return lhs == rhs
    case (.neg(let lhs), .neg(let rhs)):
        return lhs == rhs
    case (.ceil(let lhs), .ceil(let rhs)):
        return lhs == rhs
    case (.floor(let lhs), .floor(let rhs)):
        return lhs == rhs
    case (.trunc(let lhs), .trunc(let rhs)):
        return lhs == rhs
    case (.nearest(let lhs), .nearest(let rhs)):
        return lhs == rhs
    case (.sqrt(let lhs), .sqrt(let rhs)):
        return lhs == rhs
    default: return false
    }
}
