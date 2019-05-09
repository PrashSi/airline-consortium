pragma solidity >=0.4.22 <0.6.0;

contract ChangeSeat {

    address chairperson;
    constructor  () public {
        chairperson = msg.sender;
    }
    mapping(address => uint) balances;

    function register() public payable{

        require(msg.value > 50 ether,"You should need minimum of 50 Ether to register.");
        balances[msg.sender] = msg.value;
    }
}