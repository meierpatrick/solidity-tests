// SPDX-License-Identifier: MIT

/*
Tasks:
Build the Burj Al Arab in Dubai.
*/

pragma solidity 0.8.19;

contract Burj_Al_Arab {
    struct Room {
        string name;
        uint8 number;
        bool isBooked;
    }

    Room[] public room;

    struct Booking {
        address wallet;
        string name;
    }

    Booking[] public booking;

    function setRoom() external {
        room.push(Room("Deluxe Suite", 1, false));
        room.push(Room("Panoramic Suite", 2, false));
        room.push(Room("Sky Suite", 3, false));
        room.push(Room("Burj Family Suite", 4, false));
        room.push(Room("Diplomatic Suite", 5, false));
    }

    function setBooking(string memory _name) external {
        booking.push(Booking(msg.sender, _name));
    }
}
