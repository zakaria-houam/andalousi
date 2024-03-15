<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class orientale extends Model
{
    use HasFactory;

    protected $table = 'orientale';

    protected $fillable = [
        'title',
        'price',
        'description',
        'marque',
        'categorie',
        'lien',
        'type',
        'decantage',
        'decantagePrice',
        'sexe',
        'note',
        'image',
        'tete',
        'coeur',
        'fond',
        'capacite',
    ];
}
