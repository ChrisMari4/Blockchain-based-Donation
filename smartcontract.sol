// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20; 

contract Crowdfunding {
    uint public balanceTot = 0;
    address payable public manager;
    uint public goal;
    uint public counterDonor = 0;
    enum Statuses {
        Open,
        Closed
    }

    Statuses public currentStatus = Statuses.Open;

    constructor(uint _goal) {
        manager = payable(msg.sender);
        goal = _goal;
    }

    modifier correctDonation {
        // there must be almost 1 ether
        require(msg.value > 0, "Invalid donation: insert almost 1 eth");
        // is the crowdfunding still open?
        require(currentStatus == Statuses.Open, "The crowdfunding is closed");
        _;
    }

    modifier correctWithdraw(uint _amount) {
        // only manager can withdraw
        require(manager == msg.sender, 
        "Only the manager can withdraw");
        // there must be the availability of ethers
        require(address(this).balance >= _amount, 
        "Required ethereum not available");
        _;
    }

    function donate() public payable correctDonation{
        balanceTot += msg.value;
        counterDonor++;

        if(balanceTot >= goal){
            currentStatus = Statuses.Closed;
        }
    }

    function withdraw(uint _amount) 
    public correctWithdraw(_amount){
                manager.transfer(_amount);
    }


    function endCrowdfunding() public{
        currentStatus = Statuses.Closed;
    }

    function goalAchieved() public view returns(Statuses){
        return currentStatus;
    }

}
