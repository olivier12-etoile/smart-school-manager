<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ecole extends Model
{
    use HasFactory;

    protected $fillable = ['code_ecole', 'nom', 'logo', 'couleur_primaire', 'couleur_secondaire', 'adresse', 'telephone', 'email', 'statut_abonnement', 'abonnement_expire_le', 'est_actif'];

    public function users()
    {
        return $this->hasMany(User::class, 'ecole_id');
    }

    public function classes()
    {
        return $this->hasMany(Classe::class);
    }

    public function matieres()
    {
        return $this->hasMany(Matiere::class);
    }

    

    // etc.
}