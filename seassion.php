<?php

// Memulai session

session_start();

// Simpan data pengguna ke dalam session

$_SESSION['username'] = 'oman';

$_SESSION['hp'] = '085275774932';

// Mengakses data dari session

echo "Username: " . $_SESSION['username'] . "<br>";

echo "hp: " . $_SESSION['hp'] . "<br>";

// Menghapus data dari session

unset($_SESSION['role']);



// Menampilkan data session setelah dihapus

if (isset($_SESSION['role'])) {

    echo "Role: " . $_SESSION['role'] . "<br>";

}



// Mengakhiri session

session_destroy();

?>