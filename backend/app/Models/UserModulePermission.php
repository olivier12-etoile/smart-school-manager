<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserModulePermission extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'module_name', 'is_allowed'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}