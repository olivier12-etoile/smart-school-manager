<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use Illuminate\Http\Request;
use App\Http\Middleware\SchoolScope; // <-- N'oublie pas d'importer ta classe!


return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        api: __DIR__.'/../routes/api.php', // <-- Vérifie que cette ligne est bien présente
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {

    $middleware->alias([
        'role' => \App\Http\Middleware\CheckRole::class,
    ]);
        // C'est ici que la magie opère pour Laravel 12

        // 1. Pour ajouter le middleware à TOUTES les requêtes API (notre cas)
        $middleware->appendToGroup('api', SchoolScope::class);

        // 2. Alternative 1 : Pour enregistrer un alias (ex: 'school.scope')
        // $middleware->alias([
        //     'school.scope' => SchoolScope::class,
        // ]);
        // Tu pourrais alors l'appliquer sur des routes spécifiques avec ->middleware('school.scope')
    })
    ->withExceptions(function (Exceptions $exceptions) {
        // ...
    })->create();
    
