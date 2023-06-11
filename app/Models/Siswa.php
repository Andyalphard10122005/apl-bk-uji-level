<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function user(){
        return $this->belongsTo(User::class);
    }
  
    public function kelas(){
        return $this->belongsTo(Kelas::class);
    }
    
    public function konsulings(){
        return $this->belongsToMany(KonsulingBK::class, 'siswa_konsuling', 'siswa_id', 'konsuling_b_k_id');
    }

}

