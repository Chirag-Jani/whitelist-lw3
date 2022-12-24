const { ethers } = require("hardhat");

async function main() {
  const whitelistContract = ethers.getContractFactory("Whitelist");

  const deployWhitelistContract = (await whitelistContract).deploy(10);

  (await deployWhitelistContract).deployed();

  console.log(
    "Whitelist Contract deployed at: ",
    (await deployWhitelistContract).address
  );
}

main()
  .then(() => process.exit(1))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
