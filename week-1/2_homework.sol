// Write a function that will delete items (one at a time) from a dynamic array without leaving gaps in the array. You should assume that the items to be deleted are chosen at random, and try to do this in a gas efficient manner.
// For example imagine your array has 12 items and you need to delete the items at indexes 8, 2 and 7.  The final array will then have items {0,1,3,4,5,6,9,10,11}

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Homework {
    uint[] public numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

    // Not efficient but keep the number's order:
    function deleteElementSameOrder(uint element) public {
        uint count = 0;
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] != element) {
                count++;
            }
        }

        uint[] memory result = new uint[](count);

        uint j = 0;
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] != element) {
                result[j] = numbers[i];
                j++;
            }
        }

        numbers = result;
    }

    // Most efficient way:
    function AdeleteElementFromArray(uint element) public {
        uint length = numbers.length;

        for (uint i = 0; i < length; i++) {
            if (numbers[i] == element) {
                numbers[i] = numbers[length - 1];
                numbers.pop();
                return;
            }
        }
    }

    function getNumbers() public view returns (uint[] memory) {
        return numbers;
    }
}
