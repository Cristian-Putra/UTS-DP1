program UTS_NO_3_DP1_X;
uses crt;
var
    n, i, j: integer;

begin
clrscr;
    write('Masukkan angka (ukuran pola X): ');
    readln(n);

    // Memastikan n adalah angka ganjil
    if n mod 2 = 0 then
    begin
        writeln('Error: angka tidak valid, harus angka ganjil');
    end
    else
    begin
        // Mencetak pola X
        for i := 0 to n - 1 do
        begin
            for j := 0 to n - 1 do
            begin
                // Mencetak bintang pada diagonal utama dan diagonal sekunder
                if (j = i) or (j = n - i - 1) then
                    write('*')
                else
                    write(' '); // Mencetak spasi
            end;
            writeln; // Pindah ke baris berikutnya
        end;
    end;
end.
