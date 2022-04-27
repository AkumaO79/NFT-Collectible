pragma solidity >=0.5.0;

import "./ERC721Full.sol";

contract Color is ERC721Full {
    //intiatize our nft
    string[] public colors;
    mapping(string=>bool) _colorExists;

    //defined array

    constructor() ERC721Full("Color", "COLOR") public {
    }
    // #FFFFFF- //create a function for minting the nfts
    function _mint(string memory _color ) public {
       require(!_colorExists[_color]); 
       uint _id = colors.push(_color);
       _mint(msg.sender, _id);
        _colorExists[_color] = true;
        //validated the unique existance 
    }

}


//validated the unique existance 