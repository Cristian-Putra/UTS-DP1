program UTS_NO_2_DP1;

uses crt;

var
  jumlahpembeli, i, j: Integer;
  jumlahsayur: Integer;
  hargasayur, totalbelanja: Real;

begin
  clrscr;
  
  // Meminta input jumlah pembeli
  Write('Masukkan jumlah pelanggan: ');
  Readln(jumlahpembeli);
  
  i := 1; // Inisialisasi penghitung pembeli
  while i <= jumlahpembeli do
  begin
    totalbelanja := 0; // Reset total belanja untuk setiap pembeli
    
    // Meminta input jumlah jenis sayur yang dibeli
    Write('Masukkan jumlah jenis sayur yang dibeli oleh pembeli ke-', i, ': ');
    ReadLn(jumlahsayur);
    
    j := 1; // Inisialisasi penghitung jenis sayur
    while j <= jumlahsayur do
    begin
      // Meminta input harga dan jumlah sayur
      Write('Masukkan harga sayur ke-', j, ': ');
      ReadLn(hargasayur);
      Write('Masukkan jumlah sayur ke-', j, ': ');
      ReadLn(jumlahsayur);
      
      // Menghitung total belanja
      totalbelanja := totalbelanja + (hargasayur * jumlahsayur);
      
      j := j + 1; // Increment penghitung jenis sayur
    end;
    
    // Menampilkan total belanja untuk pembeli
    WriteLn('Total belanja pembeli ke-', i, ' adalah: Rp ', totalBelanja:0:2);
    
    i := i + 1; // Increment penghitung pembeli
  end;
  
  ReadLn; // Menunggu input sebelum keluar
end.
