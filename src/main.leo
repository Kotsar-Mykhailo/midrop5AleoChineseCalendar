program chinese_calendar.aleo {
    transition year_to_chinese_name(year: u16) -> (u8, u8) {
        assert (year < 10000u16);
        assert (year >= 4u16);
        year = year - 4u16;
        let animal: u8 = (year % 12u16) as u8; // 0 = rat, 1 = ox, 2 = tiger, 3 - rabbit, 4 - dragon, 5 - snake, 6 - horse, 7 - goat, 8 - monkey, 9 - rooster, 10 - dog, 11 - pig
        let element: u8 = (year / 12u16 % 10u16) as u8; // 0 = wood, 1 = fire, 2 = earth, 3 = metal, 4 = water
        return (element, animal);
    }
}
