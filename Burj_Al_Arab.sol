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
        string name;
        uint8 checkInDate;
        uint8 checkOutDate;
    }

    Booking[] public booking;

    function RoomType() public {
        Room memory deluxe = Room("Deluxe Suite", 1, false);
        Room memory panoramic = Room("Panoramic Suite", 2, false);
        Room memory sky = Room("Sky Suite", 3, false);
        Room memory burj = Room("Burj Family Suite", 4, false);
        Room memory diplomatic = Room("Diplomatic Suite", 5, false);
        room.push(deluxe);
        room.push(panoramic);
        room.push(sky);
        room.push(burj);
        room.push(diplomatic);
    }

    function bookDeluxe(
        string memory name,
        uint8 checkInDate,
        uint8 checkOutDate
    ) public {
        Booking memory deluxe = Booking(name, checkInDate, checkOutDate);
        booking.push(deluxe);
        Room storage _room = room[0];
        _room.isBooked = true;
    }

    function bookPanoramic() public {
        Room storage _room = room[1];
        _room.isBooked = true;
    }

    function bookSky() public {
        Room storage _room = room[2];
        _room.isBooked = true;
    }

    function bookBurj() public {
        Room storage _room = room[3];
        _room.isBooked = true;
    }

    function bookDiplomatic() public {
        Room storage _room = room[4];
        _room.isBooked = true;
    }
}
