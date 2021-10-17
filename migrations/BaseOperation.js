const Migrations = artifacts.require("./BaseOpreation");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
