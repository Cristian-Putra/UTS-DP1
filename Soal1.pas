program UTS_NO_1_DP1;
uses crt;
var
    jarak: real;
    biayaDasar, biayaTambahan, totalBiaya, diskon, totalSetelahDiskon: real;
    premium: string;
    diskonDua, totalSetelahDiskonDua: real;

begin
    clrscr;
    // Inisialisasi biaya dasar
    biayaDasar := 20000;

    // Input jarak perjalanan
    write('Jarak perjalanan (km): ');
    readln(jarak);

    // Menghitung biaya tambahan berdasarkan jarak
    if jarak < 5 then
        biayaTambahan := jarak * 5000
    else if (jarak >= 5) and (jarak <= 10) then
        biayaTambahan := jarak * 4000
    else
        biayaTambahan := jarak * 3000;

    // Menghitung total biaya
    totalBiaya := biayaDasar + biayaTambahan;

    // Menampilkan total biaya sebelum diskon
    writeln('Total biaya sebelum diskon: Rp ', totalBiaya:0:2);

    // Input status anggota premium
    write('Apakah Anda anggota premium? (ya/tidak): ');
    readln(premium);

    // Menghitung diskon jika total biaya lebih dari 100.000
    if totalBiaya > 100000 then
    begin
        diskon := totalBiaya * 0.10; // Diskon 10%
        totalSetelahDiskon := totalBiaya - diskon; // Total setelah diskon 10%

        // Cek apakah user adalah anggota premium
        if (premium = 'ya') then
        begin
            // Menghitung diskon tambahan untuk anggota premium
            diskonDua := totalSetelahDiskon * 0.05; // Diskon tambahan 5%
            totalSetelahDiskonDua := totalSetelahDiskon - diskonDua; // Total setelah diskon tambahan

            // Menampilkan total biaya setelah diskon
            writeln('Total biaya setelah diskon: Rp ', totalSetelahDiskonDua:0:2);
        end
        else
        begin
            // Menampilkan total biaya setelah diskon tanpa diskon tambahan
            writeln('Total biaya setelah diskon: Rp ', totalSetelahDiskon:0:2);
        end;
    end
    else
    begin
        // Jika tidak ada diskon
        writeln('Total biaya yang harus dibayar: Rp ', totalBiaya:0:2);
    end;
end.
