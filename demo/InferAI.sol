// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 <0.9.0;

contract InferAI {

    // storage data as declared below
    bytes inputArray;

    function Infer(address model, address input) public returns (uint256) {
        uint256 result = infer(model, input);
        return result;
    }

    function InferArray(address model) public returns (uint256) {
        uint256 result = inferArray(model, inputArray);
        return result;
    }

}
