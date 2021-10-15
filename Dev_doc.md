# Infer/InferArray Dev Doc

## High-Level Language(Solidity) Layer
`Attention! 'infer/inferArray' Below Means Solidity Function 'infer/inferArray'`

1. **Register magicVariableToID**
  - set negative ID for 'infer/inferArray'

2. **Register FunctionType**
  - FunctionType is Namespace for inner solidity Functions

3. **Customized Function, Configure Input/Output Data Type**
  - infer(address, address, uint256[] memory) uint256
  - inferArray(address, uint256[] storage, uint256[] memory) uint256


*Code Related*
- libsolidity
  - codegen
    - [ExpressionCompiler.cpp](./libsolidity/codegen/ExpressionCompiler.cpp)
  - analysis
    - [GlobalContext.cpp](./libsolidity/analysis/GlobalContext.cpp)
  - ast 
    - [Types.cpp](./libsolidity/ast/Types.cpp)

## Asm Layer
`Attention! 'INFER/INFERARRAY' Below Means Opcode 'INFER/INFERARRAY'`

1. **Opcode Register** : [Ethereum Virtual Machine Opcodes](https://ethervm.io/)
  1. Add INFER Opcode index-code as 0xc0
  2. Add INFERARRAY Opcode index-code as 0xc1


2. **Set Opcode Instruction Action**
  - Configure Opcode INFER with '3-stack-input', '1-stack-ret' and no Immediate-Number.
  - Configure Opcode INFERARRAY with '3-stack-input', '1-stack-ret' and no Immediate-Number.
`(Actually, 3-stack-input is Model-Address, Input-Address(Contract-Address or Uint256Array-Address), Ouptut-Address. 1-stack-ret is just 0/1 means If INFER[ARRAY] Succeed)`


*Code Related*
- libevmasm
  - [Instruction.h](./libevmasm/Instruction.h)
  - [Instruction.cpp](./libevmasm/Instruction.cpp)
  - [SemanticInformation.cpp](./libevmasm/SemanticInformation.cpp)
