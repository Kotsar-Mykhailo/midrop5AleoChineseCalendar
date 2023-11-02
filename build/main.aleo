program chinese_calendar.aleo;



function year_to_chinese_name:
    input r0 as u16.private;
    lt r0 10000u16 into r1;
    assert.eq r1 true;
    gte r0 4u16 into r2;
    assert.eq r2 true;
    sub r0 4u16 into r3;
    rem r3 12u16 into r4;
    cast r4 into r5 as u8;
    div r3 12u16 into r6;
    rem r6 10u16 into r7;
    cast r7 into r8 as u8;
    output r8 as u8.private;
    output r5 as u8.private;
