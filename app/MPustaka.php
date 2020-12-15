<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MPustaka extends Model {
	protected $table = 'buku';
	protected $fillable = ['kode_buku', 'judul', 'pengarang', 'penerbit'];
}