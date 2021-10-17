pragma solidity >=0.4.22 <0.9.0;
import "@openzeppelin/contracts/access/Ownable.sol";

contract BaseOpreation is Ownable {

    mapping(bytes32=>address) public  tokenAddressList;

    function add(uint256  a,uint256  b ) public onlyOwner view returns(uint256) {

        return(a+b);
    }

    function multiply(uint256 value1,uint256 value2) public onlyOwner view returns(uint256) {
   if(value2==0)
   {
       return 0;
   }
    else
    {
        return(value1+multiply(value1,value2-1));
    }


    }
    function div (uint256  a,uint256  b) public onlyOwner view returns(uint256,uint256) {

        uint256  divded=a/b;
        uint256  reminder=a%b;
        return (divded,reminder);

    }
    function percentOf  (uint256 value1,uint256  value2) public onlyOwner view returns(uint256) {

        uint256  percentage=value1*value2/100;
        return(percentage);

    }
    function Addaddress (bytes32  TokenName,address  tokenaddress ) public  {
        tokenAddressList[TokenName]=tokenaddress;

    }
    function Getaddress(bytes32 nameofToken)public view returns(address )
    {

    address  tokenAddrees= tokenAddressList[nameofToken];
        return (tokenAddrees);
    }

}
