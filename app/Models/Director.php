<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Director extends Model
{
    use HasFactory;

    protected $table = 'director';
    public $timestamps = false;
    
    protected $fillable = ['id', 'firstname', 'lastname'];
        
    public function film() {
        // use the 'books' property: $author->books (returns an array)
        return $this->hasMany('Progetto\Film');
    } 
}
