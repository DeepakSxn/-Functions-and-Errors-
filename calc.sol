// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract Calculator {
    int256  lastResult'
    function calculate(int256 num1, string memory operation, int256 num2) public returns (int256) {
        bytes memory op = bytes(operation);

        require(op.length == 1, "Invalid operation");
        int256 result;
        if (op[0] == '+') {
            result = num1 + num2;
            assert(result == num1 + num2);
        } else if (op[0] == '-') {
            result = num1 - num2;
            assert(result == num1 - num2);
        } else if (op[0] == '*') {
            result = num1 * num2;
            assert(result == num1 * num2);
        } else {  
            revert("Unsupported operation");
        }
        lastResult = result; 
        return result;
    }
    function getLastResult() public view returns (int256) {
        return lastResult;
    }
}
