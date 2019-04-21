unit intro;

interface
uses crt;

procedure printOwl();
procedure printWelcome();
procedure welcome();

implementation
procedure printOwl();
  begin
    writeln('                            ,_.                                                          ,_.');
    writeln('                            ''\cXX.==- __                                        __ -==,XXv/`');
    writeln('                                ~=_X7~ ,/~!g=-,_.                      ,_.-=s!~L. ~TX_=~');
    writeln('                                   ~=c. = /- T--e''T|=v._  ....   _,v=!7`z--\ -\ = ,v=~');
    writeln('                                      ~=c` ./ ,-`,/ /i/Z\/~~~~\/Z\i\ \.''-. \, ''v=~');
    writeln('                                         ~\s,/ ,/ ,/ Y]`/ @/\@ \''[Y \. \. \.g/~');
    writeln('                                            ''`Yc.v`,/Vs)-  \/  -(sV\.''c,v+''`');
    writeln('                                                 ~~]mZczTV ''` VTevZm[~~');
    writeln('                                              ,=-T|--2Y [      ] Y2--!T-=.');
    writeln('                                              ''i`_ -|-''i!      !i`-!- _''i`');
    writeln('                                                ''-s|.cf ,!]\/[!. 1v,!g-`');
    writeln('                                                    ~Y/v/vv..vv\v\Y~');
  end;

procedure printWelcome();
    begin
      writeln('                 _____      _                       _    ______      _                          _ _');
      writeln('                /  ___|    | |                     | |   |  _  \    | |                        | (_)');
      writeln('                \ `--.  ___| | __ _ _ __ ___   __ _| |_  | | | |__ _| |_ __ _ _ __   __ _    __| |_ ');
      writeln('                 `--. \/ _ | |/ _` | ''_ ` _ \ / _` | __| | | | / _` | __/ _` | ''_ \ / _` |  / _` | |');
      writeln('                /\__/ |  __| | (_| | | | | | | (_| | |_  | |/ | (_| | || (_| | | | | (_| | | (_| | |');
      writeln('                \____/ \___|_|\__,_|_| |_| |_|\__,_|\__| |___/ \__,_|\__\__,_|_| |_|\__, |  \__,_|_|');
      writeln('                                                                                     __/ |');
      writeln('______                         _        _                       _    _              |____/ _     _   _____');
      writeln('| ___ \                       | |      | |                     | |  | |             /  ___| |   (_) |_   _|');
      writeln('| |_/ ___ _ __ _ __  _   _ ___| |_ __ _| | ____ _  __ _ _ __   | |  | | __ _ _ __   \ `--.| |__  _    | | ___  _ __   __ _');
      writeln('|  __/ _ | ''__| ''_ \| | | / __| __/ _` | |/ / _` |/ _` | ''_ \  | |/\| |/ _` | ''_ \   `--. | ''_ \| |   | |/ _ \| ''_ \ / _` |');
      writeln('| | |  __| |  | |_) | |_| \__ | || (_| |   | (_| | (_| | | | | \  /\  | (_| | | | | /\__/ | | | | |   | | (_) | | | | (_| |');
      writeln('\_|  \___|_|  | .__/ \__,_|___/\__\__,_|_|\_\__,_|\__,_|_| |_|  \/  \/ \__,_|_| |_| \____/|_| |_|_|   \_/\___/|_| |_|\__, |');
      writeln('              | |                                                                                                     __/ |');
      writeln('              |_|                                                                                                    |___/ ');
      writeln();
    end;

procedure welcome();
    var
        inp: string;
    begin
      clrscr();
      printWelcome();

      writeln('Press Any Key to Proceed');
      inp := readkey;
      clrscr();
      printOwl();
    end;

end.