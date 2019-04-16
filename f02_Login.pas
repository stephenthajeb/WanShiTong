unit f02_login;

interface
uses
    csv_parser,
    crt,
    user_handler;

function login(var data_user : tabel_user) : user;
function isLogin(var who_login : User) : Boolean;
function tutupinInput : string;

implementation

function tutupinInput : string;
    var
    inp : Char;
    temp : string;

    begin
    temp := '';
    repeat
      begin
      inp := readkey;
      if (inp <> #13) then
        begin
        temp := temp + inp;
        write('*');
        end;
       end;
    until (inp = #13);
    writeln;
    tutupinInput := temp;
    end;

function login(var data_user : tabel_user) : user;
    var
        username,password : string;
        have_login : Boolean;
        i : integer;
    begin
        write('Masukkan username: '); readln(username);
        write('Masukkan password: '); password := tutupinInput();
        have_login := False;
        for i:= 1 to data_user.sz do
            begin
                if (username = data_user.t[i].Username) and (password = data_user.t[i].Password) then
                    begin
                        login := data_user.t[i];
                        Writeln('Selamat datang ',login.Username,'!');
                        have_login := True;
                    end;
            end;
        if (have_login = False) then
            begin
                writeln('Username / password salah! Silakan coba lagi.');
            end;
    end;

function isLogin(var who_login : User) : Boolean;
    begin
        isLogin := False;
        if (who_login.Role = 'Admin') or (who_login.Role = 'Pengunjung') then
            begin
            isLogin := True;
            end;
    end;
end.