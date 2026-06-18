<?php
// File: Tiket.php

abstract class Tiket {
    // Properti/Atribut Terenkapsulasi (protected)
    // Dipetakan langsung dari kolom database Tahap 1
    protected int $id_tiket;
    protected string $nama_film;
    protected string $jadwal_tayang; 
    protected int $jumlah_kursi;
    protected float $hargaDasarTiket; // Pakai float untuk menampung desimal/decimal

    // Constructor untuk menginisialisasi properti saat objek dibuat
    public function __construct(int $id_tiket, string $nama_film, string $jadwal_tayang, int $jumlah_kursi, float $hargaDasarTiket) {
        $this->id_tiket = $id_tiket;
        $this->nama_film = $nama_film;
        $this->jadwal_tayang = $jadwal_tayang;
        $this->jumlah_kursi = $jumlah_kursi;
        $this->hargaDasarTiket = $hargaDasarTiket;
    }

    // ================= METHOD ABSTRAK (Tanpa Isi/Body) =================
    
    // Wajib di-override oleh class anak untuk menghitung total harga bioskop
    abstract public function hitungTotalHarga(): float;

    // Wajib di-override oleh class anak untuk menampilkan fasilitas unik tiap studio
    abstract public function tampilkanInfoFasilitas(): void;
}