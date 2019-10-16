pragma solidity ^0.4.24;

import "./oraclize/usingOraclize.sol";

contract CreditScore is usingOraclize {

    string public creditScoreValue;

    event LogInfo(string description);
    event LogNewEthPrice(string price);
    event LogNewOraclizeQuery(string description);

    function CreditScore() {
        update(); 
    }

    function __callback(bytes32 myid, string result) {
        require(msg.sender == oraclize_cbAddress(), 'Caller is not Oraclize!');
        emit LogNewEthPrice(result);
        creditScoreValue = result;
    }

    function update() payable public {
        if(oraclize_getPrice("URL") > address(this).balance){
            // emit LogInfo("Oraclize query was NOT sent, please add some ETH to cover for the query fee");
        } else {
        //    emit LogInfo("Oraclize query was sent, standing by for the answer.."); 
        //    emit LogNewOraclizeQuery("Oraclize query was sent, standing by for the answer..");
        //    oraclize_query("URL", "json(http://localhost:9000/api/datas/0x003e64f4ab80549fec7f3d4649739d531171fcdc).utility_score");
        }

    }

}