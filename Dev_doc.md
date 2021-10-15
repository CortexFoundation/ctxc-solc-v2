# Infer/InferArray Dev Doc

## High-Level Language(Solidity) Layer
`Attention! 'Infer/InferArray' Below Means Solidity Function 'Infer/InferArray'`

*Register magicVariableToID*
*Register FunctionType*
*Customized Function*
*Configure Input/Output Data Type*

### Code Related
- libsolidity
  - codegen
    - [ExpressionCompiler.cpp](./libsolidity/codegen/ExpressionCompiler.cpp)
  - analysis
    - [GlobalContext.cpp](./libsolidity/analysis/GlobalContext.cpp)
  - ast 
    - [Types.cpp](./libsolidity/ast/Types.cpp)

## Asm Layer
`Attention! 'INFER/INFERARRAY' Below Means Opcode 'INFER/INFERARRAY'`

*Opcode Register*
[Ethereum Virtual Machine Opcodes](https://ethervm.io/)
1. Add Infer Opcode index-code as 0xc0
2. Add InferArray Opcode index-code as 0xc1

*Set Opcode Instruction Action*
- Configure Opcode Infer with '3-stack-input', '1-stack-ret' and no Immediate-Number.
    Actually, 3-stack-input is Model-Address, Input-Address, Ouptut-Address. 1-stack-ret is just 0/1 means Is INFER Succeed.
- Configure Opcode InferArray with '3-stack-input', '1-stack-ret' and no Immediate-Number.

### Code Related
- libevmasm
  - [Instruction.h](./libevmasm/Instruction.h)
  - [Instruction.cpp](./libevmasm/Instruction.cpp)
  - [SemanticInformation.cpp](./libevmasm/SemanticInformation.cpp)
