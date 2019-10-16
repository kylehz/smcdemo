let CreditScore = artifacts.require('./CreditScore.sol')

module.exports = function (deployer, network, accounts) {
    deployer.deploy(CreditScore);
    
};

