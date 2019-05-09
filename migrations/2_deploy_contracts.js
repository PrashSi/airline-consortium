var Election = artifacts.require("./Election.sol");
var ChangeSeat = artifacts.require("./ChangeSeat.sol");

module.exports = function(deployer) {
  deployer.deploy(Election);
  deployer.deploy(ChangeSeat);
};
