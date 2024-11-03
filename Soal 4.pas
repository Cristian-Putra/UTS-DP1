program UTS_NO_4_DP1;
uses crt;

var
    harga: integer;
    uangDibayar: integer;
    kembalian: integer;
    pecahan: array[1..11] of integer;
    i: integer;
    jumlahPecahan: array[1..11] of integer;

begin
    clrscr;

    // Inisialisasi harga snack dan uang yang dibayar
    harga := 37500;
    uangDibayar := 100000;

    // Menghitung kembalian
    kembalian := uangDibayar - harga;

    // Inisialisasi pecahan uang
    pecahan[1] := 100000;
    pecahan[2] := 75000;
    pecahan[3] := 50000;
    pecahan[4] := 20000;
    pecahan[5] := 10000;
    pecahan[6] := 5000;
    pecahan[7] := 2000;
    pecahan[8] := 1000;
    pecahan[9] := 500;
    pecahan[10] := 200;
    pecahan[11] := 100;

    // Inisialisasi jumlah pecahan yang digunakan
    for i := 1 to 11 do
        jumlahPecahan[i] := 0;

    // Menghitung jumlah pecahan uang yang dibutuhkan
    for i := 1 to 11 do
    begin
        while (kembalian >= pecahan[i]) do
        begin
            kembalian := kembalian - pecahan[i];
            jumlahPecahan[i] := jumlahPecahan[i] + 1;
        end;
    end;

    // Menampilkan hasil
    writeln('Kembalian yang harus diberikan: Rp ', uangDibayar - harga);
    writeln('Jumlah pecahan uang yang digunakan:');
    
    for i := 1 to 11 do
    begin
        if jumlahPecahan[i] > 0 then
            writeln('Rp ', pecahan[i]:0, ' sebanyak ', jumlahPecahan[i]:0, ' lembar/koin');
    end;

    readln;
end.
