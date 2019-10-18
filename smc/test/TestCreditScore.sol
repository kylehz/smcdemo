pragma solidity ^0.4.24;

import "truffle/Assert.sol";   // 引入的断言
import "truffle/DeployedAddresses.sol";  // 用来获取被测试合约的地址
import "../contracts/CreditScore.sol";      // 被测试合约

contract TestCreditScore {
  CreditScore creditScore = CreditScore(DeployedAddresses.CreditScore());

  // 领养测试用例
  function test1() public {
    // creditScore.update();
    
  }

}