uses
   crt;

const
   w = 150;
   h = 50;
   CH1 = 1;
   CH2 = 2;
   CH3 = 3;
   CH4 = 4;
   CH5 = 5;
   BOSS = 6;
   MAGAZ = -1;
   //for magaz
   pr_lib = 10;
   pr_meb = 30;
   pr_stb = 75;
   pr_shi = 100;
   pr_fue = 80;

procedure fon(a: integer);
begin
   textbackground(a);
   write('q');
   clrscr;
end;

procedure interfeis(h, w: integer);

var
   x, y: integer;
begin
   textcolor(11);
   x := 25;
   gotoxy(x, 5);
   write('╔');
   repeat
      inc(x);
      gotoxy(x, 5);
      write('═');
   until x + 11 = w;
   write('╗');
   y := 6;
   repeat
      gotoxy(25, y);
      write('║');
      inc(y);
   until y + 7 = h;
   write('╚');
   x := 25;
   repeat
      inc(x);
      gotoxy(x, y);
      write('═');
      
   until x + 11 = w;
   write('╝');
   dec(y);
   repeat
      gotoxy(x + 1, y);
      write('║');
      dec(y);
   until y - 5 = 0;
   //OCHKIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
   gotoxy(1, 1);
   writeln('HEALTH');
   gotoxy(1, 2);
   writeln('┌───────────────────────────┐');
   gotoxy(1, 3);
   writeln('│                           │'); 
   gotoxy(1, 4);
   writeln('└───────────────────────────┘');
   
   gotoxy(30, 1);
   writeln('AMMO');
   gotoxy(30, 2);
   writeln('┌───────────────────────────┐');
   gotoxy(30, 3);
   writeln('│                           │'); 
   gotoxy(30, 4);
   writeln('└───────────────────────────┘');
   
   gotoxy(60, 1);
   writeln('MONEY');
   gotoxy(60, 2);
   writeln('┌───────────────────────────┐');
   gotoxy(60, 3);
   writeln('│$$                         │'); 
   gotoxy(60, 4);
   writeln('└───────────────────────────┘');
   
   gotoxy(90, 1);
   writeln('ARMOR');
   gotoxy(90, 2);
   writeln('┌───────────────────────────┐');
   gotoxy(90, 3);
   writeln('│%%                         │'); 
   gotoxy(90, 4);
   writeln('└───────────────────────────┘');
   
   gotoxy(4, 5);
   textcolor(lightcyan);
   writeln('Tutorial');
   gotoxy(1, 6);
   writeln('Передвижение');
   gotoxy(1, 7);
   writeln('w - Вверх');
   gotoxy(1, 8);
   writeln('a - Влево');
   gotoxy(1, 9);
   writeln('s - Вниз');
   gotoxy(1, 10);
   writeln('d - Вправо');
   gotoxy(1, 11);
   writeln('ПРОБЕЛ - fire');
   gotoxy(1, 12);
   writeln('Объекты');
   gotoxy(1, 13);
   textcolor(red);
   writeln('#');
   gotoxy(1, 14);
   textcolor(green);
   writeln('*');
   gotoxy(1, 15);
   textcolor(yellow);
   writeln('@');
   gotoxy(1, 16);
   textcolor(lightcyan);
   writeln('$');
   gotoxy(1, 17);
   textcolor(lightred);
   writeln('>');
   textcolor(lightcyan);
   gotoxy(2, 13);
   writeln(' - уменьш. здоров.');
   gotoxy(2, 14);
   writeln(' - увелич. здоров.');
   gotoxy(2, 15);
   writeln(' - добавл. патронов');
   gotoxy(2, 16);
   writeln(' - прибавл. денег');
   gotoxy(2, 17);
   writeln(' - уничтож. др. об.');
   gotoxy(1, 18);
   writeln('Примечания');
   gotoxy(1, 19);
   writeln('1)Бонусы можно собирать');
   gotoxy(1, 20);
   writeln('только передней частью');
   gotoxy(1, 21);
   writeln('корабля.');
   gotoxy(1, 22);
   writeln('2)Иногда бонус с день-');
   gotoxy(1, 23);
   writeln('гами кроет в себе анти-');
   gotoxy(1, 24);
   writeln('бонус с уменьшением');
   gotoxy(1, 25);
   writeln('здоровья.')
end;

procedure makcimel(x, y: integer);
var
   i: integer;
   ch1: char;
begin
   repeat
      textbackground(7);
      textcolor(random(16));
      if keypressed then ch1 := readkey;
      gotoxy(x, y);
      writeln('  ▐███    ███▀ █████████ ████`████`▐████████▌ ███ ▄███    ███▌▐█████████ ███╛     (C) ');  
      gotoxy(x, y + 1);
      writeln('  ▓▓▓▓▓ █▓▓▓▓ ▓▓▓▄▀▓▓▓▓`▄▓▓▓▌▄▓▓▓▌,▓▓▓─      ▓▓▓▌▐▓▓▓▓▌ ▓▓▓▓▓ ▓▓▓▓▄▄▄▄▄ █▓▓▓        ');  
      gotoxy(x, y + 2);
      writeln('  █▓▓▓▐▓▓▐▓▓▓`▄▓▓████▓▓▌┌▓▓▓▓▓     ▓▓▓▌      █▓▓▓ ▓▓▓▀▓▓▀▓▓▓▓ ▓▓▓▓▓▓▓▓▓`▄▓▓▓        ');  
      gotoxy(x, y + 3);
      writeln(' ▄▓██    ▓▓▓▌▐▓▓▓▓▐▓▓▓▓ ▓▓▓▓ ▓▓▓▓ █▓▓▓█████─▐▓▓▓ ▓▓▓▓   ┌▓▓▓`▄▓▓▓█████P┌▓▓▓▓████▌   ');
      gotoxy(x, y + 4);
      writeln('``▄▄▄▄▄▄▄▄▄`▄▄▄▄▄▄▄▄▄▀▐▄▄▄▄▄▄▄▄▌`▄▄▄▄▄▄▄▄▄`▄▄▄▄▄▄▄▄▄▀▐▄▄▄``▄▄▄▌▐▄▄▄▄▄▄▄▄▄`▄▄▄▄▄,,,, '); 
      gotoxy(x, y + 5);
      writeln(' ▄▓▓▓▓▓▓▓▓▌┌▓▓▓▓▓▓▓▓▓ ▓▓▓▓▓▓▓▓▓ █▓▓▓▓▓▓▓▓▀▐▓▓▓▓▓▓▓▓▓ ▓▓▓▓ ╓▓▓▓ ▀▓▓▓▓▓▓▓▓▀▐▓▓▓▓▓▓▓▓▓ '); 
      gotoxy(x, y + 6);
      writeln(' ▐▓▓▓▓█▓▓▓▓ ▓▓▓▓█▓▓▓▓ █▓▓▓█████╛▐▓▓▓█████▌ ▓▓▓▓█████ █▓▓▓▓▄▓▓▓▀   ▓▓▓▓    ▓▓▓    ██ ');
      gotoxy(x, y + 7);
      writeln(' ▓▓▓▓▀▀▀▀▀ █▓▓▓▀▓▓▓▓`▐▓▓▓▀▀▀▀▀▀ ▀▀▀▀▀▓▓▓▓ █▓▓▓▀▀▀▀▀ ▐▓▓▓ █▓▓▓▓   █▓▓▓▌   "▀▀▀▀▀▓▓▓` ');  
      gotoxy(x, y + 8);
      writeln('▄█▓▓▓▄▄▄▄▄▄▄▓▓▓▓▄▓▓▓▓▄▓▓▓▓▓▓▓▓▓▄▓▓▓▓▓▓▓▓▓▄█▓▓▓▓▓▓▓▓▓▄▓▓▓▄▄█▓▓▓▄▄▄▄▓▓▓▓▄▄▄█▓▓▓▓▓▓▓▓▓ ');
      delay(random(50, 250));
      inc(i);
   until (ch1 = #13) or (i = 30);
end;

procedure kartinka;
begin
   textcolor(1);
   gotoxy(w div 5, h div 3);
   writeln('                                                      ,█▓▓▓▓▓░░░░░░░░░░░░░µ                    ,q█▓▓▀`,.  █Üäß  ,,╓▌  ' );
   gotoxy(w div 5, h div 3 + 1);
   writeln('                                                      ╓▓▓▓▓▓▓░░░░░░░░░░░░░╣U ,                ╠██▓▀    ¿` ╙#▄▄█▒▒▒▓▓` ' ); 
   gotoxy(w div 5, h div 3 + 2);
   writeln('                                                     ╓▓▓▓▒▓▀▒▒╩╝╜╙╙ÑÑK░░░░░▒,.m*"          ,▄█▓▀░═`k ╬gg≡▀▒░ ▀▀▀▀▀    ' ); 
   gotoxy(w div 5, h div 3 + 3);
   writeln('                                             ▄▄,   .╓▓▓▀▀`            ``╙9╣╡`╖ ┘"  @═╦∞y,g█▓▓▀ ,,║▄▒▒`      ╝,        ' ); 
   gotoxy(w div 5, h div 3 + 4);
   writeln('                                             ▐▓▓h` ,▓▀`                   `9  ╚▒╬▀▀▒▒░▒▒▓▒▓▒▄╫▒▀` `╚░y                ' ); 
   gotoxy(w div 5, h div 3 + 5);
   writeln('                                              ▓,, â▒                         k╓▒░ ▄ ▀▒▒▒╩▒░▀         `╙               ' ); 
   gotoxy(w div 5, h div 3 + 6);
   writeln('                                             @▒▒▒▒▒@¿                        ``░░;¿╓ÿ▒▒▒▄▓▓                           ' ); 
   gotoxy(w div 5, h div 3 + 7);
   writeln('                                            ▌  ┌▀ `╩▒▒▒╖╧,   ,,,            ╓▄µ░▒▓▓▓▒▓▓▀▀`▒k                          ' );
   gotoxy(w div 5, h div 3 + 8);
   writeln('                                           ╒,▄,      ╙▒░▒   ▓▒▒▒▌           █▓▓▓▓█   ▀░ ¡0╢g                          ' ); 
   gotoxy(w div 5, h div 3 + 9);
   writeln('                                           █▒▒▒▒▒▄  ╓╫╕╙░░║ ▓▀▀╧            ▓▓▓▓▓▓    ╘Wp╧░ ,/                        ' );
   gotoxy(w div 5, h div 3 + 10);
   writeln('                                           ▓▓▓▓▓▒▒▒▄     ▒░░░L           .,¿▓▓▓▓▓▓         ` ...                      ' );
   gotoxy(w div 5, h div 3 + 11);
   writeln('                                           ▐▓▓▓▓▒▒▒▒█ :   ▒░░y,          ▒▒▒▓▓▓▓▓▓▌       `w                          ' ); 
   gotoxy(w div 5, h div 3 + 12);
   writeln('                                            ▓▓▒▒▒▒▒▒▒█w:,, ▒░░        ,>░░▒▒▓▓▓▓▓▓▌         ╘,.                       ' );
   gotoxy(w div 5, h div 3 + 13);
   writeln('                                             ▒▒▒▒▓▒▒▒▒▓░░▒╛▐▒▒▒▌,;..,,.░╣▒▒▒▓▓▓▓▓▓▓           ╧,  :       ,           ' );
   gotoxy(w div 5, h div 3 + 14);
   writeln('                                              ╘▓▒▒▓▓▓▓▓▒░░░░▒▒▒▀░░«▌░░▒▒▒▒▒▒▓▓▓▓▓▓▓          .. 5       ╓╬▀           ' );
   gotoxy(w div 5, h div 3 + 15);
   writeln('                                                `▀▓▓▓▓▓▒▒░▒▒▓▓▓╥▒╣▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▌          ..:ÿ░╖  ,p, `            ' ); 
   gotoxy(w div 5, h div 3 + 16);
   writeln('                                                   "▀▓▓▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒█▓▓▓▓▒░▓▓▓▓▓            ``░▒▒▒ⁿ¿╜`              ' ); 
   gotoxy(w div 5, h div 3 + 17);
   writeln('                                                        ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▀▀░║░░░░▀▓▓▓               ▒` ╝`                ' ); 
   gotoxy(w div 5, h div 3 + 18);
   writeln('                                                           "▀▓▓▓▀▀▀` ,»░░░░░░``                ¿░ `                   ' );
end;

procedure loadbar(x, y: integer);
var
   c, x1, y1, m, l: integer;
   ch: char;
begin
   l := 1500;
   textcolor(11);
   gotoxy(x, y);
   writeln('┌───────────────────────────┐');
   gotoxy(x, y + 1);
   writeln('│                           │'); 
   gotoxy(x, y + 2);
   writeln('└───────────────────────────┘');
   c := 0;
   x1 := x;
   y1 := y;
   for x := x + 1 to x + 26 do 
   begin
      textcolor(cyan);
      gotoxy(x1 + 12, y1 - 1);
      writeln(c, ' %');
      gotoxy(x1 - 5, y1 + 4);
      m := random(1, 15);
      case m of
         1: writeln('.../shades/lolship/coolshipinspace.png');
         2: writeln('.../data/nesush/estvuyu/shii/fail.lol');
         3: writeln('.../data/dataofdata/dataofdataofdata/dataofdataofdataofdata.dataofdata');
         4: writeln('.../wooooow/looooool/suuuuuuch/doge.sobak');
         5: writeln('.../k0ddddddooooooo.ddd');
         6: writeln('.../shishka/shishi/shishka/shishi.mai');
         7: writeln('.../shades/star.png');
         8: writeln('.../shades/petrosyan.jpg');
         9: writeln('.../shades/asdfghjkl;zxcvnm,.dfdfdfdfdf');
         10: writeln('.../shades/.../game.exe');
         11: writeln('.../shades/dai.tool');
         12: writeln('.../shades/every/day/im/sof.ffiling');
         13: writeln('.../are/you/stupud.kqk');
         14: writeln('.../pngas/1.png');
         15: writeln('.../ascii/ascii.asc');
      end;
      if keypressed then ch := readkey;
      if ch = 'q' then begin
         dec(l, 500);
         ch := #1;
      end;
      delay(random(50, l));
      
      gotoxy(x, y + 1);
      write('█');
      
      gotoxy(x1 + 12, y1 - 1);
      textcolor(7);
      writeln(c, ' %');
      textcolor(11);
      c := c + 4;
      gotoxy(x1 - 5, y1 + 4);
      textcolor(7);
      textbackground(7);
      writeln('███████████████████████████████████████████████████████████████████████████████████████████');
      //lol
   end;
end;

procedure loadbar1(x, y: integer);
begin
   textcolor(7);
   textbackground(7);
   gotoxy(x, y - 1);
   writeln('┌───────────────────────────┐');
   gotoxy(x, y);
   writeln('┌───────────────────────────┐');
   gotoxy(x, y + 1);
   writeln('│───────────────────────────│'); 
   gotoxy(x, y + 2);
   writeln('└───────────────────────────┘');
end;

procedure ProgramSPace;
begin
   textcolor(red);
   textbackground(cyan);
   gotoxy(w div 3, 2);
   writeln('▓▓▓▓██                                               g█████                           ');
   gotoxy(w div 3, 3);
   writeln('▓█  ▓▓ █▄███µ y███µ  ┌████  █▄███  g███▄ ██▄██▌██▄   ▓▓g     █████   ▄███▄  ╓███µ  ████▄   ');
   gotoxy(w div 3, 4);
   writeln('▓██▓▓  ▓▓▀ ▓▀█▓█ █▓ █▓▓u─▓▓ ▓▓▀ ▓ █▓▀ ▓▓ ▓▓▓▐▓▓▐▓▓   ▀▓▓▓▓█▌ ▓▓▀ ▓▓ █▓▀ ▓▓ █▓▀ ▀▀ █▓█▓▓▓        ');
   gotoxy(w div 3, 5);
   writeln('▓      ▓▓    ▓▓  ▐▓ ▓▓  █▓M ▓─    ▓█  ▓▓ ▓▓  ▓█  ▓æ █     ▓▓ ▓▓  █▓ ▓▌  ▓▓ ▓▓   ¿ ▓▓▓▀ ▄ƒ            ');
   gotoxy(w div 3, 6);
   writeln('▓      ▓█     ▓▓█▓▀  ▓▓▓▓▓  ▓     ▀▀██▓▓ ▓▓  ▓▓  ▓█ ▓▀███▓▓  ▓▓██▓▐ █▀█▓▓▓ ╚▓▓█▓▓ ▀▓▓█▓▓─       ');
   gotoxy(w div 3, 7);
   writeln('                    █████▓                                   ▓▓                            ');
   gotoxy(w div 3, 8);
   writeln('                    ∩▀█▀∩                                    ▀▀                       ');
end;

procedure Stars(h, w: integer);
var
   i: integer;
begin
   textbackground(7);
   textcolor(white);
   for i := 1 to 90 do 
   begin
      gotoxy(random(1, w), random(1, h));
      writeln('*');
   end;
end;

procedure ship(l1, l2, l3, l4, l5: string; x, y: integer);
begin
   textcolor(green);
   gotoxy(x, y);
   writeln(l1);
   gotoxy(x, y + 1);
   writeln(l2);
   gotoxy(x, y + 2);
   writeln(l3);
   gotoxy(x, y + 3);
   writeln(l4);
   gotoxy(x, y + 4);
   writeln(l5);
end;

procedure ship1(l1, l2, l3, l4, l5: string; x, y: integer);
begin
   textcolor(0);
   gotoxy(x, y);
   writeln(l1);
   gotoxy(x, y + 1);
   writeln(l2);
   gotoxy(x, y + 2);
   writeln(l3);
   gotoxy(x, y + 3);
   writeln(l4);
   gotoxy(x, y + 4);
   writeln(l5);
end;

procedure zhealth(q, indhe: integer);

var
   x, prevx: integer;
begin
   textcolor(0);
   for x := 2 to 28 do 
   begin
      gotoxy(x, 3);
      write('█')
   end;
   prevx := 1;
   if q >= 13 then textcolor(green)
   else if q >= 6 then textcolor(yellow)
   else if q >= 0 then textcolor(red);
   if q < 0 then begin
      textcolor(red);
      gotoxy(w div 3, h div 3);                                                                                                      
      writeln('    g██▓██▄       ▄▄      ▄█▌   ▄█▌   █▓█▓▓▓▓▓█          ▄▄████▄   ██     ▄█h,█▓▓▓▓▓▓▓═▄████▄    ');
      gotoxy(w div 3, h div 3 + 1);  
      writeln('  ▄▓▓▀^ ²▀      ▄▓▓▓     █▓▓▌  █▓▓▌  ▐▓▓     .        ╓█▓▓▀`╙²▓▓▓ ▐▓▓   ▄▓▓" ▓▓▀      ▐▓▓╙²▀▓▓─  ');
      gotoxy(w div 3, h div 3 + 2); 
      writeln('g▓▓╛,¿g▄▄▄   ,▄▓▀▓▓▌   ,▓▓▓▓ g▓▓▓▓  ╓▓▓█████▌        █▓▀      ▓▓▀ ▐▓▓ ,█▓▀  █▓▓█████  ▓▓  ,▄▓▓─  ');
      gotoxy(w div 3, h div 3 + 3); 
      writeln('▄▓▓▐▓▓▓▓▓▓▀ g█▓▓▓█▓▓▌  ▄▓▓▐▓▓█▓▀▐▓▓ ,▓▓▀▀▀▀²╙        ▓▓▌     ,█▓▀  █▓▌▄▓▓   ▄▓▓▀▀▀▀`` ▓▓▓▓▓▓▀▀   ');
      gotoxy(w div 3, h div 3 + 4); 
      writeln('▓▓g,¿▄█▓▀  █▓▓└└""▓▓─ █▓▓ ▐▓▓▓" █▓▌ ▓▓─   ,          ▓▓█g,;▄█▓▀    ▓▓▓▓▀   ▐▓▓    ,  ▄▓▌└▀▓▓▓▄   ');
      gotoxy(w div 3, h div 3 + 5); 
      writeln('▀▓▓▓▓▀▀   ▀▀"     ▀▀ ▐▓▀  ▐▓▀   ▓▓╛ ▓▓▓▓▓▓▓▀          ▀▓▓▓▓▀²      ▀▓▀     ▐▓▓▓▓▓▓▓  ▓▀    ╘▀▀   ');
      delay(9999999);
   end;
   if q > 28 * indhe then q := 28 * indhe;
   x := 2;
   while x < q do 
   begin
      if x mod indhe div 37 = 0 then begin
         gotoxy(prevx + 1, 3);
         write('█');
         inc(prevx);
      end;
      inc(x);
   end;
end;

procedure zammo(q: integer);

var
   x: integer;
begin
   textcolor(0);
   for x := 1 to 28 do 
   begin
      gotoxy(x + 30, 3);
      write('█')
   end;
   x := 1;
   if q > 28 then q := 28;
   textcolor(yellow);
   while x < q do 
   begin
      gotoxy(x + 30, 3);
      write('█ ');
      inc(x, 2);
   end;
end;

procedure zmoney(q: integer);
var
   x: integer;
begin
   textcolor(0);
   for x := 1 to 25 do 
   begin
      gotoxy(x + 62, 3);
      write('█')
   end;
   textcolor(11);
   gotoxy(63, 3);
   writeln(q);
end;

procedure zarmor(q: integer);
var
   x: integer;
begin
   textcolor(0);
   for x := 1 to 25 do 
   begin
      gotoxy(x + 92, 3);
      write('█')
   end;
   if q > 100 then q := 100;
   textcolor(11);
   gotoxy(93, 3);
   writeln(q);
end;

procedure healthcube(x, y: integer);
begin
   textcolor(green);
   gotoxy(x, y);
   writeln('*');
end;

procedure ammobox(x, y: integer);
begin
   textcolor(yellow);
   gotoxy(x, y);
   writeln('@');
end;

procedure moneybox(x, y: integer);
begin
   textcolor(lightcyan);
   gotoxy(x, y);
   writeln('$');
end;

procedure damagecube(x, y: integer);
begin
   textcolor(red);
   gotoxy(x, y);
   writeln('#');
end;


procedure talking(name, text: string; h, w: integer);
var
   x, y: integer;
begin
   textcolor(lightcyan);
   gotoxy(h - 6, w div 10);
   write('');
   for x := w div 10 + 1 to w - w div 10 - 1  do 
   begin
      gotoxy(x, h - 6);
      write('─');
   end;
   gotoxy(w - w div 10, h - 6);
   inc(x);
   write('┐');
   for y := h - 5 to h - 1 do 
   begin
      gotoxy(x, y);
      write('│')
   end;
   gotoxy(x, y + 1);
   inc(y);
   write('┘');
   for x := x - 1 downto w div 10 + 1 do 
   begin
      gotoxy(x, y);
      write('─');
   end;
   gotoxy(w div 10, y);
   dec(x);
   write('└');
   
   for y := y - 1 downto h - 5 do 
   begin
      gotoxy(x, y);
      write('│')
   end;
   gotoxy(x + 1, y);
   textcolor(lightgreen);
   writeln(name);
   textcolor(red);
   gotoxy(x + 1, y + 2);
   writeln(text);
end;

procedure talking1(name, text: string; h, w: integer);
var
   x, y: integer;
begin
   textcolor(0);
   gotoxy(h - 6, w div 10);
   write('┌');
   for x := w div 10 + 1 to w - w div 10 - 1  do 
   begin
      gotoxy(x, h - 6);
      write('─');
   end;
   gotoxy(w - w div 10, h - 6);
   inc(x);
   write('┐');
   for y := h - 5 to h - 1 do 
   begin
      gotoxy(x, y);
      write('│')
   end;
   gotoxy(x, y + 1);
   inc(y);
   write('┘');
   for x := x - 1 downto w div 10 + 1 do 
   begin
      gotoxy(x, y);
      write('─');
   end;
   gotoxy(w div 10, y);
   dec(x);
   write('└');
   
   for y := y - 1 downto h - 5 do 
   begin
      gotoxy(x, y);
      write('│')
   end;
   gotoxy(x + 1, y);
   textcolor(0);
   writeln(name);
   textcolor(0);
   gotoxy(x + 1, y + 2);
   writeln(text);
end;

procedure license(h, w: integer);
var
   x, y, i, j: integer;
   key: string;
begin
   textcolor(lightcyan);
   textbackground(blue);
   gotoxy(w div 4, h div 3);
   write('┌');
   for x := w div 4 + 1 to w - w div 4 - 1 do 
   begin
      gotoxy(x, h div 3);
      write('─');
   end;
   gotoxy(x + 1, h div 3);
   write('┐');
   for y := h div 3 + 1 to h - h div 3 - 1 do 
   begin
      gotoxy(x + 1, y);
      write('│');
   end;
   gotoxy(x + 1, y + 1);
   write('┘');
   for x := x + 1 downto w div 4 + 1 do 
   begin
      gotoxy(x, y + 1);
      write('─');
   end;
   gotoxy(x - 1, y + 1);
   write('└');
   for y := y downto h div 3 + 1 do 
   begin
      gotoxy(x - 1, y);
      write('│')
   end;
   for i := y to h - h div 3 - 1 do
      for j := x to w - w div 4 - 1 do 
      begin
         gotoxy(j, i);
         write(' ');
      end;
   gotoxy(w div 4 + w div 6, h div 3 + 1);
   textcolor(red);
   textbackground(lightgray);
   writeln('Please, enter the license key');
   gotoxy(w div 4 + w div 6 + 10, h div 3 + 2);
   readln(key);
   if (key <> '12345678910') and (key <> 'ABCDEFG') and (key <> 'ABVGDE') and (key <> '11235813') and (key <> 'QWERTY') and (key <> '89031270454') then begin
      gotoxy(w div 4 + w div 6 - 1, h div 3 + 3);
      writeln('За тобой выехали, жалкий пират');
      delay(99999999);
   end
   else begin
      textcolor(lightgreen);
      gotoxy(w div 4 + w div 6 + 11, h div 3 + 3);
      writeln('Succes!');
      delay(2000);
   end;
end;

procedure interfeism(h, w: integer);
var
   x, y: integer;
begin
   textcolor(11);
   x := 25;
   gotoxy(x, 5);
   write('╔');
   repeat
      inc(x);
      gotoxy(x, 5);
      write('═');
   until x + 11 = w;
   write('╗');
   y := 6;
   repeat
      gotoxy(25, y);
      write('║');
      inc(y);
   until y + 7 = h;
   write('╚');
   x := 25;
   repeat
      inc(x);
      gotoxy(x, y);
      write('═');
      
   until x + 11 = w;
   write('╝');
   dec(y);
   repeat
      gotoxy(x + 1, y);
      write('║');
      dec(y);
   until y - 5 = 0;
   
   
   
   
   textcolor(11);
   x := w - 63;
   gotoxy(x, 7);
   write('╔');
   repeat
      inc(x);
      gotoxy(x, 7);
      write('═');
   until x + 13 = w;
   write('╗');
   inc(x);
   y := 7;
   repeat
      inc(y);
      gotoxy(x, y);
      write('║');
   until y + 8 = h;
   gotoxy(w - 12, h - 8);
   write('╝');
   x := w - 63;
   repeat
      inc(x);
      gotoxy(x, y);
      write('═');
      
   until x + 13 = w;
   gotoxy(w - 63, h - 8);
   write('╚');
   dec(y);
   repeat
      gotoxy(w - 63, y);
      write('║');
      dec(y);
   until y - 7 = 0;
   
   
   textcolor(11);
   x := w div 5;
   gotoxy(x, 45);
   write('╔');
   repeat
      inc(x);
      gotoxy(x, 45);
      write('═');
   until x = w - (w div 5) * 3;
   write('╗');
   inc(x);
   y := 45;
   repeat
      inc(y);
      gotoxy(x, y);
      write('║');
   until y = 57;
   gotoxy(w div 5 + w div 5 + 1, 57);
   write('╝');
   x := w div 5;
   repeat
      inc(x);
      gotoxy(x, y);
      write('═');
      
   until x = w - (w div 5) * 3;
   gotoxy(w div 5, 57);
   write('╚');
   dec(y);
   repeat
      gotoxy(w div 5, y);
      write('║');
      dec(y);
   until y = 45;
   gotoxy(w div 5, 43);
   writeln('Прошлый дизайн');
   gotoxy(w div 5 + 25, 43);
   writeln('Новый дизайн');
   gotoxy(w div 5 + 25, 48);
   writeln('[     ]');
   gotoxy(w div 5 + 25, 49);
   writeln('[         ]');
   gotoxy(w div 5 + 25, 50);
   writeln('[         ]');
   gotoxy(w div 5 + 25, 51);
   writeln('[         ]');
   gotoxy(w div 5 + 25, 52);
   writeln('[     ]');
   
   gotoxy(1, 1);
   writeln('HEALTH');
   gotoxy(1, 2);
   writeln('┌───────────────────────────┐');
   gotoxy(1, 3);
   writeln('│                           │'); 
   gotoxy(1, 4);
   writeln('└───────────────────────────┘');
   
   gotoxy(30, 1);
   writeln('AMMO');
   gotoxy(30, 2);
   writeln('┌───────────────────────────┐');
   gotoxy(30, 3);
   writeln('│                           │'); 
   gotoxy(30, 4);
   writeln('└───────────────────────────┘');
   
   gotoxy(60, 1);
   writeln('MONEY');
   gotoxy(60, 2);
   writeln('┌───────────────────────────┐');
   gotoxy(60, 3);
   writeln('│$$                         │'); 
   gotoxy(60, 4);
   writeln('└───────────────────────────┘');
   
   gotoxy(90, 1);
   writeln('ARMOR');
   gotoxy(90, 2);
   writeln('┌───────────────────────────┐');
   gotoxy(90, 3);
   writeln('│%%                         │'); 
   gotoxy(90, 4);
   writeln('└───────────────────────────┘');
   
end;

procedure inv(kol_lib, kol_meb, kol_stb, kol_shi, w: integer);
begin
   textcolor(0);
   gotoxy(w - 60, 10);
   writeln('│ x ', kol_lib * 10);
   gotoxy(w - 50, 10);
   writeln('║ x ', kol_meb * 10);
   gotoxy(w - 60, 12);
   writeln('█ x ', kol_stb * 10);
   gotoxy(w - 50, 12);
   writeln('S x ', kol_shi * 10);
   textcolor(lightgreen);
   gotoxy(w - 60, 10);
   writeln('│ x ', kol_lib);
   gotoxy(w - 50, 10);
   writeln('║ x ', kol_meb);
   gotoxy(w - 60, 12);
   writeln('█ x ', kol_stb);
   gotoxy(w - 50, 12);
   writeln('S x ', kol_shi);
end;

procedure shop(pr_lib, pr_meb, pr_stb, pr_shi, w: integer);
begin
   textcolor(lightgreen);
   gotoxy(w - 60, 20);
   writeln('│ = ', pr_lib, ' $$');
   gotoxy(w - 50, 20);
   writeln('║ = ', pr_meb, ' $$');
   gotoxy(w - 60, 22);
   writeln('█ = ', pr_stb, ' $$');
   gotoxy(w - 50, 22);
   writeln('S = ', pr_shi, ' $$');
end;

procedure mmagaz(h, w: integer);
begin
   textcolor(lightgreen);
   gotoxy(w - 24, h div 2);
   writeln('---------¬');
   gotoxy(w - 24, h div 2 + 1);
   writeln('         ║');
   gotoxy(w - 24, h div 2 + 2);
   writeln('         ║');
   gotoxy(w - 24, h div 2 + 3);
   writeln('         ║');
   gotoxy(w - 24, h div 2 + 4);
   writeln('         ║');
   gotoxy(w - 24, h div 2 + 5);
   writeln('         ║');
   gotoxy(w - 24, h div 2 + 6);
   writeln('----------');
end;

procedure bosshealth(h, w: integer);
begin
   textcolor(lightcyan);
   gotoxy(w - 32, 1);
   write('BOSS HEALTH');
   gotoxy(w - 75, 2);
   writeln('┌─────────────────────────────────────────────────────────────────────────────────┐');
   gotoxy(w - 75, 3);
   writeln('│                                                                                 │'); 
   gotoxy(w - 75, 4);
   writeln('└─────────────────────────────────────────────────────────────────────────────────┘');
end;

procedure zbhealth(q, h, w: integer);
var
   x: integer;
begin
   textcolor(0);
   for x := 1 to 81 do 
   begin
      gotoxy(w - 75 + x, 3);
      write('█')
   end;
   if q >= 13 then textcolor(green)
   else if q >= 6 then textcolor(yellow)
   else if q >= 0 then textcolor(red);
   if q < 0 then begin
      textcolor(red);
      gotoxy(w div 3, h div 3);                                                                                                      
      writeln('    g██▓██▄       ▄▄      ▄█▌   ▄█▌   █▓█▓▓▓▓▓█          ▄▄████▄   ██     ▄█h,█▓▓▓▓▓▓▓═▄████▄    ');
      gotoxy(w div 3, h div 3 + 1);  
      writeln('  ▄▓▓▀^ ²▀      ▄▓▓▓     █▓▓▌  █▓▓▌  ▐▓▓     .        ╓█▓▓▀`╙²▓▓▓ ▐▓▓   ▄▓▓" ▓▓▀      ▐▓▓╙²▀▓▓─  ');
      gotoxy(w div 3, h div 3 + 2); 
      writeln('g▓▓╛,¿g▄▄▄   ,▄▓▀▓▓▌   ,▓▓▓▓ g▓▓▓▓  ╓▓▓█████▌        █▓▀      ▓▓▀ ▐▓▓ ,█▓▀  █▓▓█████  ▓▓  ,▄▓▓─  ');
      gotoxy(w div 3, h div 3 + 3); 
      writeln('▄▓▓▐▓▓▓▓▓▓▀ g█▓▓▓█▓▓▌  ▄▓▓▐▓▓█▓▀▐▓▓ ,▓▓▀▀▀▀²╙        ▓▓▌     ,█▓▀  █▓▌▄▓▓   ▄▓▓▀▀▀▀`` ▓▓▓▓▓▓▀▀   ');
      gotoxy(w div 3, h div 3 + 4); 
      writeln('▓▓g,¿▄█▓▀  █▓▓└└""▓▓─ █▓▓ ▐▓▓▓" █▓▌ ▓▓─   ,          ▓▓█g,;▄█▓▀    ▓▓▓▓▀   ▐▓▓    ,  ▄▓▌└▀▓▓▓▄   ');
      gotoxy(w div 3, h div 3 + 5); 
      writeln('▀▓▓▓▓▀▀   ▀▀"     ▀▀ ▐▓▀  ▐▓▀   ▓▓╛ ▓▓▓▓▓▓▓▀          ▀▓▓▓▓▀²      ▀▓▀     ▐▓▓▓▓▓▓▓  ▓▀    ╘▀▀   YOU WIN!');
      delay(9999999);
   end;
   if q >= 13 then textcolor(green)
   else if q >= 6 then textcolor(yellow)
   else if q >= 0 then textcolor(red);
   for x := 50 downto  q  do 
   begin
      gotoxy( x+ w - 75, 3);
      write('█')
   end;
end;

function nextb(ch: char): char;
begin
   if (ch = '─') or (ch = '│') or (ch = '┌') or (ch = '┐') or (ch = '└') or (ch = '┘') or (ch = ' ') then nextb := '║'
   else if (ch = '═') or (ch = '║') or (ch = '╔') or (ch = '╗') or (ch = '╚') or (ch = '╝') then nextb := '█'
   else if ch = '█' then nextb := 'S'
   else if ch = 'S' then nextb := '│'
end;

function prevb(ch: char): char;
begin
   if (ch = '─') or (ch = '│') or (ch = '┌') or (ch = '┐') or (ch = '└') or (ch = '┘') or (ch = ' ') then prevb := 'S'
   else if ch = 'S' then prevb := '█'
   else if ch = '█' then prevb := '║'
   else if (ch = '═') or (ch = '║') or (ch = '╔') or (ch = '╗') or (ch = '╚') or (ch = '╝') then prevb := '│'
end;

function nextv(ch: char): char;
begin
   if ch = '│' then nextv := '─'
   else
   if ch = '─' then nextv := '┌'
   else
   if ch = '┌' then nextv := '┐'
   else
   if ch = '┐' then nextv := '└'
   else
   if ch = '└' then nextv := '┘'
   else
   if ch = '┘' then nextv := ' '
   else
   if ch = ' ' then nextv := '│'
   else
   
   if ch = '║' then nextv := '═'
   else
   if ch = '═' then nextv := '╔'
   else
   if ch = '╔' then nextv := '╗'
   else
   if ch = '╗' then nextv := '╚'
   else
   if ch = '╚' then nextv := '╝'
   else
   if ch = '╝' then nextv := '║'
   else
   
   if ch = '█' then nextv := '█'
   else
   
   if ch = 'S' then nextv := 'S'
else
end;

var
   x, y, x1, y1, x2, y2, x3, y3, he, am, mo, ar, n, CHAPTER, sx, sy, indhe, dx, dy, nextch: integer;
   ch: char;
   l1, l2, l3, l4, l5, name: string;
   onetalk: boolean;
   ac: array[1..w, 1..h] of integer;
   nac: integer;
   j, i: integer;
   count: int64;
   speedofgame: integer;
   
   //for magaz
   
   c, c1: integer;
   
   cur: char;
   kol_lib, kol_meb, kol_stb, kol_shi: integer;
   tmp_lib, tmp_meb, tmp_stb, tmp_shi: integer;
   
   //for boss
   
   bhealth: integer;

begin
   randomize;
   l1 := '┌───┐';
   l2 := '├ g └───┐';
   l3 := '├  0 0☺ ┤';
   l4 := '├ g ┌───┘';
   l5 := '└───┘';
   
   //Zastavka
   fon(7);
   stars(h, w);
   kartinka;
   loadbar(w div 5 + w div 5, h div 3 + h div 3);
   ProgramSPace;
   loadbar1(w div 5 + w div 5, h div 3 + h div 3);
   makcimel(w div 3, h div 5);
   license(h, w);
   gotoxy(w div 5 + w div 5, h div 3 + h div 3);
   textcolor(2);
   writeln('Press ENTER to start game');
   ch := #1;
   repeat
      if keypressed then ch := readkey;
   until ch = #13;
   ch := #1;
   {IGRA}
   fon(0);
   textcolor(red);
   gotoxy(w div 2, h div 2);
   writeln('Please, type the name of your capitan');
   gotoxy(w div 2, h div 2 + 1);
   readln(name);
   if name = 'makcimel' then begin
      mo := 99999;
      am := 100;
      he := 100;
      ar := 99;
   end
   else begin
      mo := 100;
      am := 17;
      he := random(2, 13);
      ar := 0;
   end;
   c1 := 1;
   c := 0;
   clrscr;
   interfeis(h, w);
   bhealth := 0;
   //Nachal'nbIe znacheniaAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
   x := w div 10 + 10;
   y := h div 10;
   n := 0;
   ship(l1, l2, l3, l4, l5, x, y);
   indhe := 37;
   zhealth(he, indhe);
   zammo(am);
   zmoney(mo);
   zarmor(ar);
   nac := 100000;
   
   dx := w div 5 + 26;
   dy := 48;
   sx := -1;
   sy := -1;
   nextch := CH2;
   cur := '│';
   CHAPTER := CH1;
   //AGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
   x1 := random(w div 2, w - 11);
   x2 := random(w div 2, w - 11);
   x3 := random(w div 2, w - 11);
   y1 := random(6, h - 8);
   y2 := random(6, h - 8);
   y3 := random(6, h - 8);
   healthcube(x1, y1);
   healthcube(x2, y2);
   healthcube(x3, y3);
   inc(n, 3);
   talking(name, 'Я только что вышел из боя, мой корабль был сильно поврежден, нужно отремонтировать его', h, w);
   onetalk := true;
   speedofgame := 2000;
   kol_lib := 45;
   kol_meb := 0;
   kol_stb := 0;
   kol_shi := 0;
   
   tmp_lib := 0;
   tmp_meb := 0;
   tmp_stb := 0;
   tmp_shi := 0;
   
   
   
   
   
   while ch <> #27 do {TELOIGRIIII} 
   begin
      if keypressed then ch := readkey;
      if ch = #97 then 
         if  x - 1 < 26 then x := 26
         else begin
            
            if CHAPTER <> MAGAZ then  begin
               ship1(l1, l2, l3, l4, l5, x, y);
               dec(x);
               ship(l1, l2, l3, l4, l5, x, y)
            end
            else begin
               cur := prevb(cur);
               gotoxy(dx, dy);
               write(cur);
            end;
         end;
      if ch = #119 then 
         if  y - 1 < 6 then y := 6
         else begin
            if CHAPTER <> MAGAZ then  begin
               ship1(l1, l2, l3, l4, l5, x, y);
               dec(y);
               ship(l1, l2, l3, l4, l5, x, y)
            end
            else begin
               cur := nextv(cur);
               gotoxy(dx, dy);
               write(cur);
            end;
         end;
      if ch = #100 then 
         if  x + 10 > w - 10 then x := w - 19
         else begin
            if CHAPTER <> MAGAZ then  begin
               ship1(l1, l2, l3, l4, l5, x, y);
               inc(x);
               ship(l1, l2, l3, l4, l5, x, y)
            end
            else begin
               cur := nextb(cur); 
               gotoxy(dx, dy);
               write(cur);
            end;
         end;
      if ch = #115 then 
         if  y + 6 > h - 7 then y := h - 12
         else  begin
            if CHAPTER <> MAGAZ then  begin
               ship1(l1, l2, l3, l4, l5, x, y);
               inc(y);
               ship(l1, l2, l3, l4, l5, x, y)
            end
            else begin
               cur := nextv(cur);
               gotoxy(dx, dy);
               write(cur);
            end;
         end;
      //if (ch = 'p') and (CHAPTER = MAGAZ) then cur:=' ';
      if ch = #32 then begin
         if am <> 0 then begin
            if CHAPTER <> MAGAZ then begin
               if (am <> 0) {and (sx = -1)} then begin
                  if sx <> -1 then begin
                     textcolor(0);
                     gotoxy(sx, sy);
                     write('q');
                  end;
                  dec(am);
                  zammo(am);
                  sx := x + 8;
                  sy := y + 2;
               end;
            end
            else begin
               gotoxy(dx, dy);
               write(cur);
               if (dx = w div 5 + 30 ) and (dy = 48) then begin
                  dx := w div 5 + 26;
                  dy := 49;
               end
               else if (dx = w div 5 + 34 ) and (dy = 49) then begin
                  dx := w div 5 + 26;
                  dy := 50;
               end
               else if (dx = w div 5 + 34 ) and (dy = 50) then begin
                  dx := w div 5 + 26;
                  dy := 51;
               end
               else if (dx = w div 5 + 34 ) and (dy = 51) then begin
                  dx := w div 5 + 26;
                  dy := 52;
               end
               else if (dx = w div 5 + 30 ) and (dy = 52) then begin
                  delay(100);
                  clrscr;
                  onetalk := true;
                  CHAPTER := nextch;
                  dx := w div 5 + 26;
                  dy := 48;
                  x:=26;
                  y:=20;
                  c:=0;
               end
               else begin
                  textcolor(green);
                  if (cur = '│') or (cur = '┌') or (cur = '┐') or (cur = '└') or (cur = '┘') or (cur = '─') or (cur = ' ') then begin
                     inc(dx);
                     if kol_lib > 0 then begin
                        dec(kol_lib);
                        inc(indhe);
                        inv(kol_lib, kol_meb, kol_stb, kol_shi, w);
                        inc(tmp_lib);
                        
                        
                        inc(c);
                        if c <= 5 then l1 += cur
                        else
                        if c <= 14 then l2 += cur
                        else
                        if c <= 23 then l3 += cur
                        else
                        if c <= 32 then l4 += cur
                        else
                        if c <= 37 then l5 += cur;
                     end
                     else if mo >= pr_lib then begin
                        dec(mo, pr_lib);
                        inc(indhe);
                        zmoney(mo);
                        inc(tmp_lib);
                        
                        inc(c);
                        if c <= 5 then l1 += cur
                        else
                        if c <= 14 then l2 += cur
                        else
                        if c <= 23 then l3 += cur
                        else
                        if c <= 32 then l4 += cur
                        else
                        if c <= 37 then l5 += cur;
                     end
                     else dec(dx);
                  end;       
                  
                  if (cur = '║') or (cur = '═') or (cur = '╗') or (cur = '╔') or (cur = '╚') or (cur = '╝') then begin
                     inc(dx);
                     if kol_meb > 0 then begin
                        dec(kol_meb);
                        inc(indhe, 2);
                        inv(kol_lib, kol_meb, kol_stb, kol_shi, w);
                        inc(tmp_meb);
                        
                        inc(c);
                        if c <= 5 then l1 += cur
                        else
                        if c <= 14 then l2 += cur
                        else
                        if c <= 23 then l3 += cur
                        else
                        if c <= 32 then l4 += cur
                        else
                        if c <= 37 then l5 += cur;
                        
                     end
                     else if mo >= pr_meb then begin
                        dec(mo, pr_meb);
                        inc(indhe, 2);
                        zmoney(mo);
                        inc(tmp_meb);
                        
                        inc(c);
                        if c <= 5 then l1 += cur
                        else
                        if c <= 14 then l2 += cur
                        else
                        if c <= 23 then l3 += cur
                        else
                        if c <= 32 then l4 += cur
                        else
                        if c <= 37 then l5 += cur;
                        
                     end
                     else dec(dx);
                  end;    
                  
                  
                  if (cur = '█') then begin
                     inc(dx);
                     if kol_stb > 0 then begin
                        dec(kol_stb);
                        inc(indhe, 5);
                        inv(kol_lib, kol_meb, kol_stb, kol_shi, w);
                        inc(tmp_stb);
                        
                        inc(c);
                        if c <= 5 then l1 += cur
                        else
                        if c <= 14 then l2 += cur
                        else
                        if c <= 23 then l3 += cur
                        else
                        if c <= 32 then l4 += cur
                        else
                        if c <= 37 then l5 += cur;
                        
                     end
                     else if mo >= pr_stb then begin
                        dec(mo, pr_stb);
                        inc(indhe, 5);
                        zmoney(mo);
                        inc(tmp_stb);
                        
                        inc(c);
                        if c <= 5 then l1 += cur
                        else
                        if c <= 14 then l2 += cur
                        else
                        if c <= 23 then l3 += cur
                        else
                        if c <= 32 then l4 += cur
                        else
                        if c <= 37 then l5 += cur;
                     end
                     else dec(dx);
                  end;
                  if (cur = 'S') then begin
                     inc(dx);
                     if kol_shi > 0 then begin
                        dec(kol_shi);
                        inc(ar, 10);
                        zarmor(ar);
                        inv(kol_lib, kol_meb, kol_stb, kol_shi, w);
                        inc(tmp_stb);
                        
                        inc(c);
                        if c <= 5 then l1 += cur
                        else
                        if c <= 14 then l2 += cur
                        else
                        if c <= 23 then l3 += cur
                        else
                        if c <= 32 then l4 += cur
                        else
                        if c <= 37 then l5 += cur;
                     end
                     else if mo >= pr_shi then begin
                        dec(mo, pr_shi);
                        inc(ar, 10);
                        zarmor(ar);
                        zmoney(mo);
                        inc(tmp_stb);
                        
                        inc(c);
                        if c <= 5 then l1 += cur
                        else
                        if c <= 14 then l2 += cur
                        else
                        if c <= 23 then l3 += cur
                        else
                        if c <= 32 then l4 += cur
                        else
                        if c <= 37 then l5 += cur;
                     end
                     else dec(dx);
                     //if cur = ' ' then begin
                     //   inc(dx);
                     //end;
                  end;
               end;
            end;
         end;
      end;
      if (count mod (speedofgame div 2) = 0) and (sx <> -1) then begin
         inc(sx);
         gotoxy(sx - 1, sy);
         textcolor(0);
         write('q');
         gotoxy(sx, sy);
         textcolor(lightred);
         write('>');
         if sx = w - 12 then begin
            gotoxy(sx, sy);
            textcolor(0);
            write('q');
            sx := -1;
         end;
         
      end;
      ch := #1;
      inc(count);
      
      
      
      //CHARTERS.........................................................................................
      //CH1
      
      
      if CHAPTER = CH1 then begin
         if ((x + 8 = x1) and (y + 1 = y1)) or ((x + 8 = x1) and (y + 2 = y1)) or ((x + 8 = x1) and (y + 3 = y1)) or ((x + 4 = x1) and (y = y1)) or ((x + 4 = x1) and (y + 4 = y1)) then begin
            inc(he, 2);
            dec(n);
            x1 := 0;
            y1 := 0;
            zhealth(he, indhe);
            zammo(am);
            zmoney(mo);
         end;
         if ((x + 8 = x2) and (y + 1 = y2)) or ((x + 8 = x2) and (y + 2 = y2)) or ((x + 8 = x2) and (y + 3 = y2)) or ((x + 4 = x2) and (y = y2)) or ((x + 4 = x2) and (y + 4 = y2)) then begin
            inc(he, 2);
            dec(n);
            x2 := 0;
            y2 := 0;
            zhealth(he, indhe);
            zammo(am);
            zmoney(mo);
         end;
         if ((x + 8 = x3) and (y + 1 = y3)) or ((x + 8 = x3) and (y + 2 = y3)) or ((x + 8 = x3) and (y + 3 = y3)) or ((x + 4 = x3) and (y = y3)) or ((x + 4 = x3) and (y + 4 = y3)) then begin
            inc(he, 2);
            dec(n);
            x3 := 0;
            y3 := 0;
            zhealth(he, indhe);
            zammo(am);
            zmoney(mo);
         end;
         if n = 0 then begin
            CHAPTER := CH2;
            talking1(name, 'Я только что вышел из боя, мой корабль был сильно поврежден, нужно отремонтировать его', h, w);
            x1 := random(w div 2, w - 11);
            x2 := random(w div 2, w - 11);
            x3 := random(w div 2, w - 11);
            y1 := random(6, h - 8);
            y2 := random(6, h - 8);
            y3 := random(6, h - 8);
            ammobox(x1, y1);
            ammobox(x2, y2);
            ammobox(x3, y3);
            inc(n, 3);
         end;
      end;
      
      //CH2.................................................................................................................................................................................
      
      
      
      if CHAPTER = CH2 then begin
         if onetalk = true then talking(name, 'Теперь бы найти немношко боеприпасов...', h, w);
         onetalk := false;
         if ((x + 8 = x1) and (y + 1 = y1)) or ((x + 8 = x1) and (y + 2 = y1)) or ((x + 8 = x1) and (y + 3 = y1)) or ((x + 4 = x1) and (y = y1)) or ((x + 4 = x1) and (y + 4 = y1)) then begin
            inc(am, 1);
            dec(n);
            x1 := 0;
            y1 := 0;
            zhealth(he, indhe);
            zammo(am);
            zmoney(mo);
         end;
         if ((x + 8 = x2) and (y + 1 = y2)) or ((x + 8 = x2) and (y + 2 = y2)) or ((x + 8 = x2) and (y + 3 = y2)) or ((x + 4 = x2) and (y = y2)) or ((x + 4 = x2) and (y + 4 = y2)) then begin
            inc(am, 1);
            dec(n);
            x2 := 0;
            y2 := 0;
            zhealth(he, indhe);
            zammo(am);
            zmoney(mo);
         end;
         if ((x + 8 = x3) and (y + 1 = y3)) or ((x + 8 = x3) and (y + 2 = y3)) or ((x + 8 = x3) and (y + 3 = y3)) or ((x + 4 = x3) and (y = y3)) or ((x + 4 = x3) and (y + 4 = y3)) then begin
            inc(am, 1);
            dec(n);
            x3 := 0;
            y3 := 0;
            zhealth(he, indhe);
            zammo(am);
            zmoney(mo);
         end;
         if n = 0 then begin
            talking1(name, 'Теперь бы найти немношко боеприпасов...', h, w);
            CHAPTER := CH3;
            onetalk := true;
         end;
      end;
      
      
      //CH3..............................................................................................................................................................................................
      
      
      
      if CHAPTER = CH3 then begin
         if onetalk = true then begin
            talking(name, 'Теперь нужно найти 200$, для того, чтобы модернизировать свой корабль', h, w);
            onetalk := false;
         end;
         if mo < 200 then begin
            for j := 8 to h - 8 do 
            begin
               ac[w - 14, j] := random(nac);
            end;
            if count mod speedofgame = 0 then begin
               for i := 26 to w - 14 do
                  for j := 8 to h - 8 do 
                  begin
                     ac[i - 1, j] := ac[i, j];
                     
                     
                     if ac[i, j] mod 700 = 1 then begin
                        textcolor(0);
                        gotoxy(i + 1, j);
                        write(' ');
                        damagecube(i, j);
                        
                        if ((x + 8 = i) and (y + 1 = j)) or ((x + 8 = i) and (y + 2 = j)) or ((x + 8 = i) and (y + 3 = j)) or ((x + 4 = i) and (y = j)) or ((x + 4 = i) and (y + 4 = j)) then begin
                           dec(he, (random(1, 6) * (100 - ar)) div 100);
                           zhealth(he, indhe);
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                        end;
                        
                        if i = 26 then begin
                           textcolor(0);
                           gotoxy(i, j);
                           write(' ');
                        end;
                        
                        if (sy = j) and ((sx = i) or (sx + 1 = i) or (sx - 1 = i)) then  begin//CNARYAD
                           textcolor(0);
                           gotoxy(sx - 1, sy);
                           write('   '); 
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                           ac[i + 1, j] := 0;
                           sx := -1;
                        end;
                        
                        
                     end;
                     
                     
                     if ac[i, j] mod 6028 = 1 then begin
                        textcolor(0);
                        gotoxy(i + 1, j);
                        write(' ');
                        ammobox(i, j);
                        
                        
                        
                        if ((x + 8 = i) and (y + 1 = j)) or ((x + 8 = i) and (y + 2 = j)) or ((x + 8 = i) and (y + 3 = j)) or ((x + 4 = i) and (y = j)) or ((x + 4 = i) and (y + 4 = j)) then begin//KORABL
                           inc(am);
                           zammo(am);
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                        end;
                        
                        if i = 26 then begin//KONEC
                           textcolor(0);
                           gotoxy(i, j);
                           write(' ');
                        end;
                        
                        if (sy = j) and ((sx = i) or (sx + 1 = i) or (sx - 1 = i)) then  begin//CNARYAD
                           textcolor(0);
                           gotoxy(sx - 1, sy);
                           write('   '); 
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                           ac[i + 1, j] := 0;
                           sx := -1;
                        end;
                     end;
                     
                     
                     if ac[i, j] mod 5888 = 673 then begin
                        textcolor(0);
                        gotoxy(i + 1, j);
                        write(' ');
                        healthcube(i, j);
                        
                        
                        
                        if ((x + 8 = i) and (y + 1 = j)) or ((x + 8 = i) and (y + 2 = j)) or ((x + 8 = i) and (y + 3 = j)) or ((x + 4 = i) and (y = j)) or ((x + 4 = i) and (y + 4 = j)) then begin
                           inc(he);
                           zhealth(he, indhe);
                           ac[i - 1, j] := 0;
                           ac[i, j] := 0;
                        end;
                        
                        if i = 26 then begin
                           textcolor(0);
                           gotoxy(i, j);
                           write(' ');
                        end;
                        if (sy = j) and ((sx = i) or (sx + 1 = i) or (sx - 1 = i)) then  begin//CNARYAD
                           textcolor(0);
                           gotoxy(sx - 1, sy);
                           write('   '); 
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                           ac[i + 1, j] := 0;
                           sx := -1;
                        end;
                     end;
                     
                     
                     if ac[i, j] mod 2000 = 1 then begin
                        textcolor(0);
                        gotoxy(i + 1, j);
                        write(' ');
                        moneybox(i, j);
                        
                        
                        
                        if ((x + 8 = i) and (y + 1 = j)) or ((x + 8 = i) and (y + 2 = j)) or ((x + 8 = i) and (y + 3 = j)) or ((x + 4 = i) and (y = j)) or ((x + 4 = i) and (y + 4 = j)) then begin
                           inc(mo, random(1, 15));
                           zmoney(mo);
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                        end;
                        
                        if i = 26 then begin
                           textcolor(0);
                           gotoxy(i, j);
                           write(' ');
                        end;
                        
                        if (sy = j) and ((sx = i) or (sx + 1 = i) or (sx - 1 = i)) then  begin//CNARYAD
                           textcolor(0);
                           gotoxy(sx - 1, sy);
                           write('   '); 
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                           ac[i + 1, j] := 0;
                           sx := -1;
                        end;
                     end;
                  end;
            end;
         end
         else begin
            CHAPTER := CH4;
            talking1(name, 'Теперь нужно найти 200$, для того, чтобы модернизировать свой корабль', h, w);
            nextch:=CH5;
            onetalk := true;
         end;
      end;
      
      
      //CHAPTER 4...........................................................................................................................................................................................
      
      if CHAPTER = CH4 then begin
         if onetalk = true then begin
            talking(name, 'Наконецта! Теперь можно закупиться. Нужно подлететь аккуратно', h, w);
            mmagaz(h, w);
            onetalk := false;
         end;
         if (x = w - 24) and (y = h div 2 + 1) then begin
            CHAPTER := MAGAZ;
            talking1(name, 'Наконецта! Теперь можно закупиться', h, w);
            onetalk := true;
         end;
         
      end;
      
      
      //MAGAZ..........................................................................................................................................................................................
      if CHAPTER = MAGAZ then begin
         if onetalk = true then begin
            clrscr;
            interfeism(h, w);
            ar := 0;
            ship(l1, l2, l3, l4, l5, w div 5 + 3, 48);
            inv(kol_lib, kol_meb, kol_stb, kol_shi, w);
            shop(pr_lib, pr_meb, pr_stb, pr_shi, w);
            zhealth(he, indhe);
            zammo(am);
            zarmor(ar);
            zmoney(mo);
            l1 := nil;
            l2 := nil;
            l3 := nil;
            l4 := nil; 
            l5 := nil;
            gotoxy(dx, dy);
            kol_lib += tmp_lib;
            kol_meb += tmp_meb;
            kol_stb += tmp_stb;
            kol_shi += tmp_shi;
            tmp_lib:=0;
            tmp_meb:=0;
            tmp_stb:=0;
            tmp_shi:=0;
            onetalk := false;
         end;
      end;
      
      
      //CH5...............
      
      
      if CHAPTER = CH5 then begin
         if onetalk = true then begin
            clrscr;
            interfeis(h, w);
            zhealth(he, indhe);
            zammo(am);
            zarmor(ar);
            zmoney(mo);
            talking(name, 'Теперь нужно найти 500$, для того, чтобы модернизировать свой корабль', h, w);  
            dec(speedofgame, speedofgame div 2);
            onetalk := false;
            ship(l1,l2,l3,l4,l5,x,y);
         end;
         if mo < 500 then begin
            for j := 8 to h - 8 do 
            begin
               ac[w - 14, j] := random(nac);
            end;
            if count mod speedofgame = 0 then begin
               for i := 26 to w - 14 do
                  for j := 8 to h - 8 do 
                  begin
                     ac[i - 1, j] := ac[i, j];
                     
                     
                     if ac[i, j] mod 999 = 1 then begin
                        textcolor(0);
                        gotoxy(i + 1, j);
                        write(' ');
                        damagecube(i, j);
                        
                        
                        
                        if ((x + 8 = i) and (y + 1 = j)) or ((x + 8 = i) and (y + 2 = j)) or ((x + 8 = i) and (y + 3 = j)) or ((x + 4 = i) and (y = j)) or ((x + 4 = i) and (y + 4 = j)) then begin
                           dec(he, (random(1, 6) * (100 - ar)) div 100);
                           zhealth(he, indhe);
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                        end;
                        
                        if i = 26 then begin
                           textcolor(0);
                           gotoxy(i, j);
                           write(' ');
                        end;
                        
                        if (sy = j) and ((sx = i) or (sx + 1 = i) or (sx - 1 = i)) then  begin//CNARYAD
                           textcolor(0);
                           gotoxy(sx - 1, sy);
                           write('   '); 
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                           ac[i + 1, j] := 0;
                           sx := -1;
                        end;
                     end;
                     
                     
                     if ac[i, j] mod 6028 = 1 then begin
                        textcolor(0);
                        gotoxy(i + 1, j);
                        write(' ');
                        ammobox(i, j);
                        
                        
                        
                        if ((x + 8 = i) and (y + 1 = j)) or ((x + 8 = i) and (y + 2 = j)) or ((x + 8 = i) and (y + 3 = j)) or ((x + 4 = i) and (y = j)) or ((x + 4 = i) and (y + 4 = j)) then begin//KORABL
                           inc(am);
                           zammo(am);
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                        end;
                        
                        if i = 26 then begin//KONEC
                           textcolor(0);
                           gotoxy(i, j);
                           write(' ');
                        end;
                        
                        if (sy = j) and ((sx = i) or (sx + 1 = i) or (sx - 1 = i)) then  begin//CNARYAD
                           textcolor(0);
                           gotoxy(sx - 1, sy);
                           write('   '); 
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                           ac[i + 1, j] := 0;
                           sx := -1;
                        end;
                     end;
                     
                     
                     if ac[i, j] mod 5888 = 673 then begin
                        textcolor(0);
                        gotoxy(i + 1, j);
                        write(' ');
                        healthcube(i, j);
                        
                        
                        
                        if ((x + 8 = i) and (y + 1 = j)) or ((x + 8 = i) and (y + 2 = j)) or ((x + 8 = i) and (y + 3 = j)) or ((x + 4 = i) and (y = j)) or ((x + 4 = i) and (y + 4 = j)) then begin
                           inc(he);
                           zhealth(he, indhe);
                           ac[i - 1, j] := 0;
                           ac[i, j] := 0;
                        end;
                        
                        if i = 26 then begin
                           textcolor(0);
                           gotoxy(i, j);
                           write(' ');
                        end;
                        
                        if (sy = j) and ((sx = i) or (sx + 1 = i) or (sx - 1 = i)) then  begin//CNARYAD
                           textcolor(0);
                           gotoxy(sx - 1, sy);
                           write('   '); 
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                           ac[i + 1, j] := 0;
                           sx := -1;
                        end;
                     end;
                     
                     
                     if ac[i, j] mod 5000 = 1 then begin
                        textcolor(0);
                        gotoxy(i + 1, j);
                        write(' ');
                        moneybox(i, j);
                        
                        
                        
                        if ((x + 8 = i) and (y + 1 = j)) or ((x + 8 = i) and (y + 2 = j)) or ((x + 8 = i) and (y + 3 = j)) or ((x + 4 = i) and (y = j)) or ((x + 4 = i) and (y + 4 = j)) then begin
                           inc(mo, random(1, 15));
                           zmoney(mo);
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                        end;
                        
                        if i = 26 then begin
                           textcolor(0);
                           gotoxy(i, j);
                           write(' ');
                           
                        end;
                        
                        if (sy = j) and ((sx = i) or (sx + 1 = i) or (sx - 1 = i)) then  begin//CNARYAD
                           textcolor(0);
                           gotoxy(sx - 1, sy);
                           write('   '); 
                           ac[i, j] := 0;
                           ac[i - 1, j] := 0;
                           ac[i + 1, j] := 0;
                           sx := -1;
                           onetalk := true;
                        end;
                     end;
                  end;
            end;
         end
         else begin
            CHAPTER := CH4;
            talking1(name, 'Теперь нужно найти 200$, для того, чтобы модернизировать свой корабль', h, w);
            nextch:=BOSS;
            onetalk := true;
         end;
      end;
      //BOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
      if CHAPTER = BOSS then begin
         if onetalk = true then begin
            clrscr;
            interfeis(h, w);
            zhealth(he, indhe);
            zammo(am);
            zarmor(ar);
            zmoney(mo);
            zbhealth(bhealth,h,w);
            bosshealth(h,w);
            inc(speedofgame, speedofgame div 2);
            onetalk := false;
            talking('Jack the Pirate', 'Ну вот мы с тобой и встретились. Я долго тебя искал', h, w);
            delay(10000);
            talking1('Jack the Pirate', 'Ну вот мы с тобой и встретились. Я долго тебя искал', h, w);
            talking(name, 'Что тебе нужно?!', h, w);
            delay(3000);
            talking1(name, 'Что тебе нужно?!', h, w);
            talking('Jack the Pirate', 'Ничего. Просто решил немношко тебя уничтожить', h, w);
            delay(3000);
            talking1('Jack the Pirate', 'Ничего. Просто решил немношко тебя уничтожить', h, w);
            talking('Jack the Pirate', 'ГОТОВЬСЯ К ПОСЛЕДНЕМУ БОЮ!', h, w);
            ship(l1,l2,l3,l4,l5,x,y);
         end;
         
      end;
   end;
end.
{1Обновлаяется гараж после ч5
 2дыра в боссе
 3 2 магазин сначала нке показал ну ыфгмщырва}