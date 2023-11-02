# Chinese Lunar Calendar Decoder

This Leo project is an Aleo blockchain program designed to determine animals and elements associated with years in the Chinese Lunar Calendar. It is written in the Leo programming language, which is specifically designed for zero-knowledge applications within the Aleo ecosystem.

## About the Chinese Lunar Calendar

The Chinese Lunar Calendar, also known as the Chinese Zodiac, is a lunisolar calendar that incorporates elements of a lunar calendar with those of a solar calendar. It is not only a means to gauge time but also a cultural cornerstone that influences many aspects of Chinese traditional life including festivals, auspicious dates, zodiac compatibility, and more.

In this calendar, a cycle is composed of 60 years, and each year within the cycle is represented by one of twelve animals and one of five elements. This cycle is a combination of the 12-year animal cycle (rat, ox, tiger, rabbit, dragon, snake, horse, goat, monkey, rooster, dog, pig) and the 5-year cycle of elements (wood, fire, earth, metal, water).

The animal cycle is known as the '12 Earthly Branches', while the elemental cycle is called the '10 Heavenly Stems'. Each year in the cycle is thus associated with an animal sign and an elemental sign. The program provided uses mathematical calculations to determine the animal and element associated with a given year.

## ID Mappings

In the provided Leo program, the animals and elements are mapped to numerical identifiers (IDs) as follows:

### Animals IDs:

- 0: Rat
- 1: Ox
- 2: Tiger
- 3: Rabbit
- 4: Dragon
- 5: Snake
- 6: Horse
- 7: Goat
- 8: Monkey
- 9: Rooster
- 10: Dog
- 11: Pig

### Element IDs:

- 0: Wood
- 1: Fire
- 2: Earth
- 3: Metal
- 4: Water

## Leo Code

```leo
program chinese_calendar.aleo {
    transition year_to_chinese_name(year: u16) -> (u8, u8) {
        assert (year < 10000u16);
        assert (year >= 4u16);
        year = year - 4u16;
        let animal: u8 = (year % 12u16) as u8;
        let element: u8 = (year / 12u16 % 10u16) as u8;
        return (element, animal);
    }
}
```

## How It Works

The program defines a single function `year_to_chinese_name` which takes a year as input and returns a tuple consisting of two `u8` numbers: the first representing the element and the second the animal.

The year must be a number greater than or equal to 4 and less than 10000. The calculation adjusts the year by subtracting 4 (since the cycle starts from the year 4 A.D. in this system), and then it uses modulo operations to find the respective IDs for the element and animal.

## [Setup and Execution Instructions](https://developer.aleo.org/leo/commands#leo-run)

To run this program, follow the instructions in the [Aleo Developer Documentation](https://developer.aleo.org/leo/commands#leo-run) to install the Leo Compiler and run the program.
