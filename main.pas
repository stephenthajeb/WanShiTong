Program main;

uses
    csv_parser,
    buku_handler,
    user_handler,
    peminjaman_Handler,
    pengembalian_Handler,
    kehilangan_handler,
    f01_registrasi,
    f02_Login,
    f03_findCategory,
    f04_findYear,
    f12_statistik,
    b02_denda,
    utilitas,
    tipe_data;

var
    data_buku : tabel_buku;
    data_user : tabel_user;
    data_peminjaman : tabel_peminjaman;
    data_pengembalian : tabel_pengembalian;
    data_kehilangan : tabel_kehilangan;
    who_login : user;
    have_login : Boolean;
    inp : string;

procedure load();
    var
        temp : arr_str;
        filename : string;
    begin
        write('Masukkan nama File Buku: '); readln(filename);
            temp := baca_csv(filename);
            data_buku := buku_handler.tambah(temp);
            writeln('');
        write('Masukkan nama File User: '); readln(filename);
            temp := baca_csv(filename);
            data_user := user_handler.tambah(temp);
            writeln('');
        write('Masukkan nama File Peminjaman: '); readln(filename);
             temp := baca_csv(filename);
            data_peminjaman := peminjaman_Handler.tambah(temp);
            writeln('');
        write('Masukkan nama File Pengembalian: '); readln(filename);
            temp := baca_csv(filename);
             data_pengembalian := pengembalian_handler.tambah(temp);
             writeln('');
         write('Masukkan nama File Buku Hilang: '); readln(filename);
          temp := baca_csv(filename);
            data_kehilangan := kehilangan_handler.tambah(temp);
            writeln('');
         WriteLn('File perpustakaan berhasil dimuat!')
    end;

procedure save();
    var
        temp : arr_str;
        filename : string;
    begin
        write('Masukkan nama File Buku: '); readln(filename);
            temp := buku_handler.konversi_csv(data_buku);
            simpan_csv(filename, temp);
        write('Masukkan nama File User: '); readln(filename);
            temp := user_handler.konversi_csv(data_user);
            simpan_csv(filename, temp);
        // write('Masukkan nama File Peminjaman: '); readln(filename);
        //     temp := baca_csv(filename);
        //     data_peminjaman := peminjaman_Handler.tambah(temp);
        // write('Masukkan nama File Pengembalian: '); readln(filename);
        //     temp := baca_csv(filename);
        //     data_pengembalian := pengembalian_handler.tambah(temp);
        // write('Masukkan nama File Buku Hilang: '); readln(filename);
        //     temp := baca_csv(filename);
        //     data_kehilangan := kehilangan_handler.tambah(temp);
        // WriteLn('File perpustakaan berhasil dimuat!')
    end;

procedure load_menu();
	begin
		writeln('Menu :');
		writeln('1. login : Login ke sistem ini ');
		writeln('2. cari : Mencari berdasarkan kategori buku');
		writeln('3. caritahunterbit : Mencari berdasarkan tahun terbit');
		writeln('4. pinjam_buku : Meminjam buku');
		writeln('5. kembalikan_buku : Mengembalikan Buku');
		writeln('6. lapor_hilang : Melapor mengenai buku yang hilang');
		writeln('Masukkan pilihan anda : ');
	end;
	
begin
    load();
    load_menu();
    readln(inp);
    if(inp='exit') then writeln('keluar ya gan') else
    begin
        while(inp <> 'exit') do
        begin
            case inp of 
			'register' :
				begin
                    registrasi(data_user);
				end;
            'login' :
                begin
                    who_login := login(data_user);
                    have_login := isLogin(who_login);
                end;
            'cari':
                begin
                    cari_kategori(data_buku);  
                end;
            'caritahunterbit':
                begin
                    cari_tahun(data_buku);
                end;
            'statistik':
                begin
                  getStatistik(data_user, data_buku);
                end;
            'kembalikan_buku':
                begin
                  kembalikan_buku(who_login,data_peminjaman,data_buku,data_pengembalian);
                  cetak(data_buku);
                  writeln();
                  tulis(data_peminjaman);
                  writeln();
                  keluarkan(data_pengembalian);
                  writeln();
                end;
            end; 
            readln(inp); 
        end;
        // kayanya yang koma harus asistensi jir
        if(inp='exit') then
        begin
            writeln('Keluar ya gan hehe');
            save();
        end;
    end;
end.
